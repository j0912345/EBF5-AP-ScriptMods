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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10672")]
   public dynamic class CandyCane extends SpellMC
   {
      public function CandyCane()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,9,this.frame10,12,this.frame13,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame5() : *
      {
         Battle.finalHit = false;
         Skills.candycanes();
      }
      
      internal function frame10() : *
      {
         Skills.candycanes();
      }
      
      internal function frame13() : *
      {
         nextSpell();
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}

