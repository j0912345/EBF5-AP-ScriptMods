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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10836")]
   public dynamic class RedFlash extends SpellMC
   {
      public function RedFlash()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8,16,this.frame17);
      }
      
      internal function frame1() : *
      {
         gotoBackLayer();
         if(!Options.showFlashes)
         {
            visible = false;
         }
         parent.stage.frameRate = 15;
      }
      
      internal function frame8() : *
      {
         parent.stage.frameRate = 30;
      }
      
      internal function frame17() : *
      {
         k();
      }
   }
}

