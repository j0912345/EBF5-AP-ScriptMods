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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10165")]
   public dynamic class SpiritBomb extends SpellMC
   {
      public function SpiritBomb()
      {
         super();
         addFrameScript(0,this.frame1,24,this.frame25,29,this.frame30,31,this.frame32,36,this.frame37,37,this.frame38,41,this.frame42,43,this.frame44,56,this.frame57,69,this.frame70,82,this.frame83,94,this.frame95,109,this.frame110,124,this.frame125,139,this.frame140,155,this.frame156,169,this.frame170,184,this.frame185,199,this.frame200,214,this.frame215,228,this.frame229,242,this.frame243,253,this.frame254,288,this.frame289,301,this.frame302);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame25() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame30() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame32() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame37() : *
      {
         Battle.shake("small");
      }
      
      internal function frame38() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame42() : *
      {
         Battle.invisibleFoes();
         Battle.invisiblePlayers();
         Battle.shake("big");
      }
      
      internal function frame44() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame57() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame70() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame83() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame95() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame110() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame125() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame140() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame156() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame170() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame185() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame200() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame215() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame229() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame243() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.spiritbomb();
         }
      }
      
      internal function frame254() : *
      {
         Battle.visibleFoes();
         Battle.visiblePlayers();
      }
      
      internal function frame289() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame302() : *
      {
         k();
      }
   }
}

