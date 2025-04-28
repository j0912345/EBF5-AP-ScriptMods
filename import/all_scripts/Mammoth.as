package
{
   import fl.transitions.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14117")]
   public dynamic class Mammoth extends FoeMC
   {
      public function Mammoth()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,42,this.frame43,51,this.frame52,59,this.frame60,69,this.frame70,70,this.frame71,102,this.frame103,106,this.frame107,108,this.frame109,147,this.frame148,149,this.frame150,171,this.frame172,172,this.frame173,197,this.frame198,198,this.frame199,212,this.frame213,213,this.frame214,214,this.frame215,236,this.frame237,278,this.frame279,282,this.frame283,283,this.frame284,302,this.frame303,320,this.frame321,370,this.frame371,383,this.frame384,384,this.frame385,406,this.frame407,415,this.frame416,422,this.frame423,434,this.frame435,436,this.frame437,454,this.frame455,465,this.frame466,487,this.frame488,488,this.frame489,508,this.frame509,509,this.frame510,537,this.frame538,564,this.frame565,565,this.frame566,566,this.frame567,570,this.frame571,585,this.frame586,595,this.frame596,599,this.frame600,601,this.frame602,607,this.frame608,608,this.frame609,615,this.frame616,636,this.frame637,649,this.frame650,669,this.frame670,684,this.frame685,691,this.frame692,695,this.frame696,720,this.frame721,727,this.frame728,755,this.frame756,770,this.frame771,812,this.frame813,820,this.frame821,828,this.frame829,837,this.frame838,868,this.frame869,874,this.frame875,887,this.frame888,889,this.frame890,900,this.frame901,909,this.frame910,931,this.frame932,945,this.frame946,954,this.frame955,971,this.frame972,972,this.frame973,973,this.frame974,987,this.frame988,997,this.frame998,1010,this.frame1011,1018,this.frame1019,1042,this.frame1043,1051,this.frame1052,1070,this.frame1071,1084,this.frame1085,1104,this.frame1105);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(30);
      }
      
      internal function frame43() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame52() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame60() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
         Battle.shake("small");
      }
      
      internal function frame70() : *
      {
         Battle.shake("small");
      }
      
      internal function frame71() : *
      {
         Battle.shake("small");
      }
      
      internal function frame103() : *
      {
         if(!isSummon)
         {
            if(skin == 1)
            {
               Text.speech(Text.mammoths[4]);
            }
         }
         if(skin == 2)
         {
            Text.speech(Text.mammoths[1]);
         }
         if(skin == 3)
         {
            Text.speech(Text.mammoths[11]);
         }
         Text.speech(Text.mammoths[2]);
      }
      
      internal function frame107() : *
      {
         k();
      }
      
      internal function frame109() : *
      {
         stand();
      }
      
      internal function frame148() : *
      {
         ks();
      }
      
      internal function frame150() : *
      {
         head.eyes.gotoAndPlay("evade");
         playSound("379");
      }
      
      internal function frame172() : *
      {
         k();
      }
      
      internal function frame173() : *
      {
         head.eyes.gotoAndPlay("evade");
         playSound("" + (381 + skin));
         playSound("379");
      }
      
      internal function frame198() : *
      {
         k();
      }
      
      internal function frame199() : *
      {
         head.eyes.gotoAndPlay("die");
         playSound("" + (384 + skin));
         playSound("379");
      }
      
      internal function frame213() : *
      {
         playSound("380");
      }
      
      internal function frame214() : *
      {
         playSound("381");
      }
      
      internal function frame215() : *
      {
         Battle.shake("small");
      }
      
      internal function frame237() : *
      {
         randomDelay(20);
      }
      
      internal function frame279() : *
      {
         self.maybeRevive();
      }
      
      internal function frame283() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame284() : *
      {
         dropItems();
      }
      
      internal function frame303() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.mammoths[5]);
         }
         Text.speech(Text.mammoths[8]);
         Text.speech(Text.mammoths[15]);
      }
      
      internal function frame321() : *
      {
         self.makeHungry();
      }
      
      internal function frame371() : *
      {
         dead();
      }
      
      internal function frame384() : *
      {
         head.eyes.gotoAndPlay("heal");
      }
      
      internal function frame385() : *
      {
         Text.speech(Text.mammoths[6]);
         Text.speech(Text.mammoths[7]);
      }
      
      internal function frame407() : *
      {
         k();
      }
      
      internal function frame416() : *
      {
         setXY();
         move(30,14,null);
      }
      
      internal function frame423() : *
      {
         swapLayer();
      }
      
      internal function frame435() : *
      {
         head.eyes.gotoAndPlay("evade");
      }
      
      internal function frame437() : *
      {
         self.attack1();
      }
      
      internal function frame455() : *
      {
         resetXY();
         move(0,25,null);
      }
      
      internal function frame466() : *
      {
         resetLayer();
      }
      
      internal function frame488() : *
      {
         k();
      }
      
      internal function frame489() : *
      {
         head.eyes.gotoAndPlay("evade");
      }
      
      internal function frame509() : *
      {
         k();
      }
      
      internal function frame510() : *
      {
         head.eyes.gotoAndPlay("heal");
         playSound("heal2");
      }
      
      internal function frame538() : *
      {
         k();
      }
      
      internal function frame565() : *
      {
         Battle.shake("big");
      }
      
      internal function frame566() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame567() : *
      {
         Text.speech(Text.mammoths[14]);
      }
      
      internal function frame571() : *
      {
         if(!isSummon)
         {
            self.magic2();
         }
      }
      
      internal function frame586() : *
      {
         k();
      }
      
      internal function frame596() : *
      {
         setXY();
         if(isSummon)
         {
            Y += 15;
         }
         move(isSummon ? 150 : -150,12,null);
      }
      
      internal function frame600() : *
      {
         Text.speech(Text.mammoths[14]);
      }
      
      internal function frame602() : *
      {
         swapLayer(true);
      }
      
      internal function frame608() : *
      {
         head.eyes.gotoAndPlay("evade");
      }
      
      internal function frame609() : *
      {
         Battle.shake("big");
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame616() : *
      {
         Text.speech(Text.mammoths[9]);
      }
      
      internal function frame637() : *
      {
         resetXY();
         move(0,25,null);
      }
      
      internal function frame650() : *
      {
         resetLayer();
      }
      
      internal function frame670() : *
      {
         k();
      }
      
      internal function frame685() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame692() : *
      {
         if(skin == 1 || skin == 3)
         {
            Text.speech(Text.mammoths[13]);
         }
      }
      
      internal function frame696() : *
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
      
      internal function frame721() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame728() : *
      {
         k();
      }
      
      internal function frame756() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame771() : *
      {
         flee();
      }
      
      internal function frame813() : *
      {
         Battle.finalHit = false;
         self.special1();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame821() : *
      {
         Battle.finalHit = false;
         self.special1();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame829() : *
      {
         self.special1();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame838() : *
      {
         Text.speech(Text.mammoths[12]);
      }
      
      internal function frame869() : *
      {
         k();
      }
      
      internal function frame875() : *
      {
         loops = 1;
      }
      
      internal function frame888() : *
      {
         body.cannon.gotoAndPlay("fire");
      }
      
      internal function frame890() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame901() : *
      {
         Text.speech(Text.mammoths[12]);
      }
      
      internal function frame910() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame932() : *
      {
         if(loops)
         {
            gotoAndPlay("loop");
            --loops;
         }
      }
      
      internal function frame946() : *
      {
         k();
      }
      
      internal function frame955() : *
      {
         loops = 2;
      }
      
      internal function frame972() : *
      {
         if(loops)
         {
            Battle.finalHit = false;
         }
         self.special3();
         makeMagic(EffectWater2,0,0);
      }
      
      internal function frame973() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.mammoths[10]);
         }
      }
      
      internal function frame974() : *
      {
         if(loops)
         {
            gotoAndPlay("loop2");
            --loops;
         }
      }
      
      internal function frame988() : *
      {
         k();
      }
      
      internal function frame998() : *
      {
         tween1 = new Tween(this,"x",null,this.x,this.x - 250,12);
      }
      
      internal function frame1011() : *
      {
         Battle.shake("big");
      }
      
      internal function frame1019() : *
      {
         Text.speech(Text.mammoths[3]);
      }
      
      internal function frame1043() : *
      {
         setXY();
         move(-100,1,null);
         swapLayer(true);
      }
      
      internal function frame1052() : *
      {
         Battle.shake("big");
         self.special4();
      }
      
      internal function frame1071() : *
      {
         resetXY();
         move(0,25,null);
      }
      
      internal function frame1085() : *
      {
         resetLayer();
      }
      
      internal function frame1105() : *
      {
         k();
      }
   }
}

