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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10675")]
   public dynamic class Cacti extends SpellMC
   {
      public function Cacti()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,8,this.frame9,11,this.frame12,47,this.frame48);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame5() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.SlimeBigSand.effect2();
         }
         else
         {
            Skills.cacti();
         }
      }
      
      internal function frame9() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.SlimeBigSand.effect2();
         }
         else
         {
            Skills.cacti();
         }
      }
      
      internal function frame12() : *
      {
         if(isSummon)
         {
            Summons.SlimeBigSand.effect2();
         }
         else
         {
            Skills.cacti();
         }
      }
      
      internal function frame48() : *
      {
         k();
      }
   }
}

