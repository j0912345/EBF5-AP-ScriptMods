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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9653")]
   public dynamic class Destroyer extends SpellMC
   {
      public function Destroyer()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,12,this.frame13,24,this.frame25,29,this.frame30,31,this.frame32,35,this.frame36,43,this.frame44,50,this.frame51,55,this.frame56,65,this.frame66,75,this.frame76,84,this.frame85,126,this.frame127,139,this.frame140,146,this.frame147,152,this.frame153,157,this.frame158,166,this.frame167,175,this.frame176,187,this.frame188,204,this.frame205,211,this.frame212,218,this.frame219,223,this.frame224,226,this.frame227,227,this.frame228,228,this.frame229,241,this.frame242,246,this.frame247,249,this.frame250,253,this.frame254,254,this.frame255,263,this.frame264,266,this.frame267,278,this.frame279,285,this.frame286);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame10() : *
      {
         jumpBack();
      }
      
      internal function frame13() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame25() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame30() : *
      {
         Battle.hidePlayers();
      }
      
      internal function frame32() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame36() : *
      {
         Battle.shake("small");
      }
      
      internal function frame44() : *
      {
         Battle.shake("small");
      }
      
      internal function frame51() : *
      {
         Battle.shake("small");
      }
      
      internal function frame56() : *
      {
         Battle.shake("small");
      }
      
      internal function frame66() : *
      {
         Battle.shake("small");
      }
      
      internal function frame76() : *
      {
         Battle.shake("small");
      }
      
      internal function frame85() : *
      {
         Battle.shake("small");
      }
      
      internal function frame127() : *
      {
         Battle.shake("small");
      }
      
      internal function frame140() : *
      {
         Battle.finalHit = false;
         Skills.thedestroyer(1);
      }
      
      internal function frame147() : *
      {
         Battle.finalHit = false;
         Skills.thedestroyer(1);
      }
      
      internal function frame153() : *
      {
         Battle.finalHit = false;
         Skills.thedestroyer(1);
      }
      
      internal function frame158() : *
      {
         Battle.finalHit = false;
         Skills.thedestroyer(1);
      }
      
      internal function frame167() : *
      {
         Battle.finalHit = false;
         Skills.thedestroyer(1);
      }
      
      internal function frame176() : *
      {
         Battle.finalHit = false;
         Skills.thedestroyer(1);
      }
      
      internal function frame188() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame205() : *
      {
         Battle.shake("small");
      }
      
      internal function frame212() : *
      {
         Battle.shake("small");
      }
      
      internal function frame219() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame224() : *
      {
         Battle.shake("small");
      }
      
      internal function frame227() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame228() : *
      {
         Skills.thedestroyer(2);
      }
      
      internal function frame229() : *
      {
         Battle.shake("big");
      }
      
      internal function frame242() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame247() : *
      {
         Battle.shake("small");
      }
      
      internal function frame250() : *
      {
         if(Flags.battleEvent == Flags.ANNA_BATTLE)
         {
            Text.speech(Text.anna[12]);
         }
      }
      
      internal function frame254() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[17]);
         }
      }
      
      internal function frame255() : *
      {
         Battle.shake("small");
      }
      
      internal function frame264() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame267() : *
      {
         Battle.showPlayers();
      }
      
      internal function frame279() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame286() : *
      {
         k();
      }
   }
}

