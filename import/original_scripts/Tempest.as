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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9323")]
   public dynamic class Tempest extends SpellMC
   {
      public function Tempest()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,15,this.frame16,17,this.frame18,40,this.frame41);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame15() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.tempest();
         }
      }
      
      internal function frame16() : *
      {
         Battle.shake("small");
      }
      
      internal function frame18() : *
      {
         nextSpell(isSummon,Spells.tempest);
      }
      
      internal function frame41() : *
      {
         k();
      }
   }
}

