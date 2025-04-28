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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10124")]
   public dynamic class TeethTentacles2 extends SpellMC
   {
      public function TeethTentacles2()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,17,this.frame18,20,this.frame21,44,this.frame45);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame11() : *
      {
         Battle.finalHit = false;
         Skills.user.tentacles(2);
      }
      
      internal function frame18() : *
      {
         Skills.user.tentacles(2);
      }
      
      internal function frame21() : *
      {
         nextSpell();
      }
      
      internal function frame45() : *
      {
         k();
      }
   }
}

