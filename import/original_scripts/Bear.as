package
{
   import fl.transitions.easing.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol16128")]
   public dynamic class Bear extends FoeMC
   {
      public var angry:Boolean;
      
      public var introText:Boolean;
      
      public function Bear()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,47,this.frame48,87,this.frame88,88,this.frame89,90,this.frame91,91,this.frame92,105,this.frame106,107,this.frame108,147,this.frame148,149,this.frame150,196,this.frame197,216,this.frame217,221,this.frame222,239,this.frame240,240,this.frame241,267,this.frame268,268,this.frame269,281,this.frame282,295,this.frame296,296,this.frame297,312,this.frame313,315,this.frame316,319,this.frame320,336,this.frame337,365,this.frame366,421,this.frame422,442,this.frame443,443,this.frame444,472,this.frame473,482,this.frame483,486,this.frame487,513,this.frame514,526,this.frame527,531,this.frame532,544,this.frame545,554,this.frame555,558,this.frame559,582,this.frame583,598,this.frame599,603,this.frame604,616,this.frame617,630,this.frame631,634,this.frame635,635,this.frame636,641,this.frame642,664,this.frame665,665,this.frame666,670,this.frame671,685,this.frame686,695,this.frame696,699,this.frame700,719,this.frame720,726,this.frame727,731,this.frame732,735,this.frame736,742,this.frame743,747,this.frame748,763,this.frame764,768,this.frame769,781,this.frame782,794,this.frame795,800,this.frame801,825,this.frame826,835,this.frame836,839,this.frame840,867,this.frame868,906,this.frame907,907,this.frame908,911,this.frame912,915,this.frame916,920,this.frame921,925,this.frame926,941,this.frame942,950,this.frame951,964,this.frame965,969,this.frame970,982,this.frame983,992,this.frame993,1002,this.frame1003,1007,this.frame1008,1011,this.frame1012,1013,this.frame1014,1014,this.frame1015,1016,this.frame1017,1018,this.frame1019,1021,this.frame1022,1022,this.frame1023,1042,this.frame1043,1046,this.frame1047,1085,this.frame1086,1098,this.frame1099,1103,this.frame1104,1116,this.frame1117);
      }
      
      internal function frame1() : *
      {
         init();
         this.angry = false;
         this.introText = true;
      }
      
      internal function frame3() : *
      {
         randomDelay(30);
      }
      
      internal function frame48() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame88() : *
      {
         if(this.introText)
         {
            if(!isSummon && self.graphicScale < 0)
            {
               Text.speech(Text.arcade[20]);
               Text.speech(Text.arcade[21]);
               Text.speech(Text.arcade[22]);
               Text.speech(Text.arcade[23]);
            }
            else if(skin == 4 && !isSummon)
            {
               Text.speech(Text.arena[13]);
            }
         }
      }
      
      internal function frame89() : *
      {
         if(this.introText)
         {
            if(!isSummon)
            {
               Text.speech(Text.bears[1]);
            }
            Text.speech(Text.bears[2]);
            if(!isSummon)
            {
               Text.speech(Text.bears[3]);
            }
            this.introText = false;
         }
      }
      
      internal function frame91() : *
      {
         k();
      }
      
      internal function frame92() : *
      {
         freezeSound();
      }
      
      internal function frame106() : *
      {
         frozen();
      }
      
      internal function frame108() : *
      {
         stand();
      }
      
      internal function frame148() : *
      {
         ks();
      }
      
      internal function frame150() : *
      {
         head.eyes.gotoAndPlay("die");
      }
      
      internal function frame197() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame217() : *
      {
         flee();
      }
      
      internal function frame222() : *
      {
         if(!this.angry)
         {
            head.eyes.gotoAndPlay("die");
         }
         playSound("232");
      }
      
      internal function frame240() : *
      {
         k();
      }
      
      internal function frame241() : *
      {
         head.eyes.gotoAndPlay("hit");
         playSound("233");
      }
      
      internal function frame268() : *
      {
         k();
      }
      
      internal function frame269() : *
      {
         this.angry = true;
         self.mad1();
         playSound("234");
      }
      
      internal function frame282() : *
      {
         Text.speech(Text.bears[4]);
         Text.speech(Text.bears[10]);
      }
      
      internal function frame296() : *
      {
         k();
      }
      
      internal function frame297() : *
      {
         head.eyes.gotoAndPlay("die");
         playSound("235");
      }
      
      internal function frame313() : *
      {
         playSound("236");
      }
      
      internal function frame316() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame320() : *
      {
         playSound("237");
      }
      
      internal function frame337() : *
      {
         randomDelay(25);
      }
      
      internal function frame366() : *
      {
         dropItems();
      }
      
      internal function frame422() : *
      {
         dead();
      }
      
      internal function frame443() : *
      {
         k();
      }
      
      internal function frame444() : *
      {
         head.eyes.gotoAndPlay("heal");
         playSound("heal2");
      }
      
      internal function frame473() : *
      {
         k();
      }
      
      internal function frame483() : *
      {
         setXY();
         move(20,14,Regular.easeOut);
      }
      
      internal function frame487() : *
      {
         swapLayer();
      }
      
      internal function frame514() : *
      {
         self.attack1();
      }
      
      internal function frame527() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame532() : *
      {
         resetLayer();
      }
      
      internal function frame545() : *
      {
         k();
      }
      
      internal function frame555() : *
      {
         setXY();
         move(20,14,Regular.easeOut);
      }
      
      internal function frame559() : *
      {
         swapLayer();
      }
      
      internal function frame583() : *
      {
         self.attack2();
      }
      
      internal function frame599() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame604() : *
      {
         resetLayer();
      }
      
      internal function frame617() : *
      {
         k();
      }
      
      internal function frame631() : *
      {
         setXY();
         move(-100,14,Regular.easeOut);
      }
      
      internal function frame635() : *
      {
         swapLayer(true);
      }
      
      internal function frame636() : *
      {
         head.eyes.gotoAndPlay("die");
      }
      
      internal function frame642() : *
      {
         Battle.shake("small");
         self.attack3();
      }
      
      internal function frame665() : *
      {
         head.eyes.gotoAndPlay(1);
      }
      
      internal function frame666() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame671() : *
      {
         resetLayer();
      }
      
      internal function frame686() : *
      {
         k();
      }
      
      internal function frame696() : *
      {
         setXY();
         move(isSummon ? -20 : 20,14,Regular.easeOut);
      }
      
      internal function frame700() : *
      {
         swapLayer();
      }
      
      internal function frame720() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame727() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame732() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame736() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame743() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame748() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame764() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame769() : *
      {
         resetLayer();
      }
      
      internal function frame782() : *
      {
         k();
      }
      
      internal function frame795() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame801() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame826() : *
      {
         k();
      }
      
      internal function frame836() : *
      {
         setXY();
         move(30,14,Regular.easeOut);
      }
      
      internal function frame840() : *
      {
         swapLayer(true);
      }
      
      internal function frame868() : *
      {
         head.eyes.gotoAndPlay("die");
      }
      
      internal function frame907() : *
      {
         Text.speech(Text.bears[5]);
         Text.speech(Text.bears[6]);
         Text.speech(Text.bears[7]);
         Text.speech(Text.bears[8]);
         Text.speech(Text.bears[9]);
      }
      
      internal function frame908() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame912() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame916() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame921() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame926() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame942() : *
      {
         self.special1();
      }
      
      internal function frame951() : *
      {
         head.eyes.gotoAndPlay(1);
      }
      
      internal function frame965() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame970() : *
      {
         resetLayer();
      }
      
      internal function frame983() : *
      {
         k();
      }
      
      internal function frame993() : *
      {
         setXY();
         move(0,15,null);
      }
      
      internal function frame1003() : *
      {
         loops = 1;
         Battle.shake("tiny");
      }
      
      internal function frame1008() : *
      {
         if(loops == 1)
         {
            self.attack5();
            X = -x - 300;
            move(0,12,null);
         }
      }
      
      internal function frame1012() : *
      {
         if(loops)
         {
            gotoAndPlay("loop1");
            --loops;
         }
      }
      
      internal function frame1014() : *
      {
         if(skin == 4)
         {
            makeMagic(BearFire,0,0);
         }
         else
         {
            makeMagic(BackupHit,0,0);
         }
      }
      
      internal function frame1015() : *
      {
         if(skin == 4)
         {
            Battle.shake("big");
         }
      }
      
      internal function frame1017() : *
      {
         self.attack6();
      }
      
      internal function frame1019() : *
      {
         Text.speech(Text.bears[11]);
      }
      
      internal function frame1022() : *
      {
         resetXY();
         move(0,1,null);
      }
      
      internal function frame1023() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame1043() : *
      {
         setXY();
         if(isSummon)
         {
            move(-40,14,Regular.easeOut);
         }
         else
         {
            move(40,14,Regular.easeOut);
         }
      }
      
      internal function frame1047() : *
      {
         swapLayer();
      }
      
      internal function frame1086() : *
      {
         if(isSummon)
         {
            Summons.BearBlack.effect();
         }
         else
         {
            self.attack7();
         }
      }
      
      internal function frame1099() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame1104() : *
      {
         resetLayer();
      }
      
      internal function frame1117() : *
      {
         k();
      }
   }
}

