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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10460")]
   public dynamic class Harden extends SpellMC
   {
      public function Harden()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,21,this.frame22,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame11() : *
      {
         nextSpell();
      }
      
      internal function frame22() : *
      {
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}

