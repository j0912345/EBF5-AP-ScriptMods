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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9613")]
   public dynamic class Tsunami extends SpellMC
   {
      public function Tsunami()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,15,this.frame16,23,this.frame24,33,this.frame34,39,this.frame40,43,this.frame44,54,this.frame55,60,this.frame61,69,this.frame70,70,this.frame71,78,this.frame79,106,this.frame107,108,this.frame109,113,this.frame114,148,this.frame149,160,this.frame161,185,this.frame186,217,this.frame218,218,this.frame219,254,this.frame255,264,this.frame265,287,this.frame288,314,this.frame315,337,this.frame338,348,this.frame349,349,this.frame350);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame10() : *
      {
      }
      
      internal function frame16() : *
      {
         if(Skills.user.isPlayer)
         {
            jumpBack();
         }
         Battle.shake("tiny");
      }
      
      internal function frame24() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame34() : *
      {
         Battle.shake("small");
      }
      
      internal function frame40() : *
      {
         if(Skills.user.isPlayer)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame44() : *
      {
         Battle.shake("small");
      }
      
      internal function frame55() : *
      {
         Battle.shake("big");
      }
      
      internal function frame61() : *
      {
         Battle.shake("big");
      }
      
      internal function frame70() : *
      {
         Battle.shake("small");
      }
      
      internal function frame71() : *
      {
         Battle.finalHit = false;
         Skills.tsunami(1);
      }
      
      internal function frame79() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame107() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame109() : *
      {
         Battle.finalHit = false;
         Skills.tsunami(1);
      }
      
      internal function frame114() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame149() : *
      {
         Battle.finalHit = false;
         Skills.tsunami(1);
      }
      
      internal function frame161() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[11]);
         }
      }
      
      internal function frame186() : *
      {
         Battle.finalHit = false;
         Skills.tsunami(1);
      }
      
      internal function frame218() : *
      {
         Battle.finalHit = false;
         Skills.tsunami(1);
      }
      
      internal function frame219() : *
      {
         Battle.invisibleFoes();
         if(!Skills.user.isPlayer)
         {
            Battle.invisiblePlayers();
         }
      }
      
      internal function frame255() : *
      {
         Skills.tsunami(1);
      }
      
      internal function frame265() : *
      {
         Skills.tsunami(2);
      }
      
      internal function frame288() : *
      {
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame315() : *
      {
         Battle.visibleFoes();
         if(!Skills.user.isPlayer)
         {
            Battle.visiblePlayers();
         }
      }
      
      internal function frame338() : *
      {
         if(Skills.user.isPlayer)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame349() : *
      {
      }
      
      internal function frame350() : *
      {
         k();
      }
   }
}

