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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9492")]
   public dynamic class FireSpin extends SpellMC
   {
      public function FireSpin()
      {
         super();
         addFrameScript(0,this.frame1,20,this.frame21,41,this.frame42);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame21() : *
      {
         Skills.firespin();
      }
      
      internal function frame42() : *
      {
         k();
      }
   }
}

