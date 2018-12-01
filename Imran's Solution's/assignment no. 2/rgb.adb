with ada.text_io; use ada.text_io;
with ada.integer_text_io; use ada.integer_text_io;

package body rgb is

   function createRGB(Red: Intensity; Green: Intensity; Blue: Intensity) return Color_RGB is
      Final: Color_RGB;

   begin
      Final.Red := Red;
      Final.Green := Green;
      Final.Blue := Blue;

      return Final;

  end createRGB;

   function "+"(Left: Color_RGB ; Right: Color_RGB) return Color_RGB is
        L : Color_RGB := Left;
        R : Color_RGB := Right;
      Final : Color_RGB;
      Red: Integer;
      Green: Integer;
      Blue: Integer;
    begin
      Red := L.Red + R.Red;

      if Red > 255 then
         Final.Red := 255;
      elsif Red < 0 then
         Final.Red := 0;

      else Final.Red := Red;
      end if;

      Green := L.Green + R.Green;

      if Green > 255 then
         Final.Green := 255;
      elsif Green < 0 then
         Final.Green := 0;

      else Final.Green := Green;
      end if;


      Blue := L.Blue + R.Blue;

      if Blue > 255 then
         Final.Blue := 255;
      elsif Blue < 0 then
         Final.Blue := 0;

      else Final.Blue := Blue;
      end if;


        return Final;
    end "+";

    function "-"(Left: Color_RGB ; Right: Color_RGB) return Color_RGB is
        L : Color_RGB := Left;
        R : Color_RGB := Right;
      Final : Color_RGB;
      Red: Integer;
      Green: Integer;
      Blue: Integer;
    begin
     Red := L.Red - R.Red;

      if Red > 255 then
         Final.Red := 255;
      elsif Red < 0 then
         Final.Red := 0;

      else Final.Red := Red;
      end if;

      Green := L.Green - R.Green;

      if Green > 255 then
         Final.Green := 255;
      elsif Green < 0 then
         Final.Green := 0;

      else Final.Green := Green;
      end if;


      Blue := L.Blue - R.Blue;

      if Blue > 255 then
         Final.Blue := 255;
      elsif Blue < 0 then
         Final.Blue := 0;

      else Final.Blue := Blue;
      end if;


        return Final;
    end "-";

    function "*"(Left: Color_RGB ; Right: Color_RGB) return Color_RGB is
        L : Color_RGB := Left;
        R : Color_RGB := Right;
      Final : Color_RGB;
      Red: Integer;
      Green: Integer;
      Blue: Integer;
    begin
      Red := L.Red * R.Red;

      if Red > 255 then
         Final.Red := 255;
      elsif Red < 0 then
         Final.Red := 0;

      else Final.Red := Red;
      end if;

      Green := L.Green * R.Green;

      if Green > 255 then
         Final.Green := 255;
      elsif Green < 0 then
         Final.Green := 0;

      else Final.Green := Green;
      end if;


      Blue := L.Blue * R.Blue;

      if Blue > 255 then
         Final.Blue := 255;
      elsif Blue < 0 then
         Final.Blue := 0;

      else Final.Blue := Blue;
      end if;


        return Final;
   end "*";

   function RGB_To_HSV(Item: in Color_RGB) return Color_HSV is
      Final: Color_HSV;
      R1: Float;
      G1: Float;
      B1: Float;
      Max: Float;
      Min: Float;
      del: Float;
      Hue: Degree;
      Saturation: Percent;
      Value: Percent;
      H: Float;
      S: Float;
      V: Float;
      T1: Integer;
      input_array : array(1..3) of Float;
   begin
      R1 := Float(Item.Red) / 255.0;
      G1 := Float(Item.Green) / 255.0;
      B1 := Float(Item.Blue) / 255.0;

      input_array(1) := R1;
      input_array(2) := G1;
      input_array(3) := B1;

      Max := 0.0;

      Min := R1;

       for I in input_array'First + 1 .. input_array'Last loop
      if input_array (I) > Max then
         Max := input_array (I);
      end if;
      end loop;

       for I in input_array'First + 1 .. input_array'Last loop
      if input_array (I) < Min then
         Min := input_array (I);
      end if;
      end loop;



      del := Max - Min;

      if del = 0.0 then
         H := 0.0;
      elsif Max = R1 then
            H := (abs(G1 - B1))/del;
            T1 := Integer(H) mod 6;
            H := Float(T1) * 60.0;
      elsif Max = G1 then
            H := (abs(G1 - B1))/del;
            T1 := Integer(H) + 2;
            H := Float(T1) * 60.0;


      else
         H := (abs(R1 - G1))/del;
            T1 := Integer(H) + 4;
            H := Float(T1) * 60.0;

      end if;

      if H > 360.0 then
         Hue := 360.0;
      elsif H < 0.0 then
         Hue := 0.0;
      else Hue := H;
      end if;
      if max = 0.0 then
         S := 0.0;
      else
         S := del/max;
            end if;
      if S > 100.0 then
         Saturation := 100.0;
         elsif S < 0.0 then
           Saturation := 0.0;
         else Saturation := S;

      end if;

            V := max;
           if V > 100.0 then
               Value := 100.0;
            elsif V < 0.0 then
               Value := 0.0;
            else Value := V;
            end if;

         Final.Hue := Hue;

         Final.Saturation := Saturation * 100.0;

         Final.Value := Value * 100.0;

         return Final;
      end RGB_To_HSV;




     function RGB_To_CMYK(Item: in Color_RGB) return Color_CMYK is
         Final: Color_CMYK;
         R1: Float;
         G1: Float;
         B1: Float;
         Max: Float;
         K: Float;
         C: Float;
         M: Float;
      Y: Float;
      input_array : array(1..3) of Float;
      begin
         R1 := Float(Item.Red) / 255.0;
         G1 := Float(Item.Green) / 255.0;
         B1 := Float(Item.Blue) / 255.0;
      input_array(1) := R1;
      input_array(2) := G1;
      input_array(3) := B1;

      Max := 0.0;

      for I in input_array'First + 1 .. input_array'Last loop
      if input_array (I) > Max then
         Max := input_array (I);
      end if;
      end loop;


            K := 1.0 - Max;
            C := (1.0 - R1 - K)/(1.0 - K);
            M := (1.0 - G1 - K)/(1.0 - K);
            Y := (1.0 - B1 - K )/(1.0 - K);

      K := K * 100.0;
      C := C * 100.0;
      M := M * 100.0;
      Y := Y * 100.0;

      if K > 100.0 then
         K := 100.0;
      elsif K < 0.0 then
         K := 0.0;
      end if;

      if C > 100.0 then
         C := 100.0;
      elsif C < 0.0 then
         C := 0.0;
      end if;

      if M > 100.0 then
         M := 100.0;
      elsif M < 0.0 then
         M := 0.0;
      end if;

      if Y > 100.0 then
         Y := 100.0;
      elsif Y < 0.0 then
         Y := 0.0;
      end if;




            Final.K := Integer(K);
            Final.C := Integer(C);
            Final.M := Integer(M);

            Final.Y := Integer(Y);

            return Final;

         end RGB_To_CMYK;

      procedure Put(Item: in Color_RGB) is

   begin

      Put_Line("Red");
      Put (Integer'Image(Item.Red) );
      New_Line(1);
      Put_Line("Green");
      Put (Integer'Image(Item.Green));
      New_Line(1);
      Put_Line("Blue");
      Put (Integer'Image(Item.Blue));
      New_Line(1);
      end Put;

       procedure Put(Item: in Color_HSV) is
         begin
         Put_Line("Hue");
      Put (Integer'Image(Integer(Item.Hue)) );
      New_Line(1);
      Put_Line("Saturation");
      Put (Integer'Image(Integer(Item.Saturation)));
      New_Line(1);
      Put_Line("Value");
      Put (Integer'Image(Integer(Item.Value)));
      New_Line(1);

   end Put;

        procedure Put(Item: in Color_CMYK) is
   begin
      Put_Line("C");
      Put (Integer'Image(Item.C) );
      New_Line(1);
      Put_Line("M");
      Put (Integer'Image(Item.M));
      New_Line(1);
      Put_Line("Y");
      Put (Integer'Image(Item.Y));
      New_Line(1);
       Put_Line("K");
      Put (Integer'Image(Item.K));
      New_Line(1);

      end Put;


end rgb;
