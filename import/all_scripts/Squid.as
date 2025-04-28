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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13440")]
   public dynamic class Squid extends FoeMC
   {
      public var tentacles:Boolean;
      
      public function Squid()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,54,this.frame55,63,this.frame64,95,this.frame96,98,this.frame99,99,this.frame100,129,this.frame130,137,this.frame138,138,this.frame139,155,this.frame156,157,this.frame158,203,this.frame204,205,this.frame206,209,this.frame210,224,this.frame225,225,this.frame226,226,this.frame227,249,this.frame250,250,this.frame251,251,this.frame252,261,this.frame262,283,this.frame284,293,this.frame294,294,this.frame295,310,this.frame311,311,this.frame312,328,this.frame329,361,this.frame362,400,this.frame401,405,this.frame406,445,this.frame446,465,this.frame466,504,this.frame505,506,this.frame507,508,this.frame509,510,this.frame511,512,this.frame513,514,this.frame515,525,this.frame526,556,this.frame557,568,this.frame569,586,this.frame587,591,this.frame592,599,this.frame600,620,this.frame621,621,this.frame622,658,this.frame659,686,this.frame687,694,this.frame695,701,this.frame702,710,this.frame711,712,this.frame713,717,this.frame718,738,this.frame739,755,this.frame756,756,this.frame757,762,this.frame763,772,this.frame773,782,this.frame783,800,this.frame801,805,this.frame806,826,this.frame827,827,this.frame828,842,this.frame843,850,this.frame851,851,this.frame852,852,this.frame853,867,this.frame868,882,this.frame883);
      }
      
      internal function frame1() : *
      {
         init();
         this.tentacles = true;
      }
      
      internal function frame4() : *
      {
         randomDelay(25);
      }
      
      internal function frame55() : *
      {
         if(isSummon)
         {
            this.x -= 140;
            Battle.hidePlayers();
         }
      }
      
      internal function frame64() : *
      {
         this.tentacles = true;
      }
      
      internal function frame96() : *
      {
         Text.speech(Text.squids[9]);
         if(!isSummon)
         {
            if(skin == 3)
            {
               Text.speech(Text.squids[8]);
            }
         }
      }
      
      internal function frame99() : *
      {
         k();
      }
      
      internal function frame100() : *
      {
         eye1.gotoAndPlay("hit");
         eye2.gotoAndPlay("hit");
      }
      
      internal function frame130() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame138() : *
      {
         flee();
      }
      
      internal function frame139() : *
      {
         freezeSound();
      }
      
      internal function frame156() : *
      {
         frozen();
      }
      
      internal function frame158() : *
      {
         stand();
      }
      
      internal function frame204() : *
      {
         ks();
      }
      
      internal function frame206() : *
      {
         playSound("438");
      }
      
      internal function frame210() : *
      {
         playSound("439");
      }
      
      internal function frame225() : *
      {
         k();
      }
      
      internal function frame226() : *
      {
         eye1.gotoAndPlay("hit");
         eye2.gotoAndPlay("hit");
         playSound("440");
      }
      
      internal function frame227() : *
      {
         playSound("441");
      }
      
      internal function frame250() : *
      {
         k();
      }
      
      internal function frame251() : *
      {
         eye1.gotoAndPlay("hit2");
         eye2.gotoAndPlay("hit2");
         playSound("442");
      }
      
      internal function frame252() : *
      {
         this.tentacles = false;
         self.disarm();
         playSound("443");
      }
      
      internal function frame262() : *
      {
         Text.speech(Text.squids[4]);
      }
      
      internal function frame284() : *
      {
         k();
      }
      
      internal function frame294() : *
      {
         eye1.gotoAndPlay("die");
         eye2.gotoAndPlay("die");
         playSound("444");
      }
      
      internal function frame295() : *
      {
         playSound("445");
      }
      
      internal function frame311() : *
      {
         playSound("446");
      }
      
      internal function frame312() : *
      {
         playSound("447");
      }
      
      internal function frame329() : *
      {
         randomDelay(30);
      }
      
      internal function frame362() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame401() : *
      {
         self.makeStuffed();
      }
      
      internal function frame406() : *
      {
         Text.speech(Text.squids[5]);
         Text.speech(Text.squids[6]);
         Text.speech(Text.squids[7]);
      }
      
      internal function frame446() : *
      {
         dropItems();
      }
      
      internal function frame466() : *
      {
         dead();
      }
      
      internal function frame505() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame507() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame509() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame511() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame513() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame515() : *
      {
         self.special1();
      }
      
      internal function frame526() : *
      {
         k();
      }
      
      internal function frame557() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame569() : *
      {
         k();
      }
      
      internal function frame587() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special3();
         }
      }
      
      internal function frame592() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.squids[1]);
         }
      }
      
      internal function frame600() : *
      {
         k();
      }
      
      internal function frame621() : *
      {
         k();
      }
      
      internal function frame622() : *
      {
         eye1.gotoAndPlay("heal");
         eye2.gotoAndPlay("heal");
         playSound("heal2");
      }
      
      internal function frame659() : *
      {
         k();
      }
      
      internal function frame687() : *
      {
         self.magic1();
      }
      
      internal function frame695() : *
      {
         k();
      }
      
      internal function frame702() : *
      {
         summonOnTop();
      }
      
      internal function frame711() : *
      {
         if(skin == 3)
         {
            playSound("squid3");
         }
         if(skin == 2)
         {
            playSound("squid2");
         }
         if(skin == 1)
         {
            playSound("squid1");
         }
      }
      
      internal function frame713() : *
      {
         if(isSummon)
         {
            Summons.SquidLime.effect();
         }
         else
         {
            self.attack1();
         }
         if(skin == 3)
         {
            makeMagic(EffectSlap,0,0,true);
         }
         if(skin == 2)
         {
            makeMagic(EffectStab,0,0,true);
         }
         if(skin == 1)
         {
            makeMagic(EffectStab,0,0,true);
         }
      }
      
      internal function frame718() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.squids[2]);
         }
         if(!isSummon)
         {
            Text.speech(Text.squids[3]);
         }
      }
      
      internal function frame739() : *
      {
         k();
      }
      
      internal function frame756() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame757() : *
      {
         if(isSummon)
         {
            Summons.SquidLime.effect2();
         }
         else
         {
            self.attack2();
         }
         makeMagic(EffectThunder2,0,0,true);
      }
      
      internal function frame763() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.squids[2]);
         }
         if(!isSummon)
         {
            Text.speech(Text.squids[3]);
         }
      }
      
      internal function frame773() : *
      {
         summonOnTop(false);
      }
      
      internal function frame783() : *
      {
         k();
      }
      
      internal function frame801() : *
      {
         self.attack3();
         makeMagic(EffectPoison2,0,0,true);
      }
      
      internal function frame806() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.squids[2]);
         }
         if(!isSummon)
         {
            Text.speech(Text.squids[3]);
         }
      }
      
      internal function frame827() : *
      {
         k();
      }
      
      internal function frame828() : *
      {
         loops = 2;
      }
      
      internal function frame843() : *
      {
         self.special4();
         if(loops)
         {
            Battle.finalHit = false;
         }
         makeMagic(EffectWater2,0,0);
      }
      
      internal function frame851() : *
      {
         if(loops)
         {
            --loops;
            gotoAndPlay("loop1");
         }
      }
      
      internal function frame852() : *
      {
         k();
      }
      
      internal function frame853() : *
      {
         loops = 2;
      }
      
      internal function frame868() : *
      {
         self.special5();
      }
      
      internal function frame883() : *
      {
         if(loops)
         {
            --loops;
            gotoAndPlay("loop2");
         }
         else
         {
            k();
         }
      }
   }
}

