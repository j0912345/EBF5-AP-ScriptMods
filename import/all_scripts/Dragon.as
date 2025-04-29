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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14892")]
   public dynamic class Dragon extends FoeMC
   {
      public function Dragon()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,59,this.frame60,85,this.frame86,87,this.frame88,88,this.frame89,100,this.frame101,102,this.frame103,104,this.frame105,153,this.frame154,176,this.frame177,186,this.frame187,187,this.frame188,208,this.frame209,209,this.frame210,210,this.frame211,234,this.frame235,235,this.frame236,236,this.frame237,250,this.frame251,253,this.frame254,256,this.frame257,274,this.frame275,311,this.frame312,312,this.frame313,332,this.frame333,353,this.frame354,354,this.frame355,385,this.frame386,393,this.frame394,406,this.frame407,407,this.frame408,408,this.frame409,427,this.frame428,435,this.frame436,448,this.frame449,449,this.frame450,451,this.frame452,472,this.frame473,515,this.frame516,530,this.frame531,535,this.frame536,557,this.frame558,570,this.frame571,590,this.frame591,618,this.frame619,625,this.frame626,632,this.frame633,645,this.frame646,646,this.frame647,648,this.frame649,671,this.frame672,695,this.frame696,701,this.frame702,719,this.frame720,729,this.frame730,763,this.frame764,768,this.frame769,776,this.frame777,790,this.frame791,791,this.frame792,800,this.frame801,832,this.frame833,836,this.frame837,840,this.frame841,852,this.frame853,869,this.frame870,874,this.frame875,889,this.frame890,913,this.frame914,914,this.frame915,915,this.frame916,939,this.frame940,940,this.frame941,951,this.frame952,957,this.frame958,958,this.frame959,968,this.frame969,972,this.frame973,997,this.frame998,1006,this.frame1007,1009,this.frame1010,1024,this.frame1025,1035,this.frame1036,1076,this.frame1077,1077,this.frame1078,1086,this.frame1087,1090,this.frame1091,1091,this.frame1092,1092,this.frame1093,1097,this.frame1098,1105,this.frame1106,1137,this.frame1138,1141,this.frame1142,1145,this.frame1146,1157,this.frame1158,1185,this.frame1186,1192,this.frame1193,1199,this.frame1200,1213,this.frame1214,1215,this.frame1216,1238,this.frame1239);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(30);
      }
      
      internal function frame60() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
            x -= 120;
         }
      }
      
      internal function frame86() : *
      {
         if(!isSummon)
         {
            if(skin == 3)
            {
               Text.speech(Text.dragons[2]);
            }
         }
         if(skin == 1)
         {
            Text.speech(Text.dragons[4]);
         }
         if(!isSummon)
         {
            if(skin == 4)
            {
               Text.speech(Text.dragons[10]);
            }
         }
      }
      
      internal function frame88() : *
      {
         k();
      }
      
      internal function frame89() : *
      {
         freezeSound();
      }
      
      internal function frame101() : *
      {
         Text.speech(Text.dragons[9]);
      }
      
      internal function frame103() : *
      {
         frozen();
      }
      
      internal function frame105() : *
      {
         stand();
      }
      
      internal function frame154() : *
      {
         ks();
      }
      
      internal function frame177() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame187() : *
      {
         flee();
      }
      
      internal function frame188() : *
      {
         playSound("303");
      }
      
      internal function frame209() : *
      {
         k();
      }
      
      internal function frame210() : *
      {
         head.eye.gotoAndPlay("hit");
         playSound("304");
      }
      
      internal function frame211() : *
      {
         playSound("" + (306 + skin));
      }
      
      internal function frame235() : *
      {
         k();
      }
      
      internal function frame236() : *
      {
         head.eye.gotoAndPlay("die");
         playSound("305");
      }
      
      internal function frame237() : *
      {
         playSound("" + (skin + 310));
      }
      
      internal function frame251() : *
      {
         playSound("306");
      }
      
      internal function frame254() : *
      {
         Battle.shake("small");
      }
      
      internal function frame257() : *
      {
         if(skin == 4)
         {
            Text.speech(Text.dragons[11]);
         }
         Text.speech(Text.dragons[13]);
         Text.speech(Text.dragons[14]);
      }
      
      internal function frame275() : *
      {
         randomDelay(15);
      }
      
      internal function frame312() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame313() : *
      {
         dropItems();
      }
      
      internal function frame333() : *
      {
         dead();
      }
      
      internal function frame354() : *
      {
         k();
      }
      
      internal function frame355() : *
      {
         playSound("heal2");
      }
      
      internal function frame386() : *
      {
         k();
      }
      
      internal function frame394() : *
      {
         setXY();
         move(-50,12,Regular.easeInOut);
      }
      
      internal function frame407() : *
      {
         Text.speech(Text.dragons[1]);
         if(!isSummon)
         {
            Text.speech(Text.dragons[6]);
         }
         if(!isSummon)
         {
            Text.speech(Text.dragons[12]);
         }
      }
      
      internal function frame408() : *
      {
         self.attack1();
      }
      
      internal function frame409() : *
      {
         resetXY();
         move(0,18,Regular.easeInOut);
      }
      
      internal function frame428() : *
      {
         k();
      }
      
      internal function frame436() : *
      {
         setXY();
         move(-20,16,Regular.easeInOut);
      }
      
      internal function frame449() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.dragons[1]);
         }
      }
      
      internal function frame450() : *
      {
         self.attack2();
      }
      
      internal function frame452() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame473() : *
      {
         k();
      }
      
      internal function frame516() : *
      {
         self.special2();
         makeMagic(EffectFire3,0,0,true);
      }
      
      internal function frame531() : *
      {
         k();
      }
      
      internal function frame536() : *
      {
         setXY();
         move(50,20,Regular.easeInOut);
      }
      
      internal function frame558() : *
      {
         self.special3();
         makeMagic(EffectFire3,0,0);
      }
      
      internal function frame571() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame591() : *
      {
         k();
      }
      
      internal function frame619() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame626() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.dragons[8]);
         }
         Battle.shake("small");
      }
      
      internal function frame633() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame646() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.monoliths[15]);
         }
      }
      
      internal function frame647() : *
      {
         self.special4();
         makeMagic(DragonFire,0,0);
      }
      
      internal function frame649() : *
      {
         Battle.shake("big");
      }
      
      internal function frame672() : *
      {
         k();
      }
      
      internal function frame696() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame702() : *
      {
         Battle.shake("tiny");
         if(isSummon)
         {
            Summons.currentSummon.effect3();
         }
      }
      
      internal function frame720() : *
      {
         if(!isSummon)
         {
            self.magic1();
         }
      }
      
      internal function frame730() : *
      {
         k();
      }
      
      internal function frame764() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame769() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.dragons[8]);
         }
         Battle.shake("small");
      }
      
      internal function frame777() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame791() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special7();
         }
         makeMagic(DragonLight,0,0);
      }
      
      internal function frame792() : *
      {
         Battle.shake("big");
      }
      
      internal function frame801() : *
      {
         k();
      }
      
      internal function frame833() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame837() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame841() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special1();
         }
         makeMagic(EffectPoison2,0,0,true);
      }
      
      internal function frame853() : *
      {
         k();
      }
      
      internal function frame870() : *
      {
         self.attack3();
      }
      
      internal function frame875() : *
      {
         self.attack5();
      }
      
      internal function frame890() : *
      {
         k();
      }
      
      internal function frame914() : *
      {
         Text.speech(Text.dragons[5]);
      }
      
      internal function frame915() : *
      {
         Battle.shake("big");
      }
      
      internal function frame916() : *
      {
         self.attack4();
         makeMagic(EffectEarth2,0,0,true);
      }
      
      internal function frame940() : *
      {
         k();
      }
      
      internal function frame941() : *
      {
         loops = 1;
      }
      
      internal function frame952() : *
      {
         setXY();
         move(-50,6,Regular.easeIn);
      }
      
      internal function frame958() : *
      {
         if(loops)
         {
            Battle.finalHit = false;
         }
         self.attack5();
         if(skin == 3)
         {
            makeMagic(EffectStab,0,0);
         }
      }
      
      internal function frame959() : *
      {
         resetXY();
         move(0,12,Regular.easeInOut);
      }
      
      internal function frame969() : *
      {
         if(loops)
         {
            --loops;
            gotoAndPlay("loop1");
         }
      }
      
      internal function frame973() : *
      {
         k();
      }
      
      internal function frame998() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1007() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special5();
         }
         makeMagic(EffectWind,0,0,true);
      }
      
      internal function frame1010() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect3();
         }
      }
      
      internal function frame1025() : *
      {
         k();
      }
      
      internal function frame1036() : *
      {
         self.special6();
      }
      
      internal function frame1077() : *
      {
         k();
      }
      
      internal function frame1078() : *
      {
         loops = 3;
      }
      
      internal function frame1087() : *
      {
         setXY();
         move(-50,4,Regular.easeIn);
      }
      
      internal function frame1091() : *
      {
         if(loops)
         {
            Battle.finalHit = false;
         }
         self.attack6();
         if(skin == 3)
         {
            makeMagic(EffectStab,0,0);
         }
      }
      
      internal function frame1092() : *
      {
         resetXY();
         move(0,12,Regular.easeInOut);
      }
      
      internal function frame1093() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.dragons[3]);
         }
      }
      
      internal function frame1098() : *
      {
         if(loops)
         {
            --loops;
            gotoAndPlay("loop2");
         }
      }
      
      internal function frame1106() : *
      {
         k();
      }
      
      internal function frame1138() : *
      {
         Battle.finalHit = false;
         self.special8();
         makeMagic(EffectWater3,0,0);
      }
      
      internal function frame1142() : *
      {
         Battle.finalHit = false;
         self.special8();
         makeMagic(EffectWater3,0,0);
      }
      
      internal function frame1146() : *
      {
         self.special8();
         makeMagic(EffectWater3,0,0);
      }
      
      internal function frame1158() : *
      {
         k();
      }
      
      internal function frame1186() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1193() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.dragons[7]);
         }
         Battle.shake("small");
      }
      
      internal function frame1200() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1214() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special9();
         }
         makeMagic(DragonWater,0,0);
      }
      
      internal function frame1216() : *
      {
         Battle.shake("big");
      }
      
      internal function frame1239() : *
      {
         k();
      }
   }
}

