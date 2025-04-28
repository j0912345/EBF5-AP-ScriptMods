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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10088")]
   public dynamic class Wafer extends SpellMC
   {
      public function Wafer()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,10,this.frame11,11,this.frame12,41,this.frame42);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame5() : *
      {
         Battle.finalHit = false;
         Skills.wafer();
      }
      
      internal function frame11() : *
      {
         Skills.wafer();
      }
      
      internal function frame12() : *
      {
         nextSpell();
      }
      
      internal function frame42() : *
      {
         k();
      }
   }
}

