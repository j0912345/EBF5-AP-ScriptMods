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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10679")]
   public dynamic class BubbleRing extends SpellMC
   {
      public function BubbleRing()
      {
         super();
         addFrameScript(0,this.frame1,21,this.frame22,42,this.frame43);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame22() : *
      {
         Skills.bubblering();
         makeMagic(EffectWater2,0,0);
         makeMagic(EffectStab,0,0);
      }
      
      internal function frame43() : *
      {
         k();
      }
   }
}

