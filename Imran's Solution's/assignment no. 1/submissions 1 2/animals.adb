with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure Animals is
        First, Second : Character;
begin
   Put ("Select an animal from the list below: ");
   New_Line;
   Put ("Cat");
    New_Line;
   Put ("Dog");
    New_Line;
   Put ("Giraffe");
    New_Line;
   Put ("Elephant");
   New_Line;
   Put_Line ("Is it a household pet: press y for yes and n for no");
   Get (First);

   if First = 'y'  then
      Put_Line ("Does it purr? : press y for yes and n for no");
      Get (Second);

   else
      First := 'n';
      Put_Line ("Does it have long neck? : press y for yes and n for no");
      Get (Second);

      end if;

   if First = 'y' and Second = 'y' then
            Put_Line ("It is a cat");
   elsif First = 'y' and Second = 'n' then
            Put_Line ("It is a dog");
   elsif First = 'n' and Second = 'y' then
            Put_Line ("It is a giraffe");
   elsif First = 'n' and Second = 'n' then
      Put_Line ("It is a Elephant");

     end if;
end Animals;
