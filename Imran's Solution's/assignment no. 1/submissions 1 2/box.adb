with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure Box is
 First, Second, Third : Integer;
begin
    Put ("Enter lenght, width and height of a box: ");
        Get (First);
        Get (Second);
        Get (Third);

        Put ("The volume is ");
        Put (First * Second * Third);
        New_Line;

        Put ("The surface area is ");
        Put (2*((First * Second) + (Second * Third) + (First * Third)));
        New_Line;


end Box;
