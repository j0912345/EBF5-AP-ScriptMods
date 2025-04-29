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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8958")]
   public dynamic class AirStrike4 extends SpellMC
   {
      public function AirStrike4()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,16,this.frame17,34,this.frame35,35,this.frame36,74,this.frame75);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame10() : *
      {
         Battle.shake("small");
      }
      
      internal function frame17() : *
      {
         nextSpell(isSummon);
      }
      
      internal function frame35() : *
      {
         Battle.shake("small");
      }
      
      internal function frame36() : *
      {
         Battle.selectedTarget = selectedTarget;
         Summons.currentSummon.effect2();
      }
      
      internal function frame75() : *
      {
         k();
      }
   }
}

