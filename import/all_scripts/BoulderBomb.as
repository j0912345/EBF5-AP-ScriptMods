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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10713")]
   public dynamic class BoulderBomb extends SpellMC
   {
      public function BoulderBomb()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8,17,this.frame18,46,this.frame47);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         if(Skills.user.isPlayer)
         {
            isSummon = true;
         }
         if(isSummon)
         {
            Battle.selectedTarget = Battle.randomFoe();
         }
         else
         {
            Battle.selectedTarget = Battle.players[1];
         }
         setXY();
         move(0,17,null);
      }
      
      internal function frame8() : *
      {
         summonOnTop();
      }
      
      internal function frame18() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            Skills.user.bigBomb();
         }
         Battle.shake("big");
      }
      
      internal function frame47() : *
      {
         k();
      }
   }
}

