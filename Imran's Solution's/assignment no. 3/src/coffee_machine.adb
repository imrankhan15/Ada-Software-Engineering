with ada.text_io; use ada.text_io;
with ada.integer_text_io; use ada.integer_text_io;


package body coffee_machine is
   -- this procedure initialize the coffee machine with initial state of zero
   procedure Initialize (X : out State) is
   begin
      X := 0;
   end Initialize;
   -- this procedure operates the coffee machine with changing states. so that
   -- when insert 30 cents or more then instant coffee, if inserted less coins
   -- then do nothing. If the button is pressed than drop all the coins inserted
   procedure X(S 		: in out State;
				Act 	: in Action;
               React 	: out Reaction) is
      package Reaction_enum is new Ada.Text_IO.Enumeration_IO(Reaction);
      str: String := "";
   begin
      if S = 0 and Act = Ten_Cent then
         S := 1;
         React := Nothing;
      elsif S = 0 and Act = Twenty_Cent then
         S := 2;
         React := Nothing;
      elsif S = 1 and Act = Ten_Cent then
         S := 2;
         React := Nothing;
      elsif S = 1 and Act = Twenty_Cent then
         S := 0;
         React := Coffee;
      elsif S = 2 and (Act = Ten_Cent or Act = Twenty_Cent) then
         S := 0;
         React := Coffee;
      elsif S = 0 and Act = Button then
         S := 0;
         React := Nothing;
      elsif (S = 1 or S =2) and Act = Button then
         S := 0;
         React := Drop_All_Coins;
      else
         S := 0;
         React := Nothing;
      end if;

      Put_Line("Status");
      Put (State'Image(S) );
      New_Line(1);
      Put_Line("Reaction:");
      Reaction_enum.Put(Item => React);


      New_Line(1);
   end X;

end coffee_machine;
