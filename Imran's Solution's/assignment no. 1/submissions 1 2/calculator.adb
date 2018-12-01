with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;


procedure Calculator is
   Answer : Character;
   First, Second : Integer;
begin
 loop
        Put ("Enter two integers: ");
        Get (First);
        Get (Second);
        Put ("The sum is");
        Put (First + Second);
        New_Line;

        Put ("The difference is");
        Put (First - Second);
        New_Line;

        Put ("The product is");
        Put (First * Second);
        New_Line;

        Put ("The quotient is");
        Put (First / Second);
        New_Line;


        Put ("Do you want to evaluate another expression? ");
        Get (Answer);
        if Answer = 'y' or Answer = 'Y' then -- 1
            null;
        elsif Answer = 'n' or Answer = 'N' then
            exit;
        end if;
 end loop;
end Calculator;
