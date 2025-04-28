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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10635")]
   public dynamic class Darken extends SpellMC
   {
      public function Darken()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,21,this.frame22,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame10() : *
      {
         nextSpell(isSummon,Spells.darken);
      }
      
      internal function frame22() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            if(Boolean(Battle.selectedTarget) && Battle.selectedTarget.isPlayer)
            {
               Summons.MirrorDemon.effect2();
            }
            else
            {
               Summons.GloopStone.effect2();
            }
         }
         else
         {
            Skills.darken();
         }
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}

