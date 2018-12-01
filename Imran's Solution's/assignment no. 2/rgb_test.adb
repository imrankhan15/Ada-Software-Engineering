with Ada.Text_IO, Ada.Integer_Text_IO,rgb;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure Rgb_Test is
   r : rgb.Intensity;
   g : rgb.Intensity;
   b : rgb.Intensity;
   rgb_sample : rgb.Color_RGB;
   rgb_sample_two : rgb.Color_RGB;
   rgb_add : rgb.Color_RGB;
   rgb_minus: rgb.Color_RGB;
   rgb_mult: rgb.Color_RGB;
   hsv_sample: rgb.Color_HSV;
   cmyk_sample: rgb.Color_CMYK;
begin

   r := 10;
   g := 10;
   b := 10;
   rgb_sample := rgb.createRGB(r,g,b);
   rgb.Put(rgb_sample);

   r := 20;
   g := 20;
   b := 20;

   rgb_sample_two := rgb.createRGB(r,g,b);
   rgb.Put(rgb_sample_two);

   rgb_add := rgb."+"(Left  => rgb_sample,
                  Right => rgb_sample_two);
   Put_Line("additon");
   rgb.Put(rgb_add);

   rgb_minus := rgb."-"(Left  => rgb_sample,
                    Right => rgb_sample_two);
   Put_Line("minus");
   rgb.Put(rgb_minus);

   rgb_mult := rgb."*"(Left  => rgb_sample,
                   Right => rgb_sample_two);
   Put_Line("mult");
   rgb.Put(rgb_mult);

   r := 10;
   g := 20;
   b := 100;
   rgb_sample := rgb.createRGB(r,g,b);

   hsv_sample := rgb.RGB_To_HSV(rgb_sample);

   Put_Line("hsv_sample");
   rgb.Put(hsv_sample);

   cmyk_sample := rgb.RGB_To_CMYK(rgb_sample);

   Put_Line("cmyk_sample");
   rgb.Put(cmyk_sample);


end Rgb_Test;
