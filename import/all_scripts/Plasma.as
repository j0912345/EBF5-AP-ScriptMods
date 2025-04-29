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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8601")]
   public dynamic class Plasma extends SpellMC
   {
      public function Plasma()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,14,this.frame15,29,this.frame30);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.lanceSkills[34]);
      }
      
      internal function frame3() : *
      {
         Battle.finalHit = false;
         Skills.plasma();
      }
      
      internal function frame15() : *
      {
         Skills.plasma();
      }
      
      internal function frame30() : *
      {
         k();
      }
   }
}

