with Ada.Text_IO, Ada.Integer_Text_IO, coffee_machine;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure coffee_machine_test_two is
   Sta: coffee_machine.State;
   Re: coffee_machine.Reaction;

begin
   Put_Line("New Test");
   coffee_machine.Initialize(X => Sta);

   coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Ten_Cent,
                    React => Re);

   coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Ten_Cent,
                    React => Re);

   coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Button,
                    React => Re);

   Put_Line("New Test");
   coffee_machine.Initialize(X => Sta);

   coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Ten_Cent,
                    React => Re);

   coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Twenty_Cent,
                    React => Re);

   Put_Line("New Test");
   coffee_machine.Initialize(X => Sta);

   coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Twenty_Cent,
                    React => Re);

   coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Twenty_Cent,
                    React => Re);
    Put_Line("New Test");
   coffee_machine.Initialize(X => Sta);

   coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Button,
                    React => Re);


   end coffee_machine_test_two;
