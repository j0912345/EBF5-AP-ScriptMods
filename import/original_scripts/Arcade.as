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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7958")]
   public dynamic class Arcade extends FoeMC
   {
      public function Arcade()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,46,this.frame47,47,this.frame48,77,this.frame78,78,this.frame79,80,this.frame81,133,this.frame134,141,this.frame142,143,this.frame144,153,this.frame154,171,this.frame172,174,this.frame175,175,this.frame176,234,this.frame235,237,this.frame238,238,this.frame239,313,this.frame314,321,this.frame322,330,this.frame331,331,this.frame332,359,this.frame360,360,this.frame361,369,this.frame370,410,this.frame411,413,this.frame414,422,this.frame423,452,this.frame453,453,this.frame454,517,this.frame518,518,this.frame519,522,this.frame523,548,this.frame549,549,this.frame550,550,this.frame551,592,this.frame593,605,this.frame606,607,this.frame608,621,this.frame622,622,this.frame623,625,this.frame626,643,this.frame644,644,this.frame645,645,this.frame646,647,this.frame648,673,this.frame674,675,this.frame676,704,this.frame705,709,this.frame710,724,this.frame725,741,this.frame742,756,this.frame757,778,this.frame779,779,this.frame780,793,this.frame794,812,this.frame813,831,this.frame832,835,this.frame836,836,this.frame837,860,this.frame861,881,this.frame882,883,this.frame884,904,this.frame905,948,this.frame949,949,this.frame950,1008,this.frame1009,1013,this.frame1014,1014,this.frame1015,1017,this.frame1018,1056,this.frame1057,1096,this.frame1097,1101,this.frame1102,1102,this.frame1103,1113,this.frame1114,1127,this.frame1128,1129,this.frame1130,1131,this.frame1132,1132,this.frame1133,1146,this.frame1147,1157,this.frame1158,1158,this.frame1159,1169,this.frame1170,1175,this.frame1176,1183,this.frame1184,1184,this.frame1185,1193,this.frame1194,1198,this.frame1199,1199,this.frame1200,1203,this.frame1204,1204,this.frame1205,1226,this.frame1227,1227,this.frame1228,1257,this.frame1258,1273,this.frame1274,1274,this.frame1275,1287,this.frame1288,1299,this.frame1300,1313,this.frame1314,1315,this.frame1316,1326,this.frame1327,1340,this.frame1341,1352,this.frame1353,1364,this.frame1365,1377,this.frame1378,1380,this.frame1381,1383,this.frame1384,1386,this.frame1387,1389,this.frame1390,1395,this.frame1396,1409,this.frame1410,1420,this.frame1421,1421,this.frame1422,1449,this.frame1450,1465,this.frame1466,1477,this.frame1478,1484,this.frame1485,1489,this.frame1490,1493,this.frame1494,1494,this.frame1495,1537,this.frame1538,1539,this.frame1540,1541,this.frame1542,1543,this.frame1544,1548,this.frame1549,1549,this.frame1550,1571,this.frame1572,1575,this.frame1576,1587,this.frame1588,1589,this.frame1590,1600,this.frame1601,1631,this.frame1632,1637,this.frame1638,1643,this.frame1644,1649,this.frame1650,1655,this.frame1656,1658,this.frame1659,1661,this.frame1662,1669,this.frame1670,1683,this.frame1684,1694,this.frame1695,1695,this.frame1696,1706,this.frame1707,1712,this.frame1713,1720,this.frame1721,1721,this.frame1722,1730,this.frame1731,1735,this.frame1736,1736,this.frame1737,1743,this.frame1744,1750,this.frame1751,1751,this.frame1752,1755,this.frame1756,1778,this.frame1779,1780,this.frame1781,1791,this.frame1792,1806,this.frame1807,1813,this.frame1814,1818,this.frame1819,1825,this.frame1826,1828,this.frame1829,1829,this.frame1830,1843,this.frame1844,1854,this.frame1855,1891,this.frame1892,1907,this.frame1908,1908,this.frame1909,1923,this.frame1924,1935,this.frame1936,1949,this.frame1950,1950,this.frame1951,1995,this.frame1996,1996,this.frame1997,2007,this.frame2008,2011,this.frame2012,2015,this.frame2016,2018,this.frame2019,2020,this.frame2021,2026,this.frame2027,2033,this.frame2034,2041,this.frame2042,2049,this.frame2050,2075,this.frame2076,2091,this.frame2092,2129,this.frame2130,2148,this.frame2149,2151,this.frame2152,2154,this.frame2155,2158,this.frame2159,2162,this.frame2163,2166,this.frame2167,2172,this.frame2173,2184,this.frame2185,2210,this.frame2211,2268,this.frame2269,2269,this.frame2270,2277,this.frame2278,2305,this.frame2306,2322,this.frame2323,2334,this.frame2335,2347,this.frame2348,2351,this.frame2352,2356,this.frame2357,2363,this.frame2364,2370,this.frame2371,2379,this.frame2380,2389,this.frame2390,2420,this.frame2421,2430,this.frame2431,2447,this.frame2448,2451,this.frame2452,2455,this.frame2456,2465,this.frame2466,2469,this.frame2470,2473,this.frame2474,2482,this.frame2483,2486,this.frame2487,2490,this.frame2491,2500,this.frame2501,2508,this.frame2509,2521,this.frame2522,2525,this.frame2526,2542,this.frame2543,2549,this.frame2550,2557,this.frame2558,2574,this.frame2575,2595,this.frame2596,2609,this.frame2610,2613,this.frame2614,2618,this.frame2619,2624,this.frame2625,2630,this.frame2631,2636,this.frame2637,2643,this.frame2644,2653,this.frame2654,2669,this.frame2670,2704,this.frame2705,2747,this.frame2748,2755,this.frame2756,2757,this.frame2758,2768,this.frame2769,2793,this.frame2794,2797,this.frame2798,2801,this.frame2802,2805,this.frame2806,2808,this.frame2809,2813,this.frame2814,2834,this.frame2835,2864,this.frame2865,2874,this.frame2875,2892,this.frame2893,2916,this.frame2917);
      }
      
      public function hitSound() : *
      {
         var _loc1_:String = "";
         if(skin == 3)
         {
            _loc1_ = "Robbo";
         }
         else
         {
            if(skin != 4)
            {
               return;
            }
            _loc1_ = "Snek";
         }
         playSound("hit" + _loc1_);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame2() : *
      {
         randomDelay(40);
      }
      
      internal function frame47() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.arcade[0]);
         }
         if(skin > 13)
         {
            gotoAndPlay("intro7");
         }
         if(skin == 13)
         {
            gotoAndPlay("intro4");
         }
         if(skin == 12)
         {
            gotoAndPlay("intro6");
         }
         if(skin == 8)
         {
            gotoAndPlay("intro4");
         }
         if(skin == 7)
         {
            gotoAndPlay("intro5");
         }
         if(skin == 6)
         {
            gotoAndPlay("intro4");
         }
         if(skin == 5)
         {
            gotoAndPlay("intro4");
         }
         if(skin == 3)
         {
            gotoAndPlay("intro3");
         }
         if(skin == 2)
         {
            gotoAndPlay("intro4");
         }
         if(skin == 1)
         {
            gotoAndPlay("intro4");
         }
      }
      
      internal function frame48() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect3();
         }
      }
      
      internal function frame78() : *
      {
         if(skin == 4 && !isSummon)
         {
            Text.speech(Text.snek[0]);
         }
         if(skin == 10 && !isSummon)
         {
            Text.speech(Text.pumpkus[0]);
         }
         if(isSummon)
         {
            Text.speech(Text.arcade[18]);
         }
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.arcade[19]);
         }
      }
      
      internal function frame79() : *
      {
         k();
      }
      
      internal function frame81() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect3();
         }
      }
      
      internal function frame134() : *
      {
         if(skin == 3 && !isSummon)
         {
            Text.speech(Text.robo[0]);
         }
         if(isSummon)
         {
            Text.speech(Text.arcade[18]);
         }
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.arcade[19]);
         }
      }
      
      internal function frame142() : *
      {
         k();
      }
      
      internal function frame144() : *
      {
         if(isSummon)
         {
            if(skin == 10)
            {
               if(Global.pumpkus)
               {
                  skin = 11;
               }
               else
               {
                  Global.pumpkus = true;
               }
            }
            Summons.currentSummon.effect3();
            if(skin == 8)
            {
               Battle.hidePlayers();
            }
         }
      }
      
      internal function frame154() : *
      {
         if(skin == 8)
         {
            playSound("introTeeth");
         }
      }
      
      internal function frame172() : *
      {
         if(skin == 5 && !isSummon)
         {
            Text.speech(Text.chair[0]);
         }
         if(skin == 2 && !isSummon)
         {
            Text.speech(Text.bosh[0]);
         }
         if(skin == 1 && !isSummon)
         {
            Text.speech(Text.glob[0]);
         }
         if(skin == 6 && !isSummon)
         {
            Text.speech(Text.treagure[0]);
         }
         if(skin == 13 && !isSummon)
         {
            Text.speech(Text.mermaid[0]);
         }
         if(skin == 8 && !isSummon)
         {
            Text.speech(Text.maw[0]);
         }
         if(isSummon)
         {
            Text.speech(Text.arcade[18]);
         }
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.arcade[19]);
         }
      }
      
      internal function frame175() : *
      {
         k();
      }
      
      internal function frame176() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect3();
         }
      }
      
      internal function frame235() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.guoye[0]);
         }
         if(isSummon)
         {
            Text.speech(Text.arcade[18]);
         }
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.arcade[19]);
         }
      }
      
      internal function frame238() : *
      {
         k();
      }
      
      internal function frame239() : *
      {
         if(isSummon)
         {
            Summons.ArcadePhoenix.effect3();
         }
      }
      
      internal function frame314() : *
      {
         if(!isSummon)
         {
            self.selfBurn();
         }
      }
      
      internal function frame322() : *
      {
         if(skin == 12 && !isSummon)
         {
            Text.speech(Text.phoenix[0]);
         }
         Text.phoenix[0].spoken = true;
         if(isSummon)
         {
            Text.speech(Text.arcade[18]);
         }
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.arcade[19]);
         }
      }
      
      internal function frame331() : *
      {
         k();
      }
      
      internal function frame332() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect3();
         }
      }
      
      internal function frame360() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.totom[0]);
         }
         if(isSummon)
         {
            Text.speech(Text.arcade[18]);
         }
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.arcade[19]);
         }
      }
      
      internal function frame361() : *
      {
         k();
      }
      
      internal function frame370() : *
      {
         if(skin == 5)
         {
            gotoAndPlay("stand2");
         }
         if(skin == 12)
         {
            gotoAndPlay("stand2");
         }
         if(skin == 13)
         {
            gotoAndPlay("stand2");
         }
         stand();
      }
      
      internal function frame411() : *
      {
         ks();
      }
      
      internal function frame414() : *
      {
         if(!Options.idleFoes)
         {
            stop();
            cacheAsBitmap = true;
         }
      }
      
      internal function frame423() : *
      {
         if(skin == 5 && Math.random() > 0.1)
         {
            gotoAndPlay("stand2");
         }
      }
      
      internal function frame453() : *
      {
         if(skin == 13 && Math.random() < 0.1)
         {
            gotoAndPlay("stand3b");
         }
      }
      
      internal function frame454() : *
      {
         gotoAndPlay("stand2");
      }
      
      internal function frame518() : *
      {
         gotoAndPlay("stand3");
      }
      
      internal function frame519() : *
      {
         if(skin == 7)
         {
            gotoAndPlay("flee2");
         }
      }
      
      internal function frame523() : *
      {
         if(isSummon && skin == 12)
         {
            Text.speech(Text.phoenix[10]);
         }
         if(isSummon && skin == 14)
         {
            Text.speech(Text.totom[10]);
         }
         if(isSummon && skin == 13)
         {
            Text.speech(Text.mermaid[12]);
         }
         if(isSummon && skin == 8)
         {
            Text.speech(Text.maw[10]);
         }
      }
      
      internal function frame549() : *
      {
         if(!isSummon)
         {
            if(skin == 5 && Battle.foeCount() == 1)
            {
               Text.speech(Text.chair[4]);
            }
            if(skin == 2 && Battle.foeCount() == 1)
            {
               Text.speech(Text.bosh[4]);
            }
            if(skin == 1 && Battle.foeCount() == 1)
            {
               Text.speech(Text.glob[4]);
            }
            if(skin == 4 && Battle.foeCount() == 1)
            {
               Text.speech(Text.snek[3]);
            }
            if(skin == 12 && Battle.foeCount() == 1)
            {
               Text.speech(Text.phoenix[6]);
            }
            if(skin == 6 && Battle.foeCount() == 1)
            {
               Text.speech(Text.treagure[3]);
            }
         }
         if(isSummon && skin == 10)
         {
            Text.speech(Text.pumpkus[9]);
         }
      }
      
      internal function frame550() : *
      {
         if(isSummon)
         {
            if(skin == 8)
            {
               Battle.showPlayers();
            }
            if(skin != 5)
            {
               Backgrounds.resetBackground();
               Battle.shake("small");
               SFX.playSound("rbg");
            }
            else
            {
               Global.resetBG2 = true;
            }
         }
      }
      
      internal function frame551() : *
      {
         flee();
      }
      
      internal function frame593() : *
      {
         if(Battle.foeCount() == 1)
         {
            Text.speech(Text.guoye[5]);
         }
      }
      
      internal function frame606() : *
      {
         if(isSummon)
         {
            if(skin == 8)
            {
               Battle.showPlayers();
            }
            Backgrounds.resetBackground();
            Battle.shake("small");
            SFX.playSound("rbg");
         }
         flee();
      }
      
      internal function frame608() : *
      {
         playSound("arcfreeze");
      }
      
      internal function frame622() : *
      {
         frozen();
      }
      
      internal function frame623() : *
      {
         if(skin == 8)
         {
            body.gotoAndStop(9);
         }
         if(skin == 13)
         {
            playSound("mermaid1");
         }
         if(skin == 10)
         {
            self.getAngry();
         }
         playSound("archit1");
      }
      
      internal function frame626() : *
      {
         if(skin == 12)
         {
            Text.speech(Text.phoenix[1]);
         }
      }
      
      internal function frame644() : *
      {
         k();
      }
      
      internal function frame645() : *
      {
         if(skin == 10)
         {
            self.getAngry();
         }
         playSound("archit2");
      }
      
      internal function frame646() : *
      {
         if(skin == 7)
         {
            playSound("dieBlob");
         }
         if(skin == 13)
         {
            playSound("mermaid2");
         }
      }
      
      internal function frame648() : *
      {
         if(skin == 12)
         {
            Text.speech(Text.phoenix[1]);
         }
      }
      
      internal function frame674() : *
      {
         k();
      }
      
      internal function frame676() : *
      {
         self.loseBody();
      }
      
      internal function frame705() : *
      {
         k();
      }
      
      internal function frame710() : *
      {
         if(skin > 13)
         {
            gotoAndPlay("evade7");
         }
         if(skin == 13)
         {
            gotoAndPlay("evade6");
         }
         if(skin == 8)
         {
            gotoAndPlay("evade5");
         }
         if(skin == 7)
         {
            gotoAndPlay("evade4");
         }
         if(skin == 6)
         {
            gotoAndPlay("evade3");
         }
         if(skin == 5)
         {
            gotoAndPlay("evade3");
         }
         if(skin == 3)
         {
            gotoAndPlay("evade2");
         }
         if(skin == 2)
         {
            gotoAndPlay("evade3");
         }
         if(skin == 1)
         {
            gotoAndPlay("evade3");
         }
         playSound("arcevade");
      }
      
      internal function frame725() : *
      {
         k();
      }
      
      internal function frame742() : *
      {
         k();
      }
      
      internal function frame757() : *
      {
         k();
      }
      
      internal function frame779() : *
      {
         k();
      }
      
      internal function frame780() : *
      {
         k();
      }
      
      internal function frame794() : *
      {
         k();
      }
      
      internal function frame813() : *
      {
         k();
      }
      
      internal function frame832() : *
      {
         k();
      }
      
      internal function frame836() : *
      {
         playSound("arcdie");
         this.hitSound();
      }
      
      internal function frame837() : *
      {
         if(skin == 1)
         {
            playSound("dieGlob");
         }
         if(skin == 8)
         {
            playSound("dieTeeth");
         }
         if(skin == 7)
         {
            playSound("dieBlob");
         }
         if(skin == 10 || skin == 11)
         {
            playSound("pumpkin");
         }
         if(skin == 13)
         {
            playSound("mermaid3");
         }
      }
      
      internal function frame861() : *
      {
         if(skin == 13)
         {
            gotoAndPlay("die2");
         }
         else if(skin == 8)
         {
            gotoAndPlay("die2");
         }
         else
         {
            gotoAndPlay(currentFrame + int(Math.random() * 16));
         }
      }
      
      internal function frame882() : *
      {
         if(skin == 3)
         {
            playSound("dieRobbo");
         }
         if(skin == 13)
         {
            playSound("mermaid2");
         }
      }
      
      internal function frame884() : *
      {
         if(!self.status[Status.AUTOLIFE])
         {
            dropItems();
         }
      }
      
      internal function frame905() : *
      {
         if(skin == 5 && Battle.foeCount() == 0)
         {
            Text.speech(Text.chair[4]);
         }
         if(skin == 5)
         {
            Text.speech(Text.chair[3]);
         }
         if(skin == 2 && Battle.foeCount() == 0)
         {
            Text.speech(Text.bosh[4]);
         }
         if(skin == 2)
         {
            Text.speech(Text.bosh[3]);
         }
         if(skin == 3 && Battle.foeCount() == 0)
         {
            Text.speech(Text.robo[5]);
         }
         if(skin == 3)
         {
            Text.speech(Text.robo[3]);
         }
         if(skin == 3)
         {
            Text.speech(Text.robo[4]);
         }
         if(skin == 1 && Battle.foeCount() == 0)
         {
            Text.speech(Text.glob[4]);
         }
         if(skin == 1)
         {
            Text.speech(Text.glob[3]);
         }
         if(skin == 4 && Battle.foeCount() == 0)
         {
            Text.speech(Text.snek[3]);
         }
         if(skin == 4)
         {
            Text.speech(Text.snek[2]);
         }
         if((skin == 10 || skin == 11) && Battle.foeCount() == 0)
         {
            Text.speech(Text.pumpkus[6]);
         }
         if(skin == 10 || skin == 11)
         {
            Text.speech(Text.pumpkus[4]);
         }
         if(skin == 10 || skin == 11)
         {
            Text.speech(Text.pumpkus[5]);
         }
         if(skin == 7 && Battle.foeCount() == 0)
         {
            Text.speech(Text.guoye[5]);
         }
         if(skin == 7)
         {
            Text.speech(Text.guoye[4]);
         }
         if(skin == 12 && Battle.foeCount() == 0)
         {
            Text.speech(Text.phoenix[6]);
         }
         if((skin == 16 || skin == 15) && Battle.foeCount() == 0)
         {
            Text.speech(Text.totom[5]);
         }
         if(skin == 16 || skin == 15)
         {
            Text.speech(Text.totom[4]);
         }
         if(skin == 6 && Battle.foeCount() == 0)
         {
            Text.speech(Text.treagure[3]);
         }
         if(skin == 6)
         {
            Text.speech(Text.treagure[5]);
         }
         if(skin == 6)
         {
            Text.speech(Text.treagure[7]);
         }
         if(skin == 13)
         {
            Text.speech(Text.mermaid[5]);
         }
         if(skin == 8)
         {
            Text.speech(Text.maw[6]);
         }
      }
      
      internal function frame949() : *
      {
         if(self.status[Status.AUTOLIFE])
         {
            self.autorevive();
            Text.speech(Text.phoenix[2]);
            Text.speech(Text.phoenix[4]);
            Text.speech(Text.phoenix[5]);
         }
      }
      
      internal function frame950() : *
      {
         dead();
      }
      
      internal function frame1009() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame1014() : *
      {
         if(skin == 13)
         {
            gotoAndPlay("die3");
         }
      }
      
      internal function frame1015() : *
      {
         gotoAndPlay("die3");
      }
      
      internal function frame1018() : *
      {
         if(skin == 13)
         {
            gotoAndPlay("heal2");
         }
         if(skin == 11)
         {
            self.getCalm();
         }
      }
      
      internal function frame1057() : *
      {
         k();
      }
      
      internal function frame1097() : *
      {
         k();
      }
      
      internal function frame1102() : *
      {
         loops = 2;
         if(skin == 5)
         {
            gotoAndPlay("attack1b");
         }
         if(skin == 6)
         {
            gotoAndPlay("attack1b");
         }
         if(skin == 8)
         {
            gotoAndPlay("attack1b");
         }
         if(skin == 12)
         {
            gotoAndPlay("attack1c");
         }
         if(skin > 13)
         {
            gotoAndPlay("attack1t");
         }
      }
      
      internal function frame1103() : *
      {
         setXY();
         if(isSummon)
         {
            move(-90,20,Regular.easeInOut);
         }
         else
         {
            move(90,20,Regular.easeInOut);
         }
      }
      
      internal function frame1114() : *
      {
         swapLayer(true);
      }
      
      internal function frame1128() : *
      {
         if(isSummon)
         {
            Summons.ArcadeSnek.effect();
         }
         else
         {
            self.attack1(1);
         }
      }
      
      internal function frame1130() : *
      {
         if(isSummon)
         {
            Summons.ArcadeSnek.effect2();
         }
         else
         {
            self.attack1(2);
         }
      }
      
      internal function frame1132() : *
      {
         if(skin == 4 && !isSummon && self.getHpPercent() < 80)
         {
            Text.speech(Text.snek[6]);
         }
      }
      
      internal function frame1133() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame1147() : *
      {
         resetLayer();
      }
      
      internal function frame1158() : *
      {
         k();
      }
      
      internal function frame1159() : *
      {
         if(skin == 5)
         {
            gotoAndPlay("attack2b");
         }
         if(skin == 6)
         {
            gotoAndPlay("attack2b");
         }
         if(skin == 10 || skin == 11)
         {
            gotoAndPlay("attack2b");
         }
      }
      
      internal function frame1170() : *
      {
         setXY();
         move(-80,14,Regular.easeOut);
      }
      
      internal function frame1176() : *
      {
         swapLayer(true);
      }
      
      internal function frame1184() : *
      {
         self.attack2();
      }
      
      internal function frame1185() : *
      {
         setXY();
         move(-60,14,Regular.easeOut);
      }
      
      internal function frame1194() : *
      {
         resetLayer();
         swapLayer(true);
      }
      
      internal function frame1199() : *
      {
         self.attack2();
      }
      
      internal function frame1200() : *
      {
         resetXY();
         move(0,14,Regular.easeOut);
      }
      
      internal function frame1204() : *
      {
         if(skin == 4 && !isSummon)
         {
            Text.speech(Text.snek[1]);
         }
      }
      
      internal function frame1205() : *
      {
         resetLayer();
      }
      
      internal function frame1227() : *
      {
         k();
      }
      
      internal function frame1228() : *
      {
         if(skin == 6)
         {
            gotoAndPlay("attack3b");
         }
      }
      
      internal function frame1258() : *
      {
         setXY();
         move(0,1,null);
         swapLayer(true);
      }
      
      internal function frame1274() : *
      {
         Battle.shake();
      }
      
      internal function frame1275() : *
      {
         self.attack3();
      }
      
      internal function frame1288() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame1300() : *
      {
         resetLayer();
      }
      
      internal function frame1314() : *
      {
         k();
      }
      
      internal function frame1316() : *
      {
         setXY();
         move(90,20,Regular.easeInOut);
      }
      
      internal function frame1327() : *
      {
         swapLayer(true);
      }
      
      internal function frame1341() : *
      {
         Battle.finalHit = false;
         self.attack4(1);
      }
      
      internal function frame1353() : *
      {
         self.attack4(1);
      }
      
      internal function frame1365() : *
      {
         if(self.status[Status.SYPHON])
         {
            gotoAndPlay("attack4skip");
         }
      }
      
      internal function frame1378() : *
      {
         self.attack4(2);
      }
      
      internal function frame1381() : *
      {
         self.attack4(2);
      }
      
      internal function frame1384() : *
      {
         self.attack4(2);
      }
      
      internal function frame1387() : *
      {
         self.attack4(2);
      }
      
      internal function frame1390() : *
      {
         self.attack4(3);
      }
      
      internal function frame1396() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame1410() : *
      {
         resetLayer();
      }
      
      internal function frame1421() : *
      {
         k();
      }
      
      internal function frame1422() : *
      {
         if(skin == 7)
         {
            gotoAndPlay("magic1b");
         }
         if(skin == 8)
         {
            gotoAndPlay("magic1c");
         }
         if(skin == 12)
         {
            gotoAndPlay("magic1d");
         }
         if(skin == 13)
         {
            gotoAndPlay("magic1m");
         }
         if(skin > 13)
         {
            gotoAndPlay("magic1t");
         }
      }
      
      internal function frame1450() : *
      {
         if(isSummon)
         {
            Summons.ArcadeRobo.effect();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame1466() : *
      {
         k();
      }
      
      internal function frame1478() : *
      {
         if(skin == 2 && !isSummon)
         {
            Text.speech(Text.bosh[1]);
         }
         if(skin == 2 && !isSummon && self.getHpPercent() < 40)
         {
            Text.speech(Text.bosh[6]);
         }
      }
      
      internal function frame1485() : *
      {
         if(isSummon)
         {
            Summons.ArcadeBosh.effect();
         }
         else
         {
            self.special1(1);
         }
      }
      
      internal function frame1490() : *
      {
         if(!isSummon)
         {
            self.special1(2);
         }
      }
      
      internal function frame1494() : *
      {
         if(!isSummon)
         {
            self.special1(3);
         }
      }
      
      internal function frame1495() : *
      {
         k();
      }
      
      internal function frame1538() : *
      {
         Battle.finalHit = false;
         self.special2();
      }
      
      internal function frame1540() : *
      {
         Battle.finalHit = false;
         self.special2();
      }
      
      internal function frame1542() : *
      {
         Battle.finalHit = false;
         self.special2();
      }
      
      internal function frame1544() : *
      {
         self.special2();
      }
      
      internal function frame1549() : *
      {
         k();
      }
      
      internal function frame1550() : *
      {
         if(skin == 6)
         {
            gotoAndPlay("magic2b");
         }
         if(skin == 7)
         {
            gotoAndPlay("magic2c");
         }
         if(skin == 12)
         {
            gotoAndPlay("magic2d");
         }
         if(skin == 13)
         {
            gotoAndPlay("magic2m");
         }
         if(skin > 13)
         {
            gotoAndPlay("magic2t");
         }
      }
      
      internal function frame1572() : *
      {
         if(!(isSummon && skin == 10))
         {
            if(isSummon)
            {
               Summons.ArcadeChair.effect();
            }
            else
            {
               self.magic2();
            }
         }
      }
      
      internal function frame1576() : *
      {
         if(isSummon && skin == 10)
         {
            k();
         }
      }
      
      internal function frame1588() : *
      {
         k();
      }
      
      internal function frame1590() : *
      {
         setXY();
         if(isSummon)
         {
            move(-90,20,Regular.easeInOut);
         }
         else
         {
            move(90,20,Regular.easeInOut);
         }
      }
      
      internal function frame1601() : *
      {
         swapLayer(true);
      }
      
      internal function frame1632() : *
      {
         if(isSummon)
         {
            Summons.ArcadeGlob.effect(1);
         }
         else
         {
            self.special3(1);
         }
      }
      
      internal function frame1638() : *
      {
         if(isSummon)
         {
            Summons.ArcadeGlob.effect(2);
         }
         else
         {
            self.special3(2);
         }
      }
      
      internal function frame1644() : *
      {
         if(isSummon)
         {
            Summons.ArcadeGlob.effect(3);
         }
         else
         {
            self.special3(3);
         }
      }
      
      internal function frame1650() : *
      {
         if(isSummon)
         {
            Summons.ArcadeGlob.effect(4);
         }
         else
         {
            self.special3(4);
         }
      }
      
      internal function frame1656() : *
      {
         if(isSummon)
         {
            Summons.ArcadeGlob.effect(5);
         }
         else
         {
            self.special3(5);
         }
      }
      
      internal function frame1659() : *
      {
         if(skin == 1 && !isSummon)
         {
            Text.speech(Text.glob[1]);
         }
         if(skin == 1 && !isSummon)
         {
            Text.speech(Text.glob[5]);
         }
         if(skin == 1 && !isSummon)
         {
            Text.speech(Text.glob[6]);
         }
         if(skin == 1 && !isSummon)
         {
            Text.speech(Text.glob[7]);
         }
         if(skin == 1 && !isSummon)
         {
            Text.speech(Text.glob[8]);
         }
         if(skin == 1 && !isSummon)
         {
            Text.speech(Text.glob[9]);
         }
      }
      
      internal function frame1662() : *
      {
         if(isSummon)
         {
            Summons.ArcadeGlob.effect(6);
         }
         else
         {
            self.special3(6);
         }
      }
      
      internal function frame1670() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame1684() : *
      {
         resetLayer();
      }
      
      internal function frame1695() : *
      {
         k();
      }
      
      internal function frame1696() : *
      {
         if(isSummon && skin == 10)
         {
            gotoAndPlay("magic2");
         }
         else if(isSummon)
         {
            Battle.selectedTarget = Battle.randomFoe();
         }
      }
      
      internal function frame1707() : *
      {
         setXY();
         if(isSummon)
         {
            move(80,14,Regular.easeOut);
         }
         else
         {
            move(-80,14,Regular.easeOut);
         }
      }
      
      internal function frame1713() : *
      {
         swapLayer(true);
      }
      
      internal function frame1721() : *
      {
         if(isSummon)
         {
            Summons.ArcadePumpkus.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame1722() : *
      {
         setXY();
         if(isSummon)
         {
            move(60,14,Regular.easeOut);
         }
         else
         {
            move(-60,14,Regular.easeOut);
         }
      }
      
      internal function frame1731() : *
      {
         resetLayer();
         swapLayer(true);
      }
      
      internal function frame1736() : *
      {
         if(isSummon)
         {
            Summons.ArcadePumpkus.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame1737() : *
      {
         setXY();
         if(isSummon)
         {
            move(60,14,Regular.easeOut);
         }
         else
         {
            move(-60,14,Regular.easeOut);
         }
      }
      
      internal function frame1744() : *
      {
         resetLayer();
         swapLayer(true);
      }
      
      internal function frame1751() : *
      {
         if(isSummon)
         {
            Summons.ArcadePumpkus.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame1752() : *
      {
         resetXY();
         move(0,14,Regular.easeOut);
      }
      
      internal function frame1756() : *
      {
         resetLayer();
      }
      
      internal function frame1779() : *
      {
         k();
      }
      
      internal function frame1781() : *
      {
         setXY();
         if(skin == 6)
         {
            move(60,20,Regular.easeInOut);
         }
         else if(skin == 8)
         {
            move(60,20,Regular.easeInOut);
         }
         else
         {
            move(10,20,Regular.easeInOut);
         }
      }
      
      internal function frame1792() : *
      {
         swapLayer(true);
      }
      
      internal function frame1807() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame1814() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame1819() : *
      {
         if(skin == 5 && !isSummon)
         {
            Text.speech(Text.chair[1]);
         }
         if(skin == 8 && Boolean(loops))
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            gotoAndPlay("attack1b2");
         }
      }
      
      internal function frame1826() : *
      {
         self.attack1();
      }
      
      internal function frame1829() : *
      {
         if(skin == 8 && Boolean(loops))
         {
            gotoAndPlay("attack1b");
            --loops;
         }
      }
      
      internal function frame1830() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame1844() : *
      {
         resetLayer();
      }
      
      internal function frame1855() : *
      {
         k();
      }
      
      internal function frame1892() : *
      {
         setXY();
         move(0,1,null);
         swapLayer(true);
      }
      
      internal function frame1908() : *
      {
         Battle.shake();
      }
      
      internal function frame1909() : *
      {
         self.attack3();
      }
      
      internal function frame1924() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame1936() : *
      {
         resetLayer();
      }
      
      internal function frame1950() : *
      {
         k();
      }
      
      internal function frame1951() : *
      {
         if(skin == 13)
         {
            gotoAndPlay("magic3m");
         }
      }
      
      internal function frame1996() : *
      {
         self.magic3();
      }
      
      internal function frame1997() : *
      {
         k();
      }
      
      internal function frame2008() : *
      {
         if(isSummon)
         {
            Summons.ArcadeTreagure.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame2012() : *
      {
         if(isSummon)
         {
            Summons.ArcadeTreagure.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame2016() : *
      {
         if(isSummon)
         {
            Summons.ArcadeTreagure.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame2019() : *
      {
         Text.speech(Text.treagure[4]);
         if(isSummon)
         {
            Text.speech(Text.treagure[8]);
         }
      }
      
      internal function frame2021() : *
      {
         if(isSummon)
         {
            Summons.ArcadeTreagure.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame2027() : *
      {
         if(isSummon)
         {
            Summons.ArcadeTreagure.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame2034() : *
      {
         if(isSummon)
         {
            Summons.ArcadeTreagure.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame2042() : *
      {
         if(isSummon)
         {
            Summons.ArcadeTreagure.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame2050() : *
      {
         if(isSummon)
         {
            Summons.ArcadeTreagure.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame2076() : *
      {
         k();
      }
      
      internal function frame2092() : *
      {
         self.magic1();
      }
      
      internal function frame2130() : *
      {
         k();
      }
      
      internal function frame2149() : *
      {
         if(!isSummon)
         {
            self.magic2(1);
         }
      }
      
      internal function frame2152() : *
      {
         if(!isSummon)
         {
            self.magic2(2);
         }
         else
         {
            Summons.ArcadeGuoye.effect();
         }
      }
      
      internal function frame2155() : *
      {
         if(!isSummon)
         {
            self.magic2(3);
         }
      }
      
      internal function frame2159() : *
      {
         if(!isSummon)
         {
            self.magic2(4);
         }
      }
      
      internal function frame2163() : *
      {
         if(!isSummon)
         {
            self.magic2(5);
         }
      }
      
      internal function frame2167() : *
      {
         if(!isSummon)
         {
            self.magic2(6);
         }
      }
      
      internal function frame2173() : *
      {
         if(!isSummon)
         {
            self.magic2(7);
         }
      }
      
      internal function frame2185() : *
      {
         k();
      }
      
      internal function frame2211() : *
      {
         if(!isSummon)
         {
            self.magic1();
         }
         else
         {
            gotoAndPlay("mmm");
         }
      }
      
      internal function frame2269() : *
      {
         k();
      }
      
      internal function frame2270() : *
      {
         Y = this.y;
         if(isSummon)
         {
            X = this.x;
         }
         else
         {
            X = this.x - 120;
         }
         move(0,12,Regular.easeOut);
      }
      
      internal function frame2278() : *
      {
         summonOnTop();
      }
      
      internal function frame2306() : *
      {
         if(isSummon)
         {
            Summons.ArcadeMaw.effect();
         }
         else
         {
            self.special5();
         }
      }
      
      internal function frame2323() : *
      {
         resetXY();
         move(0,12,Regular.easeInOut);
      }
      
      internal function frame2335() : *
      {
         k();
      }
      
      internal function frame2348() : *
      {
         if(!isSummon)
         {
            self.magic2();
         }
      }
      
      internal function frame2352() : *
      {
         if(!isSummon)
         {
            self.magic2();
         }
      }
      
      internal function frame2357() : *
      {
         if(!isSummon)
         {
            self.magic2();
         }
      }
      
      internal function frame2364() : *
      {
         if(!isSummon)
         {
            self.magic2();
         }
      }
      
      internal function frame2371() : *
      {
         if(!isSummon)
         {
            self.magic2();
         }
      }
      
      internal function frame2380() : *
      {
         if(!isSummon)
         {
            self.magic2();
         }
      }
      
      internal function frame2390() : *
      {
         k();
      }
      
      internal function frame2421() : *
      {
         if(isSummon)
         {
            Summons.ArcadePhoenix.effect();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame2431() : *
      {
         k();
      }
      
      internal function frame2448() : *
      {
         self.special6();
      }
      
      internal function frame2452() : *
      {
         self.special6();
      }
      
      internal function frame2456() : *
      {
         self.special6();
      }
      
      internal function frame2466() : *
      {
         self.special6();
      }
      
      internal function frame2470() : *
      {
         self.special6();
      }
      
      internal function frame2474() : *
      {
         self.special6();
      }
      
      internal function frame2483() : *
      {
         self.special6();
      }
      
      internal function frame2487() : *
      {
         self.special6();
      }
      
      internal function frame2491() : *
      {
         self.special6();
      }
      
      internal function frame2501() : *
      {
         k();
      }
      
      internal function frame2509() : *
      {
         setXY();
         move(90,30,Regular.easeInOut);
      }
      
      internal function frame2522() : *
      {
         Text.speech(Text.phoenix[8]);
      }
      
      internal function frame2526() : *
      {
         swapLayer(true);
      }
      
      internal function frame2543() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame2550() : *
      {
         self.attack1();
      }
      
      internal function frame2558() : *
      {
         resetXY();
         move(0,25,Regular.easeInOut);
      }
      
      internal function frame2575() : *
      {
         resetLayer();
      }
      
      internal function frame2596() : *
      {
         k();
      }
      
      internal function frame2610() : *
      {
         self.magic2();
      }
      
      internal function frame2614() : *
      {
         self.magic2();
      }
      
      internal function frame2619() : *
      {
         self.magic2();
      }
      
      internal function frame2625() : *
      {
         self.magic2();
      }
      
      internal function frame2631() : *
      {
         if(self.getHpPercent() < 80)
         {
            self.magic2();
         }
      }
      
      internal function frame2637() : *
      {
         if(self.getHpPercent() < 60)
         {
            self.magic2();
         }
      }
      
      internal function frame2644() : *
      {
         if(self.getHpPercent() < 40)
         {
            self.magic2();
         }
      }
      
      internal function frame2654() : *
      {
         k();
      }
      
      internal function frame2670() : *
      {
         if(isSummon)
         {
            Summons.ArcadeMermaid.effect();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame2705() : *
      {
         k();
      }
      
      internal function frame2748() : *
      {
         if(!isSummon)
         {
            self.magic3();
         }
      }
      
      internal function frame2756() : *
      {
         k();
      }
      
      internal function frame2758() : *
      {
         setXY();
         move(150,22,Regular.easeInOut);
      }
      
      internal function frame2769() : *
      {
         swapLayer(true);
      }
      
      internal function frame2794() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame2798() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame2802() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame2806() : *
      {
         self.attack1();
      }
      
      internal function frame2809() : *
      {
         Text.speech(Text.totom[6]);
      }
      
      internal function frame2814() : *
      {
         resetXY();
         move(0,1,null);
         resetLayer();
         gotoAndPlay("intro7");
      }
      
      internal function frame2835() : *
      {
         if(isSummon)
         {
            Summons.ArcadeTotom.effect();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame2865() : *
      {
         k();
      }
      
      internal function frame2875() : *
      {
      }
      
      internal function frame2893() : *
      {
         self.magic2();
      }
      
      internal function frame2917() : *
      {
         k();
      }
   }
}

