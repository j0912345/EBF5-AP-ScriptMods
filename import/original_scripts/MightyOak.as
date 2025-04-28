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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9778")]
   public dynamic class MightyOak extends SpellMC
   {
      public function MightyOak()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,12,this.frame13,21,this.frame22,29,this.frame30,35,this.frame36,39,this.frame40,49,this.frame50,53,this.frame54,68,this.frame69,85,this.frame86,89,this.frame90,93,this.frame94,98,this.frame99,113,this.frame114,117,this.frame118,132,this.frame133,152,this.frame153,180,this.frame181,190,this.frame191,199,this.frame200,203,this.frame204,217,this.frame218);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,0);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.annaSkills[31]);
         if(Skills.user is Foe)
         {
            Battle.hideFoes();
         }
         else
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame13() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame22() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame30() : *
      {
         Battle.shake("small");
      }
      
      internal function frame36() : *
      {
         Battle.finalHit = false;
         Skills.oak(1);
      }
      
      internal function frame40() : *
      {
         Battle.shake("small");
      }
      
      internal function frame50() : *
      {
         Battle.shake("small");
      }
      
      internal function frame54() : *
      {
         Battle.finalHit = false;
         Skills.oak(1);
      }
      
      internal function frame69() : *
      {
         Text.speech(Text.annaSkills[32]);
         Battle.shake("small");
      }
      
      internal function frame86() : *
      {
         Battle.finalHit = false;
         Skills.oak(2);
      }
      
      internal function frame90() : *
      {
         Battle.finalHit = false;
         Skills.oak(2);
      }
      
      internal function frame94() : *
      {
         Battle.finalHit = false;
         Skills.oak(2);
      }
      
      internal function frame99() : *
      {
         Battle.finalHit = false;
         Skills.oak(2);
      }
      
      internal function frame114() : *
      {
         Battle.finalHit = false;
         Skills.oak(3);
         Battle.shake("small");
      }
      
      internal function frame118() : *
      {
         Text.speech(Text.annaSkills[35]);
         Text.speech(Text.annaSkills[37]);
         Text.speech(Text.annaSkills[38]);
      }
      
      internal function frame133() : *
      {
         Battle.shake("small");
      }
      
      internal function frame153() : *
      {
         Battle.finalHit = false;
         Skills.oak(4);
         Battle.shake("big");
      }
      
      internal function frame181() : *
      {
         Skills.oak(5);
         Battle.shake("big");
      }
      
      internal function frame191() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[17]);
         }
      }
      
      internal function frame200() : *
      {
         if(Skills.user is Foe)
         {
            Battle.showFoes();
         }
         else
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame204() : *
      {
      }
      
      internal function frame218() : *
      {
         k();
      }
   }
}

