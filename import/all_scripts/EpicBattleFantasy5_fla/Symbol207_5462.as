package EpicBattleFantasy5_fla
{
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11242")]
   public dynamic class Symbol207_5462 extends MovieClip
   {
      public var snow:SimpleButton;
      
      public function Symbol207_5462()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15);
      }
      
      internal function frame1() : *
      {
         stop();
         this.snow.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            play();
            Global.playSound("squeek");
            ++Global.bounce;
         });
      }
      
      internal function frame15() : *
      {
         if(Global.bounce >= 10)
         {
            Medals.unlock(Medals.pervert);
         }
      }
   }
}

