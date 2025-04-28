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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8081")]
   public dynamic class EvilGround extends SpellMC
   {
      public function EvilGround()
      {
         super();
         addFrameScript(0,this.frame1,37,this.frame38,64,this.frame65);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,1);
      }
      
      internal function frame38() : *
      {
         Skills.evilground();
      }
      
      internal function frame65() : *
      {
         k();
      }
   }
}

