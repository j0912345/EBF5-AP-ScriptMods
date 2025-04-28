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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15857")]
   public dynamic class Gigalith extends FoeMC
   {
      public function Gigalith()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,32,this.frame33,88,this.frame89,89,this.frame90,120,this.frame121,122,this.frame123,129,this.frame130,131,this.frame132,132,this.frame133,147,this.frame148,148,this.frame149,149,this.frame150,174,this.frame175,176,this.frame177,177,this.frame178,208,this.frame209,209,this.frame210,211,this.frame212,235,this.frame236,263,this.frame264,284,this.frame285,329,this.frame330,396,this.frame397,480,this.frame481,490,this.frame491,504,this.frame505,587,this.frame588,603,this.frame604,608,this.frame609,609,this.frame610,633,this.frame634,634,this.frame635,652,this.frame653,689,this.frame690,712,this.frame713,713,this.frame714,714,this.frame715,726,this.frame727,728,this.frame729,737,this.frame738,738,this.frame739,789,this.frame790,802,this.frame803,803,this.frame804,830,this.frame831,834,this.frame835,838,this.frame839,844,this.frame845,849,this.frame850,855,this.frame856,861,this.frame862,865,this.frame866,871,this.frame872,874,this.frame875,877,this.frame878,895,this.frame896,910,this.frame911,925,this.frame926,926,this.frame927,939,this.frame940,940,this.frame941,951,this.frame952,952,this.frame953);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         head.gotoAndStop(30);
         body.gotoAndStop(30);
      }
      
      internal function frame33() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.gigalith[1]);
         }
      }
      
      internal function frame89() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
      }
      
      internal function frame90() : *
      {
         if(isSummon)
         {
            Text.speech(Text.gigalith[14]);
         }
         if(isSummon)
         {
            Text.speech(Text.gigalith[15]);
         }
      }
      
      internal function frame121() : *
      {
         k();
      }
      
      internal function frame123() : *
      {
         stand();
      }
      
      internal function frame130() : *
      {
         ks();
      }
      
      internal function frame132() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame133() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
      }
      
      internal function frame148() : *
      {
         k();
      }
      
      internal function frame149() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame150() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
         Battle.shake("small");
      }
      
      internal function frame175() : *
      {
         k();
      }
      
      internal function frame177() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
         Battle.shake("big");
      }
      
      internal function frame178() : *
      {
         play();
         head.gotoAndStop(60);
         body.gotoAndStop(60);
      }
      
      internal function frame209() : *
      {
         k();
      }
      
      internal function frame210() : *
      {
         Battle.shake("big");
         Battle.whiteFlash();
      }
      
      internal function frame212() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame236() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 10));
      }
      
      internal function frame264() : *
      {
         dropItems();
      }
      
      internal function frame285() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame330() : *
      {
         if(Battle.stage.checkBusy() > 1)
         {
            gotoAndPlay("die3");
         }
      }
      
      internal function frame397() : *
      {
         self.magic4();
      }
      
      internal function frame481() : *
      {
         Battle.shake("small");
      }
      
      internal function frame491() : *
      {
         Battle.shake("small");
      }
      
      internal function frame505() : *
      {
         Battle.shake("small");
      }
      
      internal function frame588() : *
      {
         dead();
      }
      
      internal function frame604() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
      }
      
      internal function frame609() : *
      {
         k();
      }
      
      internal function frame610() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
         playSound("heal2");
      }
      
      internal function frame634() : *
      {
         k();
      }
      
      internal function frame635() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
      }
      
      internal function frame653() : *
      {
         head.gotoAndPlay(2);
         body.gotoAndPlay(2);
      }
      
      internal function frame690() : *
      {
         if(!isSummon)
         {
            self.magic1();
         }
      }
      
      internal function frame713() : *
      {
         k();
      }
      
      internal function frame714() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
      }
      
      internal function frame715() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
      }
      
      internal function frame727() : *
      {
         self.magic2();
      }
      
      internal function frame729() : *
      {
         Text.speech(Text.gigalith[9]);
         Text.speech(Text.gigalith[10]);
         Text.speech(Text.gigalith[11]);
      }
      
      internal function frame738() : *
      {
         k();
      }
      
      internal function frame739() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
      }
      
      internal function frame790() : *
      {
         self.magic3();
      }
      
      internal function frame803() : *
      {
         k();
      }
      
      internal function frame804() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
      }
      
      internal function frame831() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special1();
         }
         else
         {
            Summons.BossGigalith.effect();
         }
         Battle.shake();
      }
      
      internal function frame835() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special1();
         }
         else
         {
            Summons.BossGigalith.effect();
         }
      }
      
      internal function frame839() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special1();
         }
         else
         {
            Summons.BossGigalith.effect();
         }
         Battle.shake();
      }
      
      internal function frame845() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special1();
         }
         else
         {
            Summons.BossGigalith.effect();
         }
      }
      
      internal function frame850() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special1();
         }
         else
         {
            Summons.BossGigalith.effect();
         }
         Battle.shake();
      }
      
      internal function frame856() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special1();
         }
         else
         {
            Summons.BossGigalith.effect();
         }
      }
      
      internal function frame862() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special1();
         }
         else
         {
            Summons.BossGigalith.effect();
         }
      }
      
      internal function frame866() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special1();
         }
         else
         {
            Summons.BossGigalith.effect();
         }
         Battle.shake();
      }
      
      internal function frame872() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special1();
         }
         else
         {
            Summons.BossGigalith.effect();
         }
      }
      
      internal function frame875() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.gigalith[8]);
         }
      }
      
      internal function frame878() : *
      {
         if(!isSummon)
         {
            self.special1();
         }
         else
         {
            Summons.BossGigalith.effect();
         }
         Battle.shake();
      }
      
      internal function frame896() : *
      {
         k();
      }
      
      internal function frame911() : *
      {
         Battle.showPlayers();
      }
      
      internal function frame926() : *
      {
         k();
      }
      
      internal function frame927() : *
      {
         Battle.hidePlayers();
         this.y += 46;
         this.x -= 64;
      }
      
      internal function frame940() : *
      {
         head.gotoAndStop(60);
         body.gotoAndStop(60);
      }
      
      internal function frame941() : *
      {
         Battle.shake("small");
      }
      
      internal function frame952() : *
      {
         summonOnTop();
      }
      
      internal function frame953() : *
      {
         gotoAndPlay("intro2");
      }
   }
}

