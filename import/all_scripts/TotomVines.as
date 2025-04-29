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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10096")]
   public dynamic class TotomVines extends SpellMC
   {
      public function TotomVines()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,19,this.frame20,21,this.frame22,39,this.frame40);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame4() : *
      {
         Battle.finalHit = false;
         Skills.arcadenettle();
      }
      
      internal function frame20() : *
      {
         Skills.arcadenettle();
      }
      
      internal function frame22() : *
      {
         nextSpell();
      }
      
      internal function frame40() : *
      {
         k();
      }
   }
}

