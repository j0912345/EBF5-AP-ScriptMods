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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13939")]
   public dynamic class Monolith extends FoeMC
   {
      public function Monolith()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,73,this.frame74,80,this.frame81,84,this.frame85,89,this.frame90,91,this.frame92,93,this.frame94,100,this.frame101,113,this.frame114,117,this.frame118,125,this.frame126,129,this.frame130,135,this.frame136,143,this.frame144,149,this.frame150,165,this.frame166,167,this.frame168,169,this.frame170,184,this.frame185,185,this.frame186,206,this.frame207,209,this.frame210,220,this.frame221,223,this.frame224,224,this.frame225,241,this.frame242,243,this.frame244,262,this.frame263,267,this.frame268,295,this.frame296,305,this.frame306,342,this.frame343,344,this.frame345,345,this.frame346,350,this.frame351,359,this.frame360,373,this.frame374,374,this.frame375,375,this.frame376,381,this.frame382,382,this.frame383,383,this.frame384,384,this.frame385,419,this.frame420,445,this.frame446,463,this.frame464,500,this.frame501,502,this.frame503,504,this.frame505,508,this.frame509,517,this.frame518,531,this.frame532,532,this.frame533,533,this.frame534,540,this.frame541,541,this.frame542,542,this.frame543,577,this.frame578,578,this.frame579,589,this.frame590,590,this.frame591,591,this.frame592,592,this.frame593,598,this.frame599,617,this.frame618,653,this.frame654,678,this.frame679,707,this.frame708,730,this.frame731,758,this.frame759,763,this.frame764,770,this.frame771,772,this.frame773,782,this.frame783,790,this.frame791,808,this.frame809,818,this.frame819,819,this.frame820,820,this.frame821,832,this.frame833,839,this.frame840,857,this.frame858,860,this.frame861,892,this.frame893,897,this.frame898,899,this.frame900,902,this.frame903,914,this.frame915);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame4() : *
      {
         randomDelay(30);
      }
      
      internal function frame74() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame81() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame85() : *
      {
         Battle.shake("small");
      }
      
      internal function frame90() : *
      {
         Battle.shake("small");
      }
      
      internal function frame92() : *
      {
         if(isSummon && skin == 1)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame94() : *
      {
         Battle.shake("small");
      }
      
      internal function frame101() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame114() : *
      {
         if(!isSummon)
         {
            if(skin == 3)
            {
               Text.speech(Text.monoliths[1]);
            }
         }
         if(!isSummon)
         {
            if(skin == 2)
            {
               Text.speech(Text.monoliths[2]);
            }
         }
      }
      
      internal function frame118() : *
      {
         k();
      }
      
      internal function frame126() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame130() : *
      {
         Battle.shake("small");
      }
      
      internal function frame136() : *
      {
         Battle.shake("small");
      }
      
      internal function frame144() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame150() : *
      {
         if(isSummon && skin == 1)
         {
            Battle.showPlayers();
         }
         Battle.shake("tiny");
      }
      
      internal function frame166() : *
      {
         flee();
      }
      
      internal function frame168() : *
      {
         stop();
         stand();
      }
      
      internal function frame170() : *
      {
         playSound("" + (398 + skin));
      }
      
      internal function frame185() : *
      {
         k();
      }
      
      internal function frame186() : *
      {
         playSound("" + (401 + skin));
      }
      
      internal function frame207() : *
      {
         k();
      }
      
      internal function frame210() : *
      {
         playSound("393");
      }
      
      internal function frame221() : *
      {
         if(Battle.selectedTarget == self && Battle.menu.selectedSkill != Spells.capture)
         {
            Text.speech(Text.monoliths[8]);
            if(skin == 1)
            {
               Text.speech(Text.monoliths[9]);
            }
         }
      }
      
      internal function frame224() : *
      {
         k();
      }
      
      internal function frame225() : *
      {
         playSound("heal2");
      }
      
      internal function frame242() : *
      {
         k();
      }
      
      internal function frame244() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame263() : *
      {
         self.magic1();
      }
      
      internal function frame268() : *
      {
         k();
      }
      
      internal function frame296() : *
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
      
      internal function frame306() : *
      {
         k();
      }
      
      internal function frame343() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame345() : *
      {
         Battle.shake("small");
      }
      
      internal function frame346() : *
      {
         if(!isSummon)
         {
            self.special2();
         }
      }
      
      internal function frame351() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.monoliths[3]);
         }
      }
      
      internal function frame360() : *
      {
         k();
      }
      
      internal function frame374() : *
      {
         Text.speech(Text.monoliths[7]);
         if(!isSummon)
         {
            Text.speech(Text.monoliths[12]);
         }
      }
      
      internal function frame375() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame376() : *
      {
         Battle.shake("big");
      }
      
      internal function frame382() : *
      {
         Text.speech(Text.miscSkills[14]);
      }
      
      internal function frame383() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame384() : *
      {
         self.special3();
      }
      
      internal function frame385() : *
      {
         Battle.shake("small");
      }
      
      internal function frame420() : *
      {
         k();
      }
      
      internal function frame446() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame464() : *
      {
         k();
      }
      
      internal function frame501() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame503() : *
      {
         Battle.shake("small");
      }
      
      internal function frame505() : *
      {
         if(!isSummon)
         {
            self.special5();
         }
      }
      
      internal function frame509() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.monoliths[3]);
         }
      }
      
      internal function frame518() : *
      {
         k();
      }
      
      internal function frame532() : *
      {
         Text.speech(Text.monoliths[7]);
         if(!isSummon)
         {
            Text.speech(Text.monoliths[12]);
         }
      }
      
      internal function frame533() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame534() : *
      {
         Battle.shake("big");
      }
      
      internal function frame541() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame542() : *
      {
         self.special6();
      }
      
      internal function frame543() : *
      {
         Battle.shake("small");
      }
      
      internal function frame578() : *
      {
         k();
      }
      
      internal function frame579() : *
      {
         Battle.shake("small");
         playSound("394");
         playSound("" + (401 + skin));
      }
      
      internal function frame590() : *
      {
         playSound("395");
      }
      
      internal function frame591() : *
      {
         playSound("396");
      }
      
      internal function frame592() : *
      {
         Battle.shake("small");
         playSound("397");
      }
      
      internal function frame593() : *
      {
         playSound("398");
      }
      
      internal function frame599() : *
      {
         if(skin != 1)
         {
            Text.speech(Text.monoliths[10]);
         }
         if(skin == 1)
         {
            Text.speech(Text.monoliths[11]);
         }
      }
      
      internal function frame618() : *
      {
         randomDelay(20);
      }
      
      internal function frame654() : *
      {
         dropItems();
      }
      
      internal function frame679() : *
      {
         dead();
      }
      
      internal function frame708() : *
      {
         self.special7();
      }
      
      internal function frame731() : *
      {
         k();
      }
      
      internal function frame759() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.monoliths[5]);
         }
         if(!isSummon)
         {
            Text.speech(Text.monoliths[6]);
         }
         Text.speech(Text.monoliths[15]);
      }
      
      internal function frame764() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame771() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame773() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special9();
         }
      }
      
      internal function frame783() : *
      {
         k();
      }
      
      internal function frame791() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame809() : *
      {
         setXY();
         swapLayer();
         move(20,1,null);
      }
      
      internal function frame819() : *
      {
         Text.speech(Text.monoliths[13]);
      }
      
      internal function frame820() : *
      {
         Battle.shake("small");
      }
      
      internal function frame821() : *
      {
         self.attack1();
      }
      
      internal function frame833() : *
      {
         resetXY();
         move(0,18,Regular.easeInOut);
      }
      
      internal function frame840() : *
      {
         resetLayer();
      }
      
      internal function frame858() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame861() : *
      {
         k();
      }
      
      internal function frame893() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.monoliths[4]);
         }
      }
      
      internal function frame898() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame900() : *
      {
         Battle.shake("small");
      }
      
      internal function frame903() : *
      {
         if(!isSummon)
         {
            self.special8();
         }
      }
      
      internal function frame915() : *
      {
         k();
      }
   }
}

