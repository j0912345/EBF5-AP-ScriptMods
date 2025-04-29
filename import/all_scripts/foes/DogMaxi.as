package foes
{
   public class DogMaxi extends Foe
   {
      public static var iconInfo:Array = [];
      
      public function DogMaxi(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Dog";
         graphicScale = 70;
         skin = 6;
         icon = 1;
         init(param1,param2,param3,param4);
      }
      
      public function takeTurn() : *
      {
      }
   }
}

