
package body Thread
  with SPARK_Mode
is

   procedure Initialize is
    begin
       S := Ready;
   end Initialize;



   procedure Do_Action(A: Action) is
   begin
      if S = None and A = Start then
         S := Ready;
      elsif S = Ready and A = Resume then
         S := Running;
      elsif S = Running and A = Stop then
         S := Stopped;
      elsif S = Running and A = Wait then
         S := Waiting;
      elsif S = Running and A = Sleep then
         S := Sleeping;
      elsif S = Waiting and A = Notify then
         S := Ready;
      elsif S = Sleeping and A = Notify then
         S := Ready;
      else
         S := None;
  end if;
   end Do_Action;



end Thread;
