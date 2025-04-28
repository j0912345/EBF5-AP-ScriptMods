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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8400")]
   public dynamic class elementsounds_5450 extends MovieClip
   {
      public function elementsounds_5450()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         Options.setVolume(this);
         visible = false;
         stop();
         if(Boolean(parent) && Boolean(parent.isSummon))
         {
            gotoAndStop("summon");
         }
         else
         {
            gotoAndStop(Global.element);
         }
      }
   }
}

