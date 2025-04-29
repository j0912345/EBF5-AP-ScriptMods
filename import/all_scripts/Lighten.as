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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10399")]
   public dynamic class Lighten extends SpellMC
   {
      public function Lighten()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,22,this.frame23,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame10() : *
      {
         nextSpell(isSummon,Spells.lighten);
      }
      
      internal function frame23() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            if(Boolean(Battle.selectedTarget) && Battle.selectedTarget.isPlayer)
            {
               Summons.MirrorAngel.effect2();
            }
            else
            {
               Summons.GloopCrystal.effect2();
            }
         }
         else
         {
            Skills.lighten();
         }
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}

