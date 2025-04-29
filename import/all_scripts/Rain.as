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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7991")]
   public dynamic class Rain extends SpellMC
   {
      public function Rain()
      {
         super();
         addFrameScript(0,this.frame1,43,this.frame44,61,this.frame62,71,this.frame72);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,3);
      }
      
      internal function frame44() : *
      {
         Skills.rain();
      }
      
      internal function frame62() : *
      {
         Text.speech(Text.tips[8]);
      }
      
      internal function frame72() : *
      {
         k();
      }
   }
}

