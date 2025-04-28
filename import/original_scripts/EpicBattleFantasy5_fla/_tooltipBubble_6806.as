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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4183")]
   public dynamic class _tooltipBubble_6806 extends MovieClip
   {
      public var tip:MovieClip;
      
      public var bubbleText:String;
      
      public function _tooltipBubble_6806()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,14,this.frame15);
      }
      
      internal function frame1() : *
      {
         stop();
         visible = false;
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      internal function frame2() : *
      {
         visible = true;
      }
      
      internal function frame15() : *
      {
         stop();
      }
   }
}

