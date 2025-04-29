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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13327")]
   public dynamic class UnderLegs extends FoeMC
   {
      public function UnderLegs()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,18,this.frame19,43,this.frame44,48,this.frame49,51,this.frame52,54,this.frame55,55,this.frame56,86,this.frame87,89,this.frame90,92,this.frame93,103,this.frame104,104,this.frame105,155,this.frame156,157,this.frame158,160,this.frame161,177,this.frame178,178,this.frame179,182,this.frame183,204,this.frame205,205,this.frame206,206,this.frame207,321,this.frame322,441,this.frame442,442,this.frame443,497,this.frame498,506,this.frame507,536,this.frame537,537,this.frame538,565,this.frame566,566,this.frame567,584,this.frame585,595,this.frame596,598,this.frame599,605,this.frame606,612,this.frame613,620,this.frame621,622,this.frame623,631,this.frame632,641,this.frame642,646,this.frame647,653,this.frame654,666,this.frame667,668,this.frame669,676,this.frame677,684,this.frame685,687,this.frame688,692,this.frame693,700,this.frame701,708,this.frame709,720,this.frame721,730,this.frame731,742,this.frame743,760,this.frame761,770,this.frame771,778,this.frame779,781,this.frame782,800,this.frame801);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame10() : *
      {
         if(isSummon)
         {
            skin = 6;
         }
      }
      
      internal function frame19() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame44() : *
      {
      }
      
      internal function frame49() : *
      {
         if(isSummon)
         {
            Backgrounds.changeBackground(Backgrounds.UNDERTALE);
            Battle.shake("small");
         }
      }
      
      internal function frame52() : *
      {
         if(!(self is Summon))
         {
            Text.speech(Text.snowflake[1]);
         }
         if(self is Summon)
         {
            Text.speech(Text.snowflake[11]);
         }
      }
      
      internal function frame55() : *
      {
         k();
      }
      
      internal function frame56() : *
      {
         init();
      }
      
      internal function frame87() : *
      {
         if(isSummon)
         {
            Backgrounds.resetBackground();
            Battle.shake("small");
         }
      }
      
      internal function frame90() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame93() : *
      {
      }
      
      internal function frame104() : *
      {
         k();
      }
      
      internal function frame105() : *
      {
         stand();
      }
      
      internal function frame156() : *
      {
         ks();
      }
      
      internal function frame158() : *
      {
         self.skinDamage();
         head.eyes.gotoAndStop("hit");
      }
      
      internal function frame161() : *
      {
         Text.speech(Text.snowflake[15]);
      }
      
      internal function frame178() : *
      {
         k();
      }
      
      internal function frame179() : *
      {
         self.skinDamage();
         head.eyes.gotoAndStop("hit");
         head.mouth.gotoAndStop("hit");
      }
      
      internal function frame183() : *
      {
         Text.speech(Text.snowflake[15]);
      }
      
      internal function frame205() : *
      {
         k();
      }
      
      internal function frame206() : *
      {
         Battle.whiteFlash();
         self.skinDamage();
         head.eyes.gotoAndStop("hit");
         head.mouth.gotoAndStop("hit");
      }
      
      internal function frame207() : *
      {
         Battle.shake("big");
      }
      
      internal function frame322() : *
      {
         Battle.shake("small");
      }
      
      internal function frame442() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame443() : *
      {
         dropItems();
      }
      
      internal function frame498() : *
      {
         Medals.unlock(Medals.determination);
         Flags.UNDERLEGS_DEFEATED.quantity = 1;
      }
      
      internal function frame507() : *
      {
         Battle.bossDefeated();
      }
      
      internal function frame537() : *
      {
         dead();
      }
      
      internal function frame538() : *
      {
         head.eyes.gotoAndStop("heal");
         head.mouth.gotoAndStop("heal");
      }
      
      internal function frame566() : *
      {
         k();
      }
      
      internal function frame567() : *
      {
         head.mouth.gotoAndStop("heal");
      }
      
      internal function frame585() : *
      {
         k();
      }
      
      internal function frame596() : *
      {
         head.eyes.gotoAndStop("hit");
         head.mouth.gotoAndStop("heal");
      }
      
      internal function frame599() : *
      {
         self.attack1();
      }
      
      internal function frame606() : *
      {
         Text.speech(Text.snowflake[19]);
      }
      
      internal function frame613() : *
      {
         k();
      }
      
      internal function frame621() : *
      {
         head.eyes.gotoAndStop("hit");
      }
      
      internal function frame623() : *
      {
         Battle.finalHit = false;
         self.attack2();
      }
      
      internal function frame632() : *
      {
         Battle.finalHit = false;
         self.attack2();
      }
      
      internal function frame642() : *
      {
         self.attack2();
      }
      
      internal function frame647() : *
      {
         Text.speech(Text.snowflake[13]);
      }
      
      internal function frame654() : *
      {
         k();
      }
      
      internal function frame667() : *
      {
         head.eyes.gotoAndStop("hit");
      }
      
      internal function frame669() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.Underlegs.effect2();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame677() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.Underlegs.effect2();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame685() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.Underlegs.effect2();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame688() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.snowflake[14]);
         }
      }
      
      internal function frame693() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.Underlegs.effect2();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame701() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.Underlegs.effect2();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame709() : *
      {
         if(isSummon)
         {
            Summons.Underlegs.effect2();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame721() : *
      {
         k();
      }
      
      internal function frame731() : *
      {
         if(!isSummon)
         {
            head.mouth.gotoAndStop("heal");
         }
      }
      
      internal function frame743() : *
      {
         if(isSummon)
         {
            Summons.Underlegs.effect3();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame761() : *
      {
         k();
      }
      
      internal function frame771() : *
      {
         head.eyes.gotoAndStop("hit");
      }
      
      internal function frame779() : *
      {
         if(isSummon)
         {
            Summons.Underlegs.effect();
         }
         else
         {
            self.magic2();
         }
      }
      
      internal function frame782() : *
      {
         if(isSummon)
         {
            Text.speech(Text.snowflake[11]);
         }
      }
      
      internal function frame801() : *
      {
         k();
      }
   }
}

