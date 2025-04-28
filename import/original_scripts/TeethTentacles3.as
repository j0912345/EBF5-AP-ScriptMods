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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10123")]
   public dynamic class TeethTentacles3 extends SpellMC
   {
      public function TeethTentacles3()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,15,this.frame16,20,this.frame21,22,this.frame23,44,this.frame45);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame11() : *
      {
         Battle.finalHit = false;
         Skills.user.tentacles(3);
      }
      
      internal function frame16() : *
      {
         Battle.finalHit = false;
         Skills.user.tentacles(3);
      }
      
      internal function frame21() : *
      {
         Skills.user.tentacles(3);
      }
      
      internal function frame23() : *
      {
         nextSpell();
      }
      
      internal function frame45() : *
      {
         k();
      }
   }
}

