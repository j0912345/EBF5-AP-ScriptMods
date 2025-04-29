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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10971")]
   public dynamic class DevWind extends SpellMC
   {
      public function DevWind()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,16,this.frame17,20,this.frame21,24,this.frame25,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame15() : *
      {
         nextSpell();
      }
      
      internal function frame17() : *
      {
         Battle.selectedTarget = selectedTarget;
         Battle.finalHit = false;
         Skills.devWind();
      }
      
      internal function frame21() : *
      {
         Battle.selectedTarget = selectedTarget;
         Battle.finalHit = false;
         Skills.devWind();
      }
      
      internal function frame25() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.devWind();
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}

