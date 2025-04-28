package
{
   import fl.transitions.easing.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10572")]
   public dynamic class FallenSword extends SpellMC
   {
      public function FallenSword()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         OX = x;
         OY = y;
         setXY();
         move(60,15,Regular.easeOut);
      }
      
      internal function frame20() : *
      {
         resetXY();
         move(0,15,Regular.easeIn);
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}

