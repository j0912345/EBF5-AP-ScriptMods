package
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10874")]
   public dynamic class EffectPixels extends SpellMC
   {
      public function EffectPixels()
      {
         super();
         addFrameScript(0,this.frame1,16,this.frame17,36,this.frame37);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
         if(!Options.showFlashes)
         {
            gotoAndPlay("alt");
         }
      }
      
      internal function frame17() : *
      {
         k();
      }
      
      internal function frame37() : *
      {
         k();
      }
   }
}

