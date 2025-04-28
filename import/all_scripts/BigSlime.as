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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol16030")]
   public dynamic class BigSlime extends FoeMC
   {
      public function BigSlime()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,63,this.frame64,89,this.frame90,94,this.frame95,121,this.frame122,132,this.frame133,133,this.frame134,148,this.frame149,150,this.frame151,194,this.frame195,196,this.frame197,221,this.frame222,222,this.frame223,248,this.frame249,249,this.frame250,281,this.frame282,290,this.frame291,314,this.frame315,315,this.frame316,338,this.frame339,361,this.frame362,363,this.frame364,382,this.frame383,396,this.frame397,401,this.frame402,409,this.frame410,423,this.frame424,435,this.frame436,458,this.frame459,483,this.frame484,484,this.frame485,520,this.frame521,554,this.frame555,561,this.frame562,591,this.frame592,598,this.frame599,609,this.frame610,652,this.frame653,663,this.frame664,686,this.frame687,688,this.frame689,706,this.frame707,707,this.frame708,709,this.frame710,725,this.frame726,760,this.frame761,767,this.frame768,776,this.frame777,819,this.frame820,823,this.frame824,827,this.frame828,840,this.frame841,854,this.frame855,859,this.frame860,868,this.frame869,881,this.frame882,893,this.frame894,916,this.frame917,948,this.frame949,958,this.frame959,961,this.frame962,967,this.frame968,976,this.frame977,1039,this.frame1040,1042,this.frame1043,1045,this.frame1046,1048,this.frame1049,1051,this.frame1052,1054,this.frame1055,1057,this.frame1058,1058,this.frame1059,1104,this.frame1105,1112,this.frame1113,1130,this.frame1131,1143,this.frame1144,1168,this.frame1169,1173,this.frame1174,1185,this.frame1186,1193,this.frame1194,1219,this.frame1220,1221,this.frame1222,1222,this.frame1223,1234,this.frame1235,1257,this.frame1258,1259,this.frame1260,1277,this.frame1278,1284,this.frame1285,1296,this.frame1297,1297,this.frame1298,1299,this.frame1300,1320,this.frame1321,1332,this.frame1333,1355,this.frame1356,1397,this.frame1398,1399,this.frame1400,1401,this.frame1402,1403,this.frame1404,1405,this.frame1406,1407,this.frame1408,1409,this.frame1410,1411,this.frame1412,1413,this.frame1414,1427,this.frame1428);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(20);
      }
      
      internal function frame64() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame90() : *
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
            if(!isSummon)
            {
               Text.speech(Text.slimes[10]);
            }
            if(skin == 3)
            {
               Text.speech(Text.slimes[11]);
            }
            if(!isSummon)
            {
               if(skin == 4)
               {
                  Text.speech(Text.slimes[12]);
               }
            }
            Text.speech(Text.slimes[16]);
         }
      }
      
      internal function frame95() : *
      {
         k();
      }
      
      internal function frame122() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame133() : *
      {
         flee();
      }
      
      internal function frame134() : *
      {
         freezeSound();
      }
      
      internal function frame149() : *
      {
         frozen();
      }
      
      internal function frame151() : *
      {
         stand();
      }
      
      internal function frame195() : *
      {
         ks();
      }
      
      internal function frame197() : *
      {
         playSound("238");
      }
      
      internal function frame222() : *
      {
         k();
      }
      
      internal function frame223() : *
      {
         playSound("239");
      }
      
      internal function frame249() : *
      {
         k();
      }
      
      internal function frame250() : *
      {
         playSound("240");
      }
      
      internal function frame282() : *
      {
         Text.speech(Text.slimes[16]);
      }
      
      internal function frame291() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 20));
      }
      
      internal function frame315() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame316() : *
      {
         dropItems();
      }
      
      internal function frame339() : *
      {
         dead();
      }
      
      internal function frame362() : *
      {
         Battle.shake("small");
      }
      
      internal function frame364() : *
      {
         self.attack2();
      }
      
      internal function frame383() : *
      {
         k();
      }
      
      internal function frame397() : *
      {
         setXY();
         move(-20,14,null);
      }
      
      internal function frame402() : *
      {
         swapLayer();
      }
      
      internal function frame410() : *
      {
         self.attack1();
      }
      
      internal function frame424() : *
      {
         resetXY();
         move(0,34,Regular.easeInOut);
      }
      
      internal function frame436() : *
      {
         resetLayer();
      }
      
      internal function frame459() : *
      {
         k();
      }
      
      internal function frame484() : *
      {
         k();
      }
      
      internal function frame485() : *
      {
         playSound("heal2");
      }
      
      internal function frame521() : *
      {
         k();
      }
      
      internal function frame555() : *
      {
         self.special1();
      }
      
      internal function frame562() : *
      {
         k();
      }
      
      internal function frame592() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
      }
      
      internal function frame599() : *
      {
         if(!isSummon)
         {
            self.magic1();
         }
      }
      
      internal function frame610() : *
      {
         k();
      }
      
      internal function frame653() : *
      {
         self.special2();
      }
      
      internal function frame664() : *
      {
         k();
      }
      
      internal function frame687() : *
      {
         Battle.shake("small");
      }
      
      internal function frame689() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame707() : *
      {
         Text.speech(Text.slimes[13]);
      }
      
      internal function frame708() : *
      {
         Battle.shake("small");
      }
      
      internal function frame710() : *
      {
         self.attack3();
      }
      
      internal function frame726() : *
      {
         k();
      }
      
      internal function frame761() : *
      {
         self.special3();
      }
      
      internal function frame768() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.slimes[17]);
         }
      }
      
      internal function frame777() : *
      {
         k();
      }
      
      internal function frame820() : *
      {
         Battle.finalHit = false;
         self.special4();
      }
      
      internal function frame824() : *
      {
         Battle.finalHit = false;
         self.special4();
      }
      
      internal function frame828() : *
      {
         self.special4();
      }
      
      internal function frame841() : *
      {
         k();
      }
      
      internal function frame855() : *
      {
         setXY();
         move(-20,14,null);
      }
      
      internal function frame860() : *
      {
         swapLayer();
      }
      
      internal function frame869() : *
      {
         self.attack4();
      }
      
      internal function frame882() : *
      {
         resetXY();
         move(0,34,Regular.easeInOut);
      }
      
      internal function frame894() : *
      {
         resetLayer();
      }
      
      internal function frame917() : *
      {
         k();
      }
      
      internal function frame949() : *
      {
         self.magic2();
      }
      
      internal function frame959() : *
      {
         self.magic2();
      }
      
      internal function frame962() : *
      {
         Text.speech(Text.slimes[15]);
      }
      
      internal function frame968() : *
      {
         self.magic2();
      }
      
      internal function frame977() : *
      {
         k();
      }
      
      internal function frame1040() : *
      {
         Battle.finalHit = false;
         self.special5();
         setXY();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1043() : *
      {
         Battle.finalHit = false;
         self.special5();
         setXY();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1046() : *
      {
         Battle.finalHit = false;
         self.special5();
         setXY();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1049() : *
      {
         Battle.finalHit = false;
         self.special5();
         setXY();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1052() : *
      {
         Battle.finalHit = false;
         self.special5();
         setXY();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1055() : *
      {
         Battle.finalHit = false;
         self.special5();
         setXY();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1058() : *
      {
         self.special5();
         setXY();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1059() : *
      {
         k();
      }
      
      internal function frame1105() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
      }
      
      internal function frame1113() : *
      {
         if(!isSummon)
         {
            self.magic3();
         }
      }
      
      internal function frame1131() : *
      {
         k();
      }
      
      internal function frame1144() : *
      {
         summonOnTop();
      }
      
      internal function frame1169() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special6();
         }
      }
      
      internal function frame1174() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.slimes[14]);
         }
      }
      
      internal function frame1186() : *
      {
         summonOnTop(false);
      }
      
      internal function frame1194() : *
      {
         k();
      }
      
      internal function frame1220() : *
      {
         self.castSpell("Chocolate");
      }
      
      internal function frame1222() : *
      {
         setXY();
         self.attack5();
         makeMagic(EffectSlap,0,0);
      }
      
      internal function frame1223() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.slimes[17]);
         }
      }
      
      internal function frame1235() : *
      {
         k();
      }
      
      internal function frame1258() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1260() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1278() : *
      {
         Text.speech(Text.slimes[15]);
      }
      
      internal function frame1285() : *
      {
         setXY();
         move(10,12,null);
         swapLayer();
      }
      
      internal function frame1297() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.slimes[17]);
         }
      }
      
      internal function frame1298() : *
      {
         Battle.shake("big");
      }
      
      internal function frame1300() : *
      {
         self.attack6();
      }
      
      internal function frame1321() : *
      {
         resetXY();
         move(0,34,Regular.easeInOut);
      }
      
      internal function frame1333() : *
      {
         resetLayer();
      }
      
      internal function frame1356() : *
      {
         k();
      }
      
      internal function frame1398() : *
      {
         setXY();
         self.special1();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1400() : *
      {
         setXY();
         self.special1();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1402() : *
      {
         setXY();
         self.special1();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1404() : *
      {
         setXY();
         self.special1();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1406() : *
      {
         setXY();
         self.special1();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1408() : *
      {
         setXY();
         self.special1();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1410() : *
      {
         setXY();
         self.special1();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1412() : *
      {
         setXY();
         self.special1();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1414() : *
      {
         setXY();
         self.special1();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame1428() : *
      {
         k();
      }
   }
}

