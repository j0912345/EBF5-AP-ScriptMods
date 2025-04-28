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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10833")]
   public dynamic class WhiteFlash extends SpellMC
   {
      public function WhiteFlash()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
         if(!Options.showFlashes)
         {
            visible = false;
         }
      }
      
      internal function frame4() : *
      {
         k();
      }
   }
}

