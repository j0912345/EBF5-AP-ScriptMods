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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10592")]
   public dynamic class Eruption extends SpellMC
   {
      public function Eruption()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,4,this.frame5,7,this.frame8,10,this.frame11,18,this.frame19,27,this.frame28,57,this.frame58);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame3() : *
      {
         Battle.shake("small");
      }
      
      internal function frame5() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.eruption();
         }
      }
      
      internal function frame8() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.eruption();
         }
      }
      
      internal function frame11() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.eruption();
         }
      }
      
      internal function frame19() : *
      {
         nextSpell(isSummon);
      }
      
      internal function frame28() : *
      {
      }
      
      internal function frame58() : *
      {
         k();
      }
   }
}

