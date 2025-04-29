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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15790")]
   public dynamic class Boulder extends FoeMC
   {
      public function Boulder()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,35,this.frame36,69,this.frame70,71,this.frame72,73,this.frame74,112,this.frame113,114,this.frame115,129,this.frame130,130,this.frame131,131,this.frame132,147,this.frame148,150,this.frame151,151,this.frame152,153,this.frame154,165,this.frame166,175,this.frame176,177,this.frame178,178,this.frame179,190,this.frame191,193,this.frame194,213,this.frame214,236,this.frame237,264,this.frame265,265,this.frame266,294,this.frame295,295,this.frame296,310,this.frame311,315,this.frame316,325,this.frame326,362,this.frame363,372,this.frame373,384,this.frame385,400,this.frame401,408,this.frame409,412,this.frame413,416,this.frame417,420,this.frame421,422,this.frame423,424,this.frame425,428,this.frame429,439,this.frame440,453,this.frame454,474,this.frame475,484,this.frame485,496,this.frame497,514,this.frame515,517,this.frame518,527,this.frame528,535,this.frame536,549,this.frame550,570,this.frame571,591,this.frame592,593,this.frame594,595,this.frame596,599,this.frame600,607,this.frame608,608,this.frame609,609,this.frame610,610,this.frame611,625,this.frame626,661,this.frame662,676,this.frame677,726,this.frame727,737,this.frame738,743,this.frame744,756,this.frame757,770,this.frame771,775,this.frame776,779,this.frame780,798,this.frame799,813,this.frame814,835,this.frame836,844,this.frame845,858,this.frame859,867,this.frame868,881,this.frame882,902,this.frame903,921,this.frame922,935,this.frame936,958,this.frame959,967,this.frame968,981,this.frame982,990,this.frame991,1004,this.frame1005,1025,this.frame1026,1037,this.frame1038,1045,this.frame1046);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(25);
      }
      
      internal function frame36() : *
      {
         head.eyes.gotoAndPlay("heal");
      }
      
      internal function frame70() : *
      {
         if(!isSummon && self.graphicScale < 0)
         {
            Text.speech(Text.arcade[20]);
            Text.speech(Text.arcade[21]);
            Text.speech(Text.arcade[22]);
            Text.speech(Text.arcade[23]);
         }
         else
         {
            if(skin == 2)
            {
               Text.speech(Text.boulders[3]);
            }
            if(!isSummon)
            {
               Text.speech(Text.boulders[7]);
            }
         }
      }
      
      internal function frame72() : *
      {
         k();
      }
      
      internal function frame74() : *
      {
         stand();
      }
      
      internal function frame113() : *
      {
         ks();
      }
      
      internal function frame115() : *
      {
         freezeSound();
      }
      
      internal function frame130() : *
      {
         frozen();
      }
      
      internal function frame131() : *
      {
         head.eyes.gotoAndPlay("hit1");
         playSound("241");
      }
      
      internal function frame132() : *
      {
         playSound("242");
      }
      
      internal function frame148() : *
      {
         playSound("243");
      }
      
      internal function frame151() : *
      {
         k();
      }
      
      internal function frame152() : *
      {
         head.eyes.gotoAndPlay("hit2");
         playSound("244");
      }
      
      internal function frame154() : *
      {
         playSound("245");
      }
      
      internal function frame166() : *
      {
         playSound("246");
      }
      
      internal function frame176() : *
      {
         playSound("247");
      }
      
      internal function frame178() : *
      {
         k();
      }
      
      internal function frame179() : *
      {
         head.eyes.gotoAndPlay("hit2");
         playSound("248");
      }
      
      internal function frame191() : *
      {
         playSound("249");
      }
      
      internal function frame194() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame214() : *
      {
         randomDelay(20);
      }
      
      internal function frame237() : *
      {
         dropItems();
      }
      
      internal function frame265() : *
      {
         dead();
      }
      
      internal function frame266() : *
      {
         head.eyes.gotoAndPlay("heal");
         playSound("heal");
      }
      
      internal function frame295() : *
      {
         k();
      }
      
      internal function frame296() : *
      {
         head.eyes.gotoAndPlay("evade");
      }
      
      internal function frame311() : *
      {
         playSound("246");
      }
      
      internal function frame316() : *
      {
         k();
      }
      
      internal function frame326() : *
      {
         head.eyes.gotoAndPlay("heal");
      }
      
      internal function frame363() : *
      {
         flee();
      }
      
      internal function frame373() : *
      {
         setXY();
         move(20,24,null);
      }
      
      internal function frame385() : *
      {
         swapLayer();
      }
      
      internal function frame401() : *
      {
         head.eyes.gotoAndPlay("evade");
      }
      
      internal function frame409() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame413() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame417() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame421() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame423() : *
      {
         head.eyes.gotoAndPlay("hit1");
      }
      
      internal function frame425() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame429() : *
      {
         self.attack1();
      }
      
      internal function frame440() : *
      {
         resetXY();
         move(0,28,null);
      }
      
      internal function frame454() : *
      {
         resetLayer();
      }
      
      internal function frame475() : *
      {
         k();
      }
      
      internal function frame485() : *
      {
         setXY();
         move(-10,24,null);
      }
      
      internal function frame497() : *
      {
         swapLayer();
      }
      
      internal function frame515() : *
      {
         head.eyes.gotoAndPlay("hit1");
      }
      
      internal function frame518() : *
      {
         self.attack2();
      }
      
      internal function frame528() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame536() : *
      {
         resetXY();
         move(0,28,null);
      }
      
      internal function frame550() : *
      {
         resetLayer();
      }
      
      internal function frame571() : *
      {
         k();
      }
      
      internal function frame592() : *
      {
         loops = 4;
         if(isSummon)
         {
            summonOnTop();
         }
      }
      
      internal function frame594() : *
      {
         x = isSummon ? -200 : 1200;
      }
      
      internal function frame596() : *
      {
         X = isSummon ? 1200 : -200;
         Y = this.y;
         move(0,55,null);
      }
      
      internal function frame600() : *
      {
         if(loops == 1)
         {
            if(isSummon)
            {
               Summons.currentSummon.effect();
            }
            else
            {
               self.attack3();
            }
            if(skin == 1)
            {
               makeMagic(EffectWater,0,0,true);
            }
            if(skin == 4)
            {
               makeMagic(EffectFire,0,0,true);
            }
            if(skin == 2)
            {
               makeMagic(EffectEarth,0,0,true);
            }
            if(skin == 3)
            {
               makeMagic(EffectPurple,0,0,true);
            }
         }
      }
      
      internal function frame608() : *
      {
         if(!isSummon)
         {
            if(skin == 1 || skin == 4)
            {
               Text.speech(Text.boulders[2]);
            }
         }
      }
      
      internal function frame609() : *
      {
         if(loops)
         {
            --loops;
            gotoAndPlay("loop1");
         }
      }
      
      internal function frame610() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame611() : *
      {
         if(isSummon)
         {
            k();
         }
         else
         {
            resetPosition();
         }
      }
      
      internal function frame626() : *
      {
         k();
      }
      
      internal function frame662() : *
      {
         self.attack4();
      }
      
      internal function frame677() : *
      {
         k();
      }
      
      internal function frame727() : *
      {
         self.attack5();
      }
      
      internal function frame738() : *
      {
         k();
      }
      
      internal function frame744() : *
      {
         head.eyes.gotoAndPlay("heal");
      }
      
      internal function frame757() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame771() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame776() : *
      {
         self.magic1();
      }
      
      internal function frame780() : *
      {
         k();
      }
      
      internal function frame799() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame814() : *
      {
         Text.speech(Text.boulders[1]);
      }
      
      internal function frame836() : *
      {
         setXY();
         if(isSummon)
         {
            Y += 10;
         }
         move(isSummon ? 30 : -30,1,null);
         swapLayer();
      }
      
      internal function frame845() : *
      {
         Battle.shake("small");
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame859() : *
      {
         head.eyes.gotoAndPlay("heal");
      }
      
      internal function frame868() : *
      {
         resetXY();
         if(isSummon)
         {
            Y = y;
            X = 1120;
         }
         move(0,28,null);
      }
      
      internal function frame882() : *
      {
         resetLayer();
      }
      
      internal function frame903() : *
      {
         k();
      }
      
      internal function frame922() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame936() : *
      {
         Text.speech(Text.boulders[1]);
      }
      
      internal function frame959() : *
      {
         setXY();
         if(isSummon)
         {
            Y += 10;
            visible = true;
         }
         move(isSummon ? 30 : -30,1,null);
         swapLayer();
      }
      
      internal function frame968() : *
      {
         Battle.shake("small");
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame982() : *
      {
         head.eyes.gotoAndPlay("heal");
      }
      
      internal function frame991() : *
      {
         resetXY();
         if(isSummon)
         {
            Y = y;
            X = 1120;
         }
         move(0,28,null);
      }
      
      internal function frame1005() : *
      {
         resetLayer();
      }
      
      internal function frame1026() : *
      {
         k();
      }
      
      internal function frame1038() : *
      {
         Battle.hidePlayers();
      }
      
      internal function frame1046() : *
      {
         gotoAndPlay("intro3");
      }
   }
}

