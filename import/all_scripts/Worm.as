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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13312")]
   public dynamic class Worm extends FoeMC
   {
      public var mouth:int;
      
      public function Worm()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,74,this.frame75,77,this.frame78,108,this.frame109,110,this.frame111,173,this.frame174,175,this.frame176,190,this.frame191,191,this.frame192,220,this.frame221,221,this.frame222,239,this.frame240,240,this.frame241,241,this.frame242,260,this.frame261,261,this.frame262,262,this.frame263,272,this.frame273,283,this.frame284,284,this.frame285,285,this.frame286,295,this.frame296,310,this.frame311,313,this.frame314,314,this.frame315,315,this.frame316,340,this.frame341,375,this.frame376,384,this.frame385,394,this.frame395,406,this.frame407,408,this.frame409,414,this.frame415,425,this.frame426,437,this.frame438,459,this.frame460,468,this.frame469,478,this.frame479,494,this.frame495,497,this.frame498,509,this.frame510,521,this.frame522,543,this.frame544,570,this.frame571,593,this.frame594,604,this.frame605,605,this.frame606,618,this.frame619,619,this.frame620,639,this.frame640,640,this.frame641,667,this.frame668,669,this.frame670,676,this.frame677,703,this.frame704,719,this.frame720,751,this.frame752,768,this.frame769);
      }
      
      internal function frame1() : *
      {
         init();
         if(skin == 2 || skin == 3)
         {
            this.mouth = Math.random() * 3 + 6;
         }
         else if(skin == 5)
         {
            this.mouth = Math.random() * 3 + 9;
         }
         else
         {
            this.mouth = Math.random() * 5 + 1;
         }
      }
      
      internal function frame3() : *
      {
         if(skin == 2 || skin == 3)
         {
            this.mouth = Math.random() * 3 + 6;
         }
         else if(skin == 5)
         {
            this.mouth = Math.random() * 3 + 9;
         }
         else
         {
            this.mouth = Math.random() * 5 + 1;
         }
         randomDelay(40);
      }
      
      internal function frame75() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.worms[1]);
         }
      }
      
      internal function frame78() : *
      {
         k();
      }
      
      internal function frame109() : *
      {
         flee();
      }
      
      internal function frame111() : *
      {
         stand();
      }
      
      internal function frame174() : *
      {
         ks();
      }
      
      internal function frame176() : *
      {
         freezeSound();
      }
      
      internal function frame191() : *
      {
         frozen();
      }
      
      internal function frame192() : *
      {
         head.eye1.gotoAndPlay("heal");
         head.eye2.gotoAndPlay("heal");
         head.mouth.gotoAndPlay("open");
         playSound("heal");
      }
      
      internal function frame221() : *
      {
         k();
      }
      
      internal function frame222() : *
      {
         playSound("458");
      }
      
      internal function frame240() : *
      {
         k();
      }
      
      internal function frame241() : *
      {
         playSound("459");
      }
      
      internal function frame242() : *
      {
         playSound("460");
      }
      
      internal function frame261() : *
      {
         k();
      }
      
      internal function frame262() : *
      {
         head.eye1.gotoAndPlay("hit");
         head.eye2.gotoAndPlay("hit");
         head.mouth.gotoAndPlay("open");
         playSound("461");
      }
      
      internal function frame263() : *
      {
         if(skin == 5)
         {
            playSound("bookworm1");
         }
         else
         {
            playSound("" + (skin + 466));
         }
         playSound("462");
      }
      
      internal function frame273() : *
      {
         playSound("463");
      }
      
      internal function frame284() : *
      {
         k();
      }
      
      internal function frame285() : *
      {
         head.eye1.gotoAndPlay("die");
         head.eye2.gotoAndPlay("die");
         head.mouth.gotoAndPlay("open");
         playSound("464");
      }
      
      internal function frame286() : *
      {
         if(skin == 5)
         {
            playSound("bookworm2");
         }
         else
         {
            playSound("" + (skin + 470));
         }
         playSound("465");
      }
      
      internal function frame296() : *
      {
         playSound("466");
      }
      
      internal function frame311() : *
      {
         Text.speech(Text.worms[3]);
         if(skin == 2)
         {
            Text.speech(Text.worms[6]);
         }
         Text.speech(Text.worms[8]);
      }
      
      internal function frame314() : *
      {
         if(Flags.battleEvent == Flags.FINAL_BOSS && Battle.stage.checkBusy() > 1)
         {
            gotoAndPlay("die3");
         }
      }
      
      internal function frame315() : *
      {
         if(Flags.battleEvent == Flags.FINAL_BOSS)
         {
            stop();
            Flags.FINAL_BOSS_DEFEATED.quantity = 1;
            SaveData.calculateEndingTheshold();
            Main.newGamePlusFlag = true;
            Battle.endGame();
         }
      }
      
      internal function frame316() : *
      {
         randomDelay(20);
      }
      
      internal function frame341() : *
      {
         dropItems();
      }
      
      internal function frame376() : *
      {
         dead();
      }
      
      internal function frame385() : *
      {
         setXY();
         move(isSummon ? -50 : 50,24,Regular.easeInOut);
      }
      
      internal function frame395() : *
      {
         swapLayer();
      }
      
      internal function frame407() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.worms[2]);
         }
         if(!isSummon)
         {
            Text.speech(Text.worms[5]);
         }
         if(!isSummon)
         {
            Text.speech(Text.worms[7]);
         }
      }
      
      internal function frame409() : *
      {
         head.mouth.gotoAndPlay("bite");
      }
      
      internal function frame415() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame426() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame438() : *
      {
         resetLayer();
      }
      
      internal function frame460() : *
      {
         k();
      }
      
      internal function frame469() : *
      {
         setXY();
         move(50,24,Regular.easeInOut);
      }
      
      internal function frame479() : *
      {
         swapLayer();
      }
      
      internal function frame495() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.worms[2]);
         }
         if(!isSummon)
         {
            Text.speech(Text.worms[7]);
         }
      }
      
      internal function frame498() : *
      {
         self.attack1();
      }
      
      internal function frame510() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame522() : *
      {
         resetLayer();
      }
      
      internal function frame544() : *
      {
         k();
      }
      
      internal function frame571() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
      }
      
      internal function frame594() : *
      {
         if(!isSummon)
         {
            self.defend1();
         }
      }
      
      internal function frame605() : *
      {
         k();
      }
      
      internal function frame606() : *
      {
         head.mouth.gotoAndPlay("spit");
      }
      
      internal function frame619() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.worms[2]);
         }
         if(!isSummon)
         {
            Text.speech(Text.worms[7]);
         }
      }
      
      internal function frame620() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame640() : *
      {
         k();
      }
      
      internal function frame641() : *
      {
         head.mouth.gotoAndPlay("spit");
      }
      
      internal function frame668() : *
      {
         self.special2();
      }
      
      internal function frame670() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.worms[4]);
         }
      }
      
      internal function frame677() : *
      {
         k();
      }
      
      internal function frame704() : *
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
      
      internal function frame720() : *
      {
         k();
      }
      
      internal function frame752() : *
      {
         if(isSummon)
         {
            Summons.WormBook.effect();
         }
         else
         {
            self.magic2();
         }
      }
      
      internal function frame769() : *
      {
         k();
      }
   }
}

