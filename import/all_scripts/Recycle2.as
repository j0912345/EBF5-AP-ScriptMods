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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10953")]
   public dynamic class Recycle2 extends SpellMC
   {
      public function Recycle2()
      {
         super();
         addFrameScript(0,this.frame1,16,this.frame17,49,this.frame50);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame17() : *
      {
         Skills.recycle();
      }
      
      internal function frame50() : *
      {
         k();
      }
   }
}

