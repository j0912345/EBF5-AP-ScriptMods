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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5665")]
   public dynamic class Symbol1521_3339 extends MovieClip
   {
      public var snow:SimpleButton;
      
      public function Symbol1521_3339()
      {
         super();
         addFrameScript(0,this.frame1,12,this.frame13);
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
      
      internal function frame13() : *
      {
         if(Global.bounce >= 10)
         {
            Medals.unlock(Medals.pervert);
         }
      }
   }
}

