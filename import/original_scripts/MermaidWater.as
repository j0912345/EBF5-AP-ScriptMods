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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7253")]
   public dynamic class MermaidWater extends SpellMC
   {
      public function MermaidWater()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,19,this.frame20,58,this.frame59);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame4() : *
      {
         Skills.arcadeflood();
      }
      
      internal function frame20() : *
      {
         nextSpell();
      }
      
      internal function frame59() : *
      {
         k();
      }
   }
}

