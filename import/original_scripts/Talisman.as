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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10133")]
   public dynamic class Talisman extends SpellMC
   {
      public function Talisman()
      {
         super();
         addFrameScript(0,this.frame1,15,this.frame16,27,this.frame28,43,this.frame44);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame16() : *
      {
         nextSpell(isSummon);
      }
      
      internal function frame28() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.talisman();
         }
      }
      
      internal function frame44() : *
      {
         k();
      }
   }
}

