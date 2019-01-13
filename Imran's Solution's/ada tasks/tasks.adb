with Hofstadter , Ada.Text_IO;

procedure Tasks is

   task type Worker is
      entry Start(Name: Character;
                  Start, Offset, Count: Positive);
      end Worker;


   task body Worker is
      My_Name: Character := '?';
      Val, Diff, Cnt: Positive;
   begin
      accept Start (Name : in Character; Start : in Positive; Offset : in Positive; Count : in Positive)
      do
         My_Name := Name;
         Val:= Start; Diff := Offset; Cnt := Count;
      end Start;

      for I in 1 .. Cnt loop
         Ada.Text_IO.Put_Line (My_Name & " " & Val'Img & Hofstadter.Q(Val)'Img);
         Val := Val + Diff;
      end loop;
   end Worker;

   E, O: Worker;

begin
   O.Start('O', 1, 2, 50);
   E.Start('E', 2, 2, 50);

end Tasks;
