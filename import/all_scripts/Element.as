package
{
   import text.*;
   
   public class Element
   {
      public static const NONE:String = "none";
      
      public static const FIRE:String = "fire";
      
      public static const THUNDER:String = "thunder";
      
      public static const ICE:String = "ice";
      
      public static const EARTH:String = "earth";
      
      public static const WIND:String = "wind";
      
      public static const WATER:String = "water";
      
      public static const BIO:String = "bio";
      
      public static const BOMB:String = "bomb";
      
      public static const HOLY:String = "holy";
      
      public static const DARK:String = "dark";
      
      public static const WEAPON:String = "weapon";
      
      public static const HEALING:String = "healing";
      
      public static const RANDOM:String = "random";
      
      public static const ELEMENTS:Array = [FIRE,THUNDER,ICE,EARTH,WIND,WATER,BIO,BOMB,HOLY,DARK];
      
      public function Element()
      {
         super();
      }
      
      public static function getString(param1:String) : String
      {
         return SetStrings.getElementString(param1);
      }
      
      public static function getElementHolder() : Object
      {
         var _loc2_:String = null;
         var _loc1_:* = new Object();
         for each(_loc2_ in ELEMENTS)
         {
            _loc1_[_loc2_] = 100;
         }
         return _loc1_;
      }
   }
}

