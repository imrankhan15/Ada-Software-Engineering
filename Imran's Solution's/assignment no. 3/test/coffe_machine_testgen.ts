Context
    with coffee_machine; use coffee_machine;
    with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
    with Ada.Text_IO; use Ada.Text_IO;

***** Test the coffee machine for three times 10 cents
Define Sta: coffee_machine.State;
       Re: coffee_machine.Reaction;
       Expected_Reaction: coffee_machine.Reaction := Coffee;
       Actual_Reaction: coffee_machine.Reaction;
Prepare       coffee_machine.Initialize(X => Sta);
              coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Ten_Cent,
                    React => Re);
              coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Ten_Cent,
                    React => Re);
              coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Ten_Cent,
                    React => Re);

Test   Actual_Reaction := Re;
Pass   Expected_Reaction = Actual_Reaction

***** Test the coffee machine for one times 10 cents and then pressing button
Define Sta: coffee_machine.State;
       Re: coffee_machine.Reaction;
       Expected_Reaction: coffee_machine.Reaction := Drop_All_Coins;
       Actual_Reaction: coffee_machine.Reaction;
Prepare       coffee_machine.Initialize(X => Sta);
              coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Ten_Cent,
                    React => Re);
              coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Button,
                    React => Re);


Test   Actual_Reaction := Re;
Pass   Expected_Reaction = Actual_Reaction

***** Test the coffee machine for two times 20 cents
Define Sta: coffee_machine.State;
       Re: coffee_machine.Reaction;
       Expected_Reaction: coffee_machine.Reaction := Coffee;
       Actual_Reaction: coffee_machine.Reaction;
Prepare       coffee_machine.Initialize(X => Sta);
              coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Twenty_Cent,
                    React => Re);
              coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Twenty_Cent,
                    React => Re);


Test   Actual_Reaction := Re;
Pass   Expected_Reaction = Actual_Reaction

***** Test the coffee machine for two times 10 cents
Define Sta: coffee_machine.State;
       Re: coffee_machine.Reaction;
       Expected_Reaction: coffee_machine.Reaction := Nothing;
       Actual_Reaction: coffee_machine.Reaction;
Prepare       coffee_machine.Initialize(X => Sta);
              coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Ten_Cent,
                    React => Re);
              coffee_machine.X(S     => Sta,
                    Act   => coffee_machine.Ten_Cent,
                    React => Re);


Test   Actual_Reaction := Re;
Pass   Expected_Reaction = Actual_Reaction
