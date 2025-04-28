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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10832")]
   public dynamic class WhiteFlash2 extends SpellMC
   {
      public function WhiteFlash2()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8,15,this.frame16);
      }
      
      internal function frame1() : *
      {
         if(!Options.showFlashes)
         {
            visible = false;
         }
      }
      
      internal function frame8() : *
      {
      }
      
      internal function frame16() : *
      {
         k();
      }
   }
}

