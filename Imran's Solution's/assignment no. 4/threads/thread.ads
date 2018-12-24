
package Thread
  with SPARK_Mode
is
    type State  is (None, Ready, Running, Stopped, Sleeping, Waiting);
    type Action is (Notify, Resume, Sleep, Start, Stop, Wait);

    S: State := None;

    procedure Initialize with
   -- Sets S to Ready.
   Global => (Output => S),
   Depends => (S => null),
   Post => (S = Ready);

    procedure Do_Action(A: Action) with
    -- Updates the state S according to the given input state S, and the
    -- given action A. Sets S to None if the transition is not defined.
     Global => (In_Out => S),
     Depends => (S => (S,A)),
     Post => (if S'Old = None and A = Start then
                S = Ready

              else (if S'Old = Ready and A = Resume then
                    S = Running
                else (if S'Old = Running and A = Stop then
                     S = Stopped
                  else (if S'Old = Running and A = Wait then
                       S = Waiting
                    else (if S'Old = Running and A = Sleep then
                         S = Sleeping
                      else (if S'Old = Waiting and A = Notify then
                           S = Ready
                        else (if S'Old = Sleeping and A = Notify then
                             S = Ready
                            else (S = None))))))));


end Thread;
