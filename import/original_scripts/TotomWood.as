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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7205")]
   public dynamic class TotomWood extends SpellMC
   {
      public function TotomWood()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,13,this.frame14,17,this.frame18,19,this.frame20,41,this.frame42);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame10() : *
      {
         Battle.finalHit = false;
         Skills.arcadelogs();
      }
      
      internal function frame14() : *
      {
         Battle.finalHit = false;
         Skills.arcadelogs();
      }
      
      internal function frame18() : *
      {
         Skills.arcadelogs();
      }
      
      internal function frame20() : *
      {
         nextSpell();
      }
      
      internal function frame42() : *
      {
         k();
      }
   }
}

