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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14320")]
   public dynamic class GolemBoss extends FoeMC
   {
      public function GolemBoss()
      {
         super();
         addFrameScript(0,this.frame1,48,this.frame49,62,this.frame63,67,this.frame68,74,this.frame75,82,this.frame83,86,this.frame87,89,this.frame90,95,this.frame96,101,this.frame102,109,this.frame110,117,this.frame118,123,this.frame124,134,this.frame135,139,this.frame140,143,this.frame144,146,this.frame147,147,this.frame148,151,this.frame152,185,this.frame186,194,this.frame195,199,this.frame200,205,this.frame206,206,this.frame207,211,this.frame212,217,this.frame218,224,this.frame225,232,this.frame233,238,this.frame239,247,this.frame248,252,this.frame253,254,this.frame255,259,this.frame260,261,this.frame262,263,this.frame264,270,this.frame271,273,this.frame274,278,this.frame279,284,this.frame285,290,this.frame291,298,this.frame299,306,this.frame307,312,this.frame313,315,this.frame316,318,this.frame319,325,this.frame326,332,this.frame333,338,this.frame339,339,this.frame340,341,this.frame342,402,this.frame403,404,this.frame405,435,this.frame436,437,this.frame438,456,this.frame457,457,this.frame458,460,this.frame461,478,this.frame479,479,this.frame480,481,this.frame482,504,this.frame505,505,this.frame506,506,this.frame507,508,this.frame509,606,this.frame607,610,this.frame611,617,this.frame618,621,this.frame622,627,this.frame628,675,this.frame676,693,this.frame694,702,this.frame703,706,this.frame707,713,this.frame714,717,this.frame718,723,this.frame724,771,this.frame772,788,this.frame789,798,this.frame799,801,this.frame802,816,this.frame817,833,this.frame834,850,this.frame851,855,this.frame856,860,this.frame861,865,this.frame866,875,this.frame876,891,this.frame892,908,this.frame909,930,this.frame931,934,this.frame935,949,this.frame950,967,this.frame968,968,this.frame969,988,this.frame989,1014,this.frame1015,1023,this.frame1024,1041,this.frame1042,1060,this.frame1061,1063,this.frame1064,1082,this.frame1083,1085,this.frame1086,1088,this.frame1089,1091,this.frame1092,1094,this.frame1095,1097,this.frame1098,1106,this.frame1107,1114,this.frame1115,1128,this.frame1129,1132,this.frame1133,1139,this.frame1140,1149,this.frame1150,1165,this.frame1166,1166,this.frame1167,1174,this.frame1175,1179,this.frame1180,1184,this.frame1185,1188,this.frame1189,1195,this.frame1196,1196,this.frame1197,1201,this.frame1202,1212,this.frame1213,1213,this.frame1214,1215,this.frame1216,1216,this.frame1217,1218,this.frame1219,1228,this.frame1229,1236,this.frame1237,1251,this.frame1252,1257,this.frame1258,1260,this.frame1261,1266,this.frame1267,1287,this.frame1288,1321,this.frame1322,1324,this.frame1325,1328,this.frame1329,1331,this.frame1332,1334,this.frame1335,1337,this.frame1338,1363,this.frame1364,1385,this.frame1386,1389,this.frame1390,1402,this.frame1403,1422,this.frame1423,1430,this.frame1431,1444,this.frame1445,1448,this.frame1449,1455,this.frame1456,1466,this.frame1467,1481,this.frame1482,1500,this.frame1501,1503,this.frame1504,1516,this.frame1517,1522,this.frame1523,1546,this.frame1547,1567,this.frame1568,1592,this.frame1593,1602,this.frame1603,1620,this.frame1621,1654,this.frame1655,1657,this.frame1658,1661,this.frame1662,1664,this.frame1665,1667,this.frame1668,1670,this.frame1671,1696,this.frame1697,1697,this.frame1698,1712,this.frame1713,1729,this.frame1730,1746,this.frame1747,1751,this.frame1752,1756,this.frame1757,1771,this.frame1772,1787,this.frame1788,1804,this.frame1805,1812,this.frame1813,1827,this.frame1828,1833,this.frame1834,1840,this.frame1841,1863,this.frame1864);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame49() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame63() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame68() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame75() : *
      {
         Battle.shake("small");
      }
      
      internal function frame83() : *
      {
         Battle.shake("small");
      }
      
      internal function frame87() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame90() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame96() : *
      {
         Battle.shake("small");
      }
      
      internal function frame102() : *
      {
         Battle.shake("small");
      }
      
      internal function frame110() : *
      {
         Battle.shake("big");
      }
      
      internal function frame118() : *
      {
         Battle.shake("small");
      }
      
      internal function frame124() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame135() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame140() : *
      {
         Battle.shake("small");
      }
      
      internal function frame144() : *
      {
         if(!(self is Summon) && SaveData.questNo == 1 && Foes.isScanned(self) && skin > 3)
         {
            Text.speech(Text.poseidon[14],{"skin":skin});
         }
      }
      
      internal function frame147() : *
      {
         if(skin >= 4)
         {
            Text.speech(Text.poseidon[1],{"skin":skin});
         }
         if(skin < 4)
         {
            Text.speech(Text.vulcan[1],{"skin":skin});
         }
      }
      
      internal function frame148() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame152() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame186() : *
      {
         k();
      }
      
      internal function frame195() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame200() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame206() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame207() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame212() : *
      {
         Battle.shake("small");
      }
      
      internal function frame218() : *
      {
         Battle.shake("small");
      }
      
      internal function frame225() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame233() : *
      {
         Battle.shake("small");
      }
      
      internal function frame239() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame248() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame253() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame255() : *
      {
         if(skin >= 4 && isSummon && Flags.battleEvent == Flags.FIRE_GOLEM_BATTLE)
         {
            Text.speech(Text.vulcan[8],{"skin":(Battle.foes[1] as Foe).graphic.skin});
         }
      }
      
      internal function frame260() : *
      {
         if(isSummon && skin >= 4)
         {
            Text.speech(Text.poseidon[8]);
         }
         if(isSummon && skin < 4)
         {
            Text.speech(Text.vulcan[9]);
         }
      }
      
      internal function frame262() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame264() : *
      {
         k();
      }
      
      internal function frame271() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame274() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame279() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame285() : *
      {
         Battle.shake("small");
      }
      
      internal function frame291() : *
      {
         Battle.shake("big");
      }
      
      internal function frame299() : *
      {
         Battle.shake("small");
      }
      
      internal function frame307() : *
      {
         Battle.shake("small");
      }
      
      internal function frame313() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame316() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame319() : *
      {
         Battle.shake("small");
      }
      
      internal function frame326() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame333() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame339() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame340() : *
      {
         flee();
      }
      
      internal function frame342() : *
      {
         stand();
      }
      
      internal function frame403() : *
      {
         ks();
      }
      
      internal function frame405() : *
      {
         playSound("heal2");
      }
      
      internal function frame436() : *
      {
         k();
      }
      
      internal function frame438() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame457() : *
      {
         k();
      }
      
      internal function frame458() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame461() : *
      {
         if(skin >= 4)
         {
            Text.speech(Text.poseidon[9]);
         }
         if(skin >= 4)
         {
            Text.speech(Text.poseidon[10]);
         }
         if(skin >= 5)
         {
            Text.speech(Text.poseidon[11]);
         }
         if(skin >= 5)
         {
            Text.speech(Text.poseidon[12]);
         }
         if(skin >= 6)
         {
            Text.speech(Text.poseidon[13]);
         }
         if(skin < 4 && Flags.GOLEM_DEFEATED.quantity == 2)
         {
            Text.speech(Text.vulcan[10]);
         }
         if(skin < 4 && Flags.GOLEM_DEFEATED.quantity == 1)
         {
            Text.speech(Text.vulcan[11]);
         }
         if(skin < 4)
         {
            Text.speech(Text.vulcan[12]);
         }
         if(skin < 4 && skin > 1)
         {
            Text.speech(Text.vulcan[13]);
         }
         if(skin < 4 && skin > 2)
         {
            Text.speech(Text.vulcan[14]);
         }
      }
      
      internal function frame479() : *
      {
         k();
      }
      
      internal function frame480() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame482() : *
      {
         Battle.shake("small");
      }
      
      internal function frame505() : *
      {
         k();
      }
      
      internal function frame506() : *
      {
         Battle.whiteFlash();
      }
      
      internal function frame507() : *
      {
         Battle.shake("small");
      }
      
      internal function frame509() : *
      {
         if(skin >= 4)
         {
            Text.speech(Text.poseidon[7],{"skin":skin});
         }
         if(skin < 4)
         {
            Text.speech(Text.vulcan[7],{"skin":skin});
         }
      }
      
      internal function frame607() : *
      {
         if(skin > 3)
         {
            gotoAndPlay("die2");
         }
      }
      
      internal function frame611() : *
      {
         Battle.shake("big");
      }
      
      internal function frame618() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame622() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame628() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame676() : *
      {
         dropItems();
         Battle.shake("small");
      }
      
      internal function frame694() : *
      {
         Medals.unlock(Medals.fryyoufools);
         Flags.SUPER_GOLEM_DEFEATED.quantity = 1;
         Battle.bossDefeated();
      }
      
      internal function frame703() : *
      {
         dead();
      }
      
      internal function frame707() : *
      {
         Battle.shake("big");
      }
      
      internal function frame714() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame718() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame724() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame772() : *
      {
         dropItems();
         Battle.shake("small");
      }
      
      internal function frame789() : *
      {
         Medals.unlock(Medals.forgottenMyths);
         Flags.GOLEM_DEFEATED.quantity = 1;
         Battle.bossDefeated();
      }
      
      internal function frame799() : *
      {
         dead();
      }
      
      internal function frame802() : *
      {
         setXY();
         move(80,30,Regular.easeInOut);
      }
      
      internal function frame817() : *
      {
         swapLayer();
         Battle.shake("tiny");
      }
      
      internal function frame834() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame851() : *
      {
         Battle.finalHit = false;
         self.special2();
         makeMagic(EffectFire,0,0);
      }
      
      internal function frame856() : *
      {
         Battle.finalHit = false;
         self.special2();
         makeMagic(EffectFire,0,0);
      }
      
      internal function frame861() : *
      {
         Battle.finalHit = false;
         self.special2();
         makeMagic(EffectFire,0,0);
      }
      
      internal function frame866() : *
      {
         self.special2();
         makeMagic(EffectFire,0,0);
      }
      
      internal function frame876() : *
      {
         resetXY();
         move(0,30,Regular.easeInOut);
      }
      
      internal function frame892() : *
      {
         resetLayer();
         Battle.shake("tiny");
      }
      
      internal function frame909() : *
      {
         k();
      }
      
      internal function frame931() : *
      {
         Battle.shake("small");
      }
      
      internal function frame935() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame950() : *
      {
         self.special1();
      }
      
      internal function frame968() : *
      {
         k();
      }
      
      internal function frame969() : *
      {
         if(skin > 3)
         {
            gotoAndPlay("defend2");
         }
      }
      
      internal function frame989() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1015() : *
      {
         self.defend1();
      }
      
      internal function frame1024() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1042() : *
      {
         k();
      }
      
      internal function frame1061() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1064() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1083() : *
      {
         Battle.finalHit = false;
         self.special3();
         makeMagic(EffectFire,0,0);
      }
      
      internal function frame1086() : *
      {
         Battle.finalHit = false;
         self.special3();
         makeMagic(EffectFire,0,0);
      }
      
      internal function frame1089() : *
      {
         Battle.finalHit = false;
         self.special3();
         makeMagic(EffectFire,0,0);
      }
      
      internal function frame1092() : *
      {
         Battle.finalHit = false;
         self.special3();
         makeMagic(EffectFire,0,0);
      }
      
      internal function frame1095() : *
      {
         Battle.finalHit = false;
         self.special3();
         makeMagic(EffectFire,0,0);
      }
      
      internal function frame1098() : *
      {
         self.special3();
         makeMagic(EffectFire,0,0);
      }
      
      internal function frame1107() : *
      {
         k();
      }
      
      internal function frame1115() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1129() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1133() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1140() : *
      {
      }
      
      internal function frame1150() : *
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
      
      internal function frame1166() : *
      {
         k();
      }
      
      internal function frame1167() : *
      {
         Y = y;
         X = -300;
         move(0,42,Regular.easeIn);
      }
      
      internal function frame1175() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1180() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1185() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1189() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1196() : *
      {
         Battle.shake("big");
      }
      
      internal function frame1197() : *
      {
         self.attack1();
         makeMagic(EffectSmash,0,0,true);
      }
      
      internal function frame1202() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1213() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1214() : *
      {
         makeMagic(BackupHit,0,0);
      }
      
      internal function frame1216() : *
      {
         self.attack2();
      }
      
      internal function frame1217() : *
      {
         resetXY();
         move(0,1,null);
      }
      
      internal function frame1219() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1229() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame1237() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1252() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1258() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1261() : *
      {
         self.special4();
         makeMagic(EffectWind2,0,0,true);
      }
      
      internal function frame1267() : *
      {
         self.special44();
      }
      
      internal function frame1288() : *
      {
         k();
      }
      
      internal function frame1322() : *
      {
         Battle.finalHit = false;
         self.special5();
      }
      
      internal function frame1325() : *
      {
         Battle.finalHit = false;
         self.special5();
      }
      
      internal function frame1329() : *
      {
         Battle.finalHit = false;
         self.special5();
      }
      
      internal function frame1332() : *
      {
         Battle.finalHit = false;
         self.special5();
      }
      
      internal function frame1335() : *
      {
         Battle.finalHit = false;
         self.special5();
      }
      
      internal function frame1338() : *
      {
         self.special5();
      }
      
      internal function frame1364() : *
      {
         k();
      }
      
      internal function frame1386() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1390() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1403() : *
      {
         self.special6();
      }
      
      internal function frame1423() : *
      {
         k();
      }
      
      internal function frame1431() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1445() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1449() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1456() : *
      {
      }
      
      internal function frame1467() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic2();
         }
      }
      
      internal function frame1482() : *
      {
         k();
      }
      
      internal function frame1501() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1504() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1517() : *
      {
         Battle.finalHit = false;
         self.special7();
         makeMagic(EffectIce2,0,0,true);
      }
      
      internal function frame1523() : *
      {
         self.special7();
      }
      
      internal function frame1547() : *
      {
         k();
      }
      
      internal function frame1568() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1593() : *
      {
         self.defend2();
      }
      
      internal function frame1603() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1621() : *
      {
         k();
      }
      
      internal function frame1655() : *
      {
         Battle.finalHit = false;
         self.special8();
      }
      
      internal function frame1658() : *
      {
         Battle.finalHit = false;
         self.special8();
      }
      
      internal function frame1662() : *
      {
         Battle.finalHit = false;
         self.special8();
      }
      
      internal function frame1665() : *
      {
         Battle.finalHit = false;
         self.special8();
      }
      
      internal function frame1668() : *
      {
         Battle.finalHit = false;
         self.special8();
      }
      
      internal function frame1671() : *
      {
         self.special8();
      }
      
      internal function frame1697() : *
      {
         k();
      }
      
      internal function frame1698() : *
      {
         setXY();
         move(80,30,Regular.easeInOut);
      }
      
      internal function frame1713() : *
      {
         swapLayer();
         Battle.shake("tiny");
      }
      
      internal function frame1730() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1747() : *
      {
         Battle.finalHit = false;
         self.special9();
         makeMagic(EffectWater3,0,0);
      }
      
      internal function frame1752() : *
      {
         Battle.finalHit = false;
         self.special9();
         makeMagic(EffectWater3,0,0);
      }
      
      internal function frame1757() : *
      {
         self.special9();
         makeMagic(EffectWater3,0,0);
      }
      
      internal function frame1772() : *
      {
         resetXY();
         move(0,30,Regular.easeInOut);
      }
      
      internal function frame1788() : *
      {
         resetLayer();
         Battle.shake("tiny");
      }
      
      internal function frame1805() : *
      {
         k();
      }
      
      internal function frame1813() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1828() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1834() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1841() : *
      {
         self.special10();
         makeMagic(EffectWind,0,0,true);
      }
      
      internal function frame1864() : *
      {
         k();
      }
   }
}

