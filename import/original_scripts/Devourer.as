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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15930")]
   public dynamic class Devourer extends FoeMC
   {
      public function Devourer()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,4,this.frame5,29,this.frame30,90,this.frame91,92,this.frame93,139,this.frame140,183,this.frame184,185,this.frame186,237,this.frame238,238,this.frame239,241,this.frame242,254,this.frame255,256,this.frame257,262,this.frame263,263,this.frame264,264,this.frame265,272,this.frame273,284,this.frame285,286,this.frame287,292,this.frame293,293,this.frame294,294,this.frame295,304,this.frame305,318,this.frame319,320,this.frame321,326,this.frame327,327,this.frame328,328,this.frame329,337,this.frame338,352,this.frame353,365,this.frame366,385,this.frame386,426,this.frame427,450,this.frame451,452,this.frame453,471,this.frame472,488,this.frame489,506,this.frame507,544,this.frame545,553,this.frame554,558,this.frame559,562,this.frame563,607,this.frame608,608,this.frame609,642,this.frame643,643,this.frame644,674,this.frame675,675,this.frame676,685,this.frame686,695,this.frame696,696,this.frame697,698,this.frame699,702,this.frame703,707,this.frame708,708,this.frame709,711,this.frame712,713,this.frame714,715,this.frame716,717,this.frame718,718,this.frame719,721,this.frame722,723,this.frame724,728,this.frame729,730,this.frame731,733,this.frame734,774,this.frame775,775,this.frame776,787,this.frame788,799,this.frame800,800,this.frame801,801,this.frame802,805,this.frame806,807,this.frame808,810,this.frame811,816,this.frame817,825,this.frame826,828,this.frame829,837,this.frame838,841,this.frame842,856,this.frame857,862,this.frame863,878,this.frame879,931,this.frame932,942,this.frame943,978,this.frame979,1002,this.frame1003,1006,this.frame1007,1007,this.frame1008,1029,this.frame1030,1044,this.frame1045,1050,this.frame1051,1056,this.frame1057,1059,this.frame1060,1103,this.frame1104,1133,this.frame1134,1134,this.frame1135,1160,this.frame1161,1162,this.frame1163,1189,this.frame1190,1201,this.frame1202,1245,this.frame1246,1246,this.frame1247,1268,this.frame1269,1283,this.frame1284,1289,this.frame1290,1296,this.frame1297,1315,this.frame1316);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
            this.x -= 80;
            this.y += 90;
         }
      }
      
      internal function frame5() : *
      {
         if(isSummon)
         {
            BGM.play(BGM.SILENCE);
         }
      }
      
      internal function frame30() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.devourer[1],{"skin":1});
         }
      }
      
      internal function frame91() : *
      {
         if(isSummon)
         {
            BGM.play(BGM.FINAL_BATTLE,true);
         }
      }
      
      internal function frame93() : *
      {
         BGM.play(BGM.FINAL_BATTLE);
      }
      
      internal function frame140() : *
      {
         if(isSummon)
         {
            Text.speech(Text.devourer[33],{"skin":1});
         }
      }
      
      internal function frame184() : *
      {
         k();
      }
      
      internal function frame186() : *
      {
         if(!isSummon)
         {
            stand();
         }
      }
      
      internal function frame238() : *
      {
         if(isSummon)
         {
            k();
         }
      }
      
      internal function frame239() : *
      {
         ks();
      }
      
      internal function frame242() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame255() : *
      {
         if(skin >= 2)
         {
            Text.speech(Text.devourer[24]);
         }
         if(skin >= 3)
         {
            Text.speech(Text.devourer[25]);
         }
         if(skin >= 4)
         {
            Text.speech(Text.devourer[26]);
         }
      }
      
      internal function frame257() : *
      {
         if(self.textCount >= 1 && self.getHpPercent() < 90)
         {
            Text.speech(Text.devourer[15]);
         }
         if(self.textCount >= 2 && self.getHpPercent() < 80)
         {
            Text.speech(Text.devourer[16]);
         }
         if(self.textCount >= 7 && self.getHpPercent() < 35)
         {
            Text.speech(Text.devourer[21]);
         }
         if(self.textCount >= 8 && self.getHpPercent() < 20 && Boolean(Flags.deleting))
         {
            Text.speech(Text.devourer[31]);
         }
      }
      
      internal function frame263() : *
      {
         k();
      }
      
      internal function frame264() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame265() : *
      {
         head.gotoAndPlay("hit");
      }
      
      internal function frame273() : *
      {
         if(self.getHpPercent() < 40)
         {
            Text.speech(Text.devourer[22]);
         }
      }
      
      internal function frame285() : *
      {
         if(skin >= 2)
         {
            Text.speech(Text.devourer[24]);
         }
         if(skin >= 3)
         {
            Text.speech(Text.devourer[25]);
         }
         if(skin >= 4)
         {
            Text.speech(Text.devourer[26]);
         }
      }
      
      internal function frame287() : *
      {
         if(self.textCount >= 1 && self.getHpPercent() < 90)
         {
            Text.speech(Text.devourer[15]);
         }
         if(self.textCount >= 2 && self.getHpPercent() < 80)
         {
            Text.speech(Text.devourer[16]);
         }
         if(self.textCount >= 7 && self.getHpPercent() < 35)
         {
            Text.speech(Text.devourer[21]);
         }
         if(self.textCount >= 8 && self.getHpPercent() < 20 && Boolean(Flags.deleting))
         {
            Text.speech(Text.devourer[31]);
         }
      }
      
      internal function frame293() : *
      {
         k();
      }
      
      internal function frame294() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame295() : *
      {
         head.gotoAndPlay("hit");
      }
      
      internal function frame305() : *
      {
         Text.speech(Text.devourer[22]);
      }
      
      internal function frame319() : *
      {
         if(skin >= 2)
         {
            Text.speech(Text.devourer[24]);
         }
         if(skin >= 3)
         {
            Text.speech(Text.devourer[25]);
         }
         if(skin >= 4)
         {
            Text.speech(Text.devourer[26]);
         }
      }
      
      internal function frame321() : *
      {
         if(self.textCount >= 1 && self.getHpPercent() < 90)
         {
            Text.speech(Text.devourer[15]);
         }
         if(self.textCount >= 2 && self.getHpPercent() < 80)
         {
            Text.speech(Text.devourer[16]);
         }
         if(self.textCount >= 7 && self.getHpPercent() < 35)
         {
            Text.speech(Text.devourer[21]);
         }
         if(self.textCount >= 8 && self.getHpPercent() < 20 && Boolean(Flags.deleting))
         {
            Text.speech(Text.devourer[31]);
         }
      }
      
      internal function frame327() : *
      {
         k();
      }
      
      internal function frame328() : *
      {
         ++skin;
         head.gotoAndPlay("hit");
         Battle.whiteFlash();
      }
      
      internal function frame329() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame338() : *
      {
         self.killHelpers();
      }
      
      internal function frame353() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame366() : *
      {
         head.gotoAndStop(2);
      }
      
      internal function frame386() : *
      {
         head.gotoAndPlay("front");
      }
      
      internal function frame427() : *
      {
         Battle.shake();
      }
      
      internal function frame451() : *
      {
         Battle.shake();
      }
      
      internal function frame453() : *
      {
         head.gotoAndStop(2);
      }
      
      internal function frame472() : *
      {
         Battle.shake();
      }
      
      internal function frame489() : *
      {
         Battle.shake();
      }
      
      internal function frame507() : *
      {
         if(Battle.stage.checkBusy() > 1)
         {
            gotoAndPlay("die3");
         }
      }
      
      internal function frame545() : *
      {
         Battle.shake();
      }
      
      internal function frame554() : *
      {
         Battle.shake();
      }
      
      internal function frame559() : *
      {
         Battle.shake("big");
      }
      
      internal function frame563() : *
      {
         self.castSpell("DevExplosion");
      }
      
      internal function frame608() : *
      {
         self.castSpell("ReturnEarth");
      }
      
      internal function frame609() : *
      {
         busy = false;
         stop();
      }
      
      internal function frame643() : *
      {
         k();
      }
      
      internal function frame644() : *
      {
         playSound("heal2");
      }
      
      internal function frame675() : *
      {
         k();
      }
      
      internal function frame676() : *
      {
         head.gotoAndStop(2);
      }
      
      internal function frame686() : *
      {
         Battle.shake("small");
      }
      
      internal function frame696() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame697() : *
      {
         head.gotoAndPlay("hit");
      }
      
      internal function frame699() : *
      {
         Battle.shake("small");
      }
      
      internal function frame703() : *
      {
         Battle.shake("small");
      }
      
      internal function frame708() : *
      {
         Battle.shake("small");
      }
      
      internal function frame709() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame712() : *
      {
         Battle.shake("small");
      }
      
      internal function frame714() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame716() : *
      {
         Text.speech(Text.devourer[18]);
         Text.speech(Text.devourer[27]);
      }
      
      internal function frame718() : *
      {
         Battle.shake("small");
      }
      
      internal function frame719() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame722() : *
      {
         Battle.shake("small");
      }
      
      internal function frame724() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame729() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame731() : *
      {
         Battle.shake("small");
      }
      
      internal function frame734() : *
      {
         self.special1();
      }
      
      internal function frame775() : *
      {
         k();
      }
      
      internal function frame776() : *
      {
         head.gotoAndStop(2);
      }
      
      internal function frame788() : *
      {
         Battle.shake("small");
      }
      
      internal function frame800() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame801() : *
      {
         head.gotoAndPlay("hit");
      }
      
      internal function frame802() : *
      {
         Battle.shake("big");
      }
      
      internal function frame806() : *
      {
         Battle.finalHit = false;
         self.special2(1);
      }
      
      internal function frame808() : *
      {
         Text.speech(Text.devourer[18]);
         Text.speech(Text.devourer[27]);
      }
      
      internal function frame811() : *
      {
         Battle.shake("big");
      }
      
      internal function frame817() : *
      {
         Battle.finalHit = false;
         self.special2(2);
      }
      
      internal function frame826() : *
      {
         Battle.shake("big");
      }
      
      internal function frame829() : *
      {
         Battle.finalHit = false;
         self.special2(3);
      }
      
      internal function frame838() : *
      {
         Battle.shake("big");
      }
      
      internal function frame842() : *
      {
         Battle.finalHit = false;
         self.special2(4);
      }
      
      internal function frame857() : *
      {
         Battle.shake("small");
      }
      
      internal function frame863() : *
      {
         self.special2(5);
      }
      
      internal function frame879() : *
      {
         k();
      }
      
      internal function frame932() : *
      {
         self.magic1();
      }
      
      internal function frame943() : *
      {
         k();
      }
      
      internal function frame979() : *
      {
         self.magic2();
      }
      
      internal function frame1003() : *
      {
         Text.speech(Text.devourer[23]);
      }
      
      internal function frame1007() : *
      {
         k();
      }
      
      internal function frame1008() : *
      {
         head.gotoAndStop(2);
      }
      
      internal function frame1030() : *
      {
         Battle.shake();
      }
      
      internal function frame1045() : *
      {
         Battle.shake();
      }
      
      internal function frame1051() : *
      {
         Battle.shake("big");
      }
      
      internal function frame1057() : *
      {
         makeMagic(WhiteFlash,0,0);
         Battle.shake("big");
      }
      
      internal function frame1060() : *
      {
         if(isSummon)
         {
            Summons.BossDevourer.effect();
         }
         else
         {
            self.special3b();
         }
      }
      
      internal function frame1104() : *
      {
         if(isSummon)
         {
            Summons.BossDevourer.effect2();
         }
         else
         {
            self.special3();
         }
      }
      
      internal function frame1134() : *
      {
         k();
      }
      
      internal function frame1135() : *
      {
         head.gotoAndStop(2);
      }
      
      internal function frame1161() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1163() : *
      {
         Battle.finalHit = false;
         self.attack1(1);
      }
      
      internal function frame1190() : *
      {
         Battle.finalHit = false;
         self.attack1(2);
         Battle.shake("small");
      }
      
      internal function frame1202() : *
      {
         self.attack1(3);
         Battle.shake("small");
      }
      
      internal function frame1246() : *
      {
         k();
      }
      
      internal function frame1247() : *
      {
         head.gotoAndStop(2);
      }
      
      internal function frame1269() : *
      {
         Battle.shake();
      }
      
      internal function frame1284() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.devourer[28]);
         }
         Battle.shake();
      }
      
      internal function frame1290() : *
      {
         Battle.shake();
      }
      
      internal function frame1297() : *
      {
         if(!isSummon)
         {
            self.special4();
         }
      }
      
      internal function frame1316() : *
      {
         k();
      }
   }
}

