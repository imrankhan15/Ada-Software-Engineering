with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure mathOperation is
        First, Second : Integer;
    begin
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


    end mathOperation;
