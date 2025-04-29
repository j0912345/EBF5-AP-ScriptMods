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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5655")]
   public dynamic class Symbol1520_3333 extends MovieClip
   {
      public var snow:SimpleButton;
      
      public function Symbol1520_3333()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18);
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
      
      internal function frame18() : *
      {
         if(Global.bounce >= 10)
         {
            Medals.unlock(Medals.pervert);
         }
      }
   }
}

