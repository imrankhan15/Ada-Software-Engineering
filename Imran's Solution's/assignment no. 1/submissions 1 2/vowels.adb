with Ada.Text_IO, Ada.Integer_Text_IO;
    use  Ada.Text_IO, Ada.Integer_Text_IO;
    procedure Vowels is
    Result_A   : Integer;
    Result_E   : Integer;
    Result_I   : Integer;
    Result_O   : Integer;
    Result_U   : Integer;
    Ch : Character;

    begin
        Put ("Enter the characters: ");
        Result_A := 0;
        Result_E := 0;
        Result_I := 0;
        Result_O := 0;
        Result_U := 0;
        loop

            Get (Ch);

      if Ch = '.' then
                Put("Number of Vowel A: ");
         Put (Result_A, Width => 1);
         New_Line;
         Put("Number of Vowel E: ");
         Put (Result_E, Width => 1);
          New_Line;
         Put("Number of Vowel I: ");
         Put (Result_I, Width => 1);
          New_Line;
         Put("Number of Vowel O: ");
         Put (Result_O, Width => 1);
          New_Line;
         Put("Number of Vowel U: ");
         Put (Result_U, Width => 1);
          New_Line;
         Put("Number of Vowels: ");
         Put (Result_A + Result_E + Result_I + Result_O + Result_U, Width => 1);
          New_Line;
                exit;
            else

                case Ch is
                    when 'a' =>
               Result_A := Result_A + 1;

                when 'A' =>
               Result_A := Result_A + 1;

                when 'e' =>
                Result_E := Result_E + 1;

                when 'E' =>
                Result_E := Result_E + 1;

                when 'i' =>
                Result_I := Result_I + 1;

                when 'I' =>
                Result_I := Result_I + 1;

                when 'o' =>
                Result_O := Result_O + 1;

                when 'O' =>
                Result_O := Result_O + 1;

                when 'u' =>
                Result_U := Result_U + 1;

                when 'U' =>
                Result_U := Result_U + 1;


                when others =>
                null;
                end case;
            end if;
        end loop;
        New_Line;
    end Vowels;




