package
{
   import flash.events.*;
   
   public class SFX
   {
      public static var soundV:Vector.<String>;
      
      public function SFX()
      {
         super();
      }
      
      public static function init() : *
      {
         Game.root.addEventListener(Event.ENTER_FRAME,enterFrame);
      }
      
      public static function enterFrame(param1:Event) : *
      {
         soundV = new Vector.<String>();
      }
      
      public static function playSound(param1:String) : *
      {
         if(soundV)
         {
            if(soundV.indexOf(param1) != -1)
            {
               return;
            }
            soundV.push(param1);
         }
         else
         {
            soundV = new Vector.<String>();
         }
         Game.root.sounds.gotoAndStop(param1);
         Game.root.sounds.gotoAndStop(1);
      }
   }
}

