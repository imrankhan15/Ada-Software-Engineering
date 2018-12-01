package rgb is

   type Color_RGB is private;
   type Color_HSV is private;
   type Color_CMYK is private;

   subtype Intensity is Integer range 0..255;
   subtype Degree is Float range 0.0..360.0;
   subtype Percent is Float range 0.0..100.0;
   subtype C_Value is Integer range 0..100;

   function "+"(Left: Color_RGB ; Right: Color_RGB) return Color_RGB;
   function "-"(Left: Color_RGB ; Right: Color_RGB) return Color_RGB;
   function "*"(Left: Color_RGB ; Right: Color_RGB) return Color_RGB;

   function createRGB(Red: Intensity; Green: Intensity; Blue: Intensity) return Color_RGB;



   function RGB_To_HSV(Item: in Color_RGB) return Color_HSV;
   function RGB_To_CMYK(Item: in Color_RGB) return Color_CMYK;


   procedure Put(Item: in Color_RGB);
   procedure Put(Item: in Color_HSV);
   procedure Put(Item: in Color_CMYK);

private
   type Color_RGB is record
      Red, Green, Blue: Intensity;
   end record;

   type Color_HSV is record
      Hue: Degree;
      Saturation: Percent;
      Value: Percent;

   end record;

   type Color_CMYK is record
      K: C_Value;
      C: C_Value;
      M: C_Value;
      Y: C_Value;

   end record;
end rgb;
