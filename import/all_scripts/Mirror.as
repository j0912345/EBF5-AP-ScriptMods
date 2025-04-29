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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14029")]
   public dynamic class Mirror extends FoeMC
   {
      public function Mirror()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,16,this.frame17,62,this.frame63,68,this.frame69,120,this.frame121,122,this.frame123,171,this.frame172,173,this.frame174,193,this.frame194,194,this.frame195,220,this.frame221,221,this.frame222,240,this.frame241,241,this.frame242,275,this.frame276,276,this.frame277,291,this.frame292,298,this.frame299,321,this.frame322,343,this.frame344,344,this.frame345,359,this.frame360,360,this.frame361,375,this.frame376,401,this.frame402,406,this.frame407,421,this.frame422,437,this.frame438,438,this.frame439,453,this.frame454,494,this.frame495,504,this.frame505,519,this.frame520,535,this.frame536,536,this.frame537,551,this.frame552,597,this.frame598,607,this.frame608,622,this.frame623,638,this.frame639,677,this.frame678,686,this.frame687,698,this.frame699,730,this.frame731,750,this.frame751,752,this.frame753,755,this.frame756,758,this.frame759,759,this.frame760,802,this.frame803,819,this.frame820,820,this.frame821,835,this.frame836,861,this.frame862,879,this.frame880,894,this.frame895,910,this.frame911,911,this.frame912,926,this.frame927,954,this.frame955,957,this.frame958,960,this.frame961,963,this.frame964,966,this.frame967,969,this.frame970,982,this.frame983,997,this.frame998,1013,this.frame1014,1056,this.frame1057,1078,this.frame1079,1114,this.frame1115,1118,this.frame1119,1122,this.frame1123,1128,this.frame1129,1152,this.frame1153,1195,this.frame1196,1217,this.frame1218,1218,this.frame1219,1233,this.frame1234,1274,this.frame1275,1291,this.frame1292,1306,this.frame1307,1322,this.frame1323,1323,this.frame1324,1338,this.frame1339,1364,this.frame1365,1367,this.frame1368,1370,this.frame1371,1373,this.frame1374,1376,this.frame1377,1379,this.frame1380,1394,this.frame1395,1409,this.frame1410,1425,this.frame1426);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(15);
      }
      
      internal function frame17() : *
      {
         if(isSummon && (skin == 2 || skin == 4 || skin == 6 || skin == 8))
         {
            --skin;
         }
      }
      
      internal function frame63() : *
      {
         if(!isSummon && self.graphicScale < 0)
         {
            Text.speech(Text.arcade[20]);
            Text.speech(Text.arcade[21]);
            Text.speech(Text.arcade[22]);
            Text.speech(Text.arcade[23]);
         }
         Text.speech(Text.mirrors[1]);
      }
      
      internal function frame69() : *
      {
         k();
      }
      
      internal function frame121() : *
      {
         flee();
      }
      
      internal function frame123() : *
      {
         stand();
      }
      
      internal function frame172() : *
      {
         ks();
      }
      
      internal function frame174() : *
      {
         if(skin % 2 == 1 && self.getHpPercent() < 15)
         {
            ++skin;
            playSound("mirror");
            self.breakMirror();
         }
         else
         {
            head.visible = false;
         }
         playSound("388");
         if(skin > 6)
         {
            playSound("mirror3");
         }
         else
         {
            playSound("mirror2");
         }
      }
      
      internal function frame194() : *
      {
         k();
      }
      
      internal function frame195() : *
      {
         if(skin % 2 == 1 && self.getHpPercent() < 25)
         {
            ++skin;
            playSound("mirror");
            self.breakMirror();
         }
         else
         {
            head.visible = false;
         }
         playSound("389");
         if(skin > 6)
         {
            playSound("mirror3");
         }
         else
         {
            playSound("mirror2");
         }
      }
      
      internal function frame221() : *
      {
         k();
      }
      
      internal function frame222() : *
      {
         playSound("390");
      }
      
      internal function frame241() : *
      {
         k();
      }
      
      internal function frame242() : *
      {
         playSound("heal");
      }
      
      internal function frame276() : *
      {
         k();
      }
      
      internal function frame277() : *
      {
         if(skin % 2 == 1)
         {
            ++skin;
            playSound("mirror");
            self.breakMirror();
         }
         else
         {
            head.visible = false;
         }
         playSound("391");
         if(skin > 6)
         {
            playSound("mirror3");
         }
         else
         {
            playSound("mirror2");
         }
      }
      
      internal function frame292() : *
      {
         playSound("392");
      }
      
      internal function frame299() : *
      {
         randomDelay(20);
      }
      
      internal function frame322() : *
      {
         dropItems();
      }
      
      internal function frame344() : *
      {
         dead();
      }
      
      internal function frame345() : *
      {
         freezeSound();
      }
      
      internal function frame360() : *
      {
         frozen();
      }
      
      internal function frame361() : *
      {
         setXY();
         move(20,30,Regular.easeInOut);
      }
      
      internal function frame376() : *
      {
         swapLayer();
      }
      
      internal function frame402() : *
      {
         self.attack1();
      }
      
      internal function frame407() : *
      {
         resetXY();
         move(0,30,Regular.easeInOut);
      }
      
      internal function frame422() : *
      {
         resetLayer();
      }
      
      internal function frame438() : *
      {
         k();
      }
      
      internal function frame439() : *
      {
         setXY();
         move(40,30,Regular.easeInOut);
      }
      
      internal function frame454() : *
      {
         swapLayer();
      }
      
      internal function frame495() : *
      {
         self.attack2();
      }
      
      internal function frame505() : *
      {
         resetXY();
         move(0,30,Regular.easeInOut);
      }
      
      internal function frame520() : *
      {
         resetLayer();
      }
      
      internal function frame536() : *
      {
         k();
      }
      
      internal function frame537() : *
      {
         setXY();
         move(isSummon ? -40 : 40,30,Regular.easeInOut);
      }
      
      internal function frame552() : *
      {
         swapLayer();
      }
      
      internal function frame598() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame608() : *
      {
         resetXY();
         if(isSummon)
         {
            Y = y;
            X = 1300;
         }
         move(0,30,Regular.easeInOut);
      }
      
      internal function frame623() : *
      {
         resetLayer();
      }
      
      internal function frame639() : *
      {
         k();
      }
      
      internal function frame678() : *
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
      
      internal function frame687() : *
      {
         if(isSummon && (skin == 3 || skin == 4))
         {
            Summons.currentSummon.effect2();
         }
      }
      
      internal function frame699() : *
      {
         k();
      }
      
      internal function frame731() : *
      {
         if(skin % 2 == 1)
         {
            ++skin;
         }
         self.breakMirror(true);
      }
      
      internal function frame751() : *
      {
         if(skin % 2 == 1)
         {
            ++skin;
         }
      }
      
      internal function frame753() : *
      {
         Battle.finalHit = false;
         self.attack4();
      }
      
      internal function frame756() : *
      {
         Battle.finalHit = false;
         self.attack4();
      }
      
      internal function frame759() : *
      {
         self.attack4();
      }
      
      internal function frame760() : *
      {
         k();
      }
      
      internal function frame803() : *
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
      
      internal function frame820() : *
      {
         k();
      }
      
      internal function frame821() : *
      {
         setXY();
         move(20,30,Regular.easeInOut);
      }
      
      internal function frame836() : *
      {
         swapLayer();
      }
      
      internal function frame862() : *
      {
         self.attack5();
      }
      
      internal function frame880() : *
      {
         resetXY();
         move(0,30,Regular.easeInOut);
      }
      
      internal function frame895() : *
      {
         resetLayer();
      }
      
      internal function frame911() : *
      {
         k();
      }
      
      internal function frame912() : *
      {
         setXY();
         move(40,30,Regular.easeInOut);
      }
      
      internal function frame927() : *
      {
         swapLayer();
      }
      
      internal function frame955() : *
      {
         Battle.finalHit = false;
         self.attack6();
      }
      
      internal function frame958() : *
      {
         Battle.finalHit = false;
         self.attack6();
      }
      
      internal function frame961() : *
      {
         Battle.finalHit = false;
         self.attack6();
      }
      
      internal function frame964() : *
      {
         Battle.finalHit = false;
         self.attack6();
      }
      
      internal function frame967() : *
      {
         Battle.finalHit = false;
         self.attack6();
      }
      
      internal function frame970() : *
      {
         self.attack6();
      }
      
      internal function frame983() : *
      {
         resetXY();
         move(0,30,Regular.easeInOut);
      }
      
      internal function frame998() : *
      {
         resetLayer();
      }
      
      internal function frame1014() : *
      {
         k();
      }
      
      internal function frame1057() : *
      {
         self.special1();
         makeMagic(EffectWind,0,0,true);
      }
      
      internal function frame1079() : *
      {
         k();
      }
      
      internal function frame1115() : *
      {
         self.special2(1);
      }
      
      internal function frame1119() : *
      {
         self.special2(2);
      }
      
      internal function frame1123() : *
      {
         self.special2(3);
      }
      
      internal function frame1129() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.mirrors[2]);
         }
      }
      
      internal function frame1153() : *
      {
         k();
      }
      
      internal function frame1196() : *
      {
         self.special3();
         makeMagic(EffectWind,0,0,true);
      }
      
      internal function frame1218() : *
      {
         k();
      }
      
      internal function frame1219() : *
      {
         setXY();
         move(40,30,Regular.easeInOut);
      }
      
      internal function frame1234() : *
      {
         swapLayer();
      }
      
      internal function frame1275() : *
      {
         self.attack7();
      }
      
      internal function frame1292() : *
      {
         resetXY();
         move(0,30,Regular.easeInOut);
      }
      
      internal function frame1307() : *
      {
         resetLayer();
      }
      
      internal function frame1323() : *
      {
         k();
      }
      
      internal function frame1324() : *
      {
         setXY();
         move(40,30,Regular.easeInOut);
      }
      
      internal function frame1339() : *
      {
         swapLayer();
      }
      
      internal function frame1365() : *
      {
         Battle.finalHit = false;
         self.attack8();
      }
      
      internal function frame1368() : *
      {
         Battle.finalHit = false;
         self.attack8();
      }
      
      internal function frame1371() : *
      {
         Battle.finalHit = false;
         self.attack8();
      }
      
      internal function frame1374() : *
      {
         Battle.finalHit = false;
         self.attack8();
      }
      
      internal function frame1377() : *
      {
         Battle.finalHit = false;
         self.attack8();
      }
      
      internal function frame1380() : *
      {
         self.attack8();
      }
      
      internal function frame1395() : *
      {
         resetXY();
         move(0,30,Regular.easeInOut);
      }
      
      internal function frame1410() : *
      {
         resetLayer();
      }
      
      internal function frame1426() : *
      {
         k();
      }
   }
}

