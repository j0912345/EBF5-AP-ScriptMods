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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2953")]
   public dynamic class bubbleevents_6863 extends MovieClip
   {
      public function bubbleevents_6863()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,19,this.frame20);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame18() : *
      {
         SFX.playSound("bubble2");
      }
      
      internal function frame20() : *
      {
         parent.stop();
         parent.parent.removeChild(parent);
      }
   }
}

