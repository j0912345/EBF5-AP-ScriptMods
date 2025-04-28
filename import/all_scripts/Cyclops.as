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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15211")]
   public dynamic class Cyclops extends FoeMC
   {
      public function Cyclops()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,33,this.frame34,43,this.frame44,52,this.frame53,55,this.frame56,60,this.frame61,66,this.frame67,70,this.frame71,79,this.frame80,80,this.frame81,92,this.frame93,106,this.frame107,110,this.frame111,112,this.frame113,161,this.frame162,178,this.frame179,188,this.frame189,199,this.frame200,209,this.frame210,215,this.frame216,236,this.frame237,237,this.frame238,238,this.frame239,254,this.frame255,258,this.frame259,259,this.frame260,260,this.frame261,286,this.frame287,287,this.frame288,306,this.frame307,307,this.frame308,345,this.frame346,346,this.frame347,360,this.frame361,379,this.frame380,427,this.frame428,452,this.frame453,528,this.frame529,553,this.frame554,555,this.frame556,563,this.frame564,573,this.frame574,576,this.frame577,582,this.frame583,592,this.frame593,595,this.frame596,599,this.frame600,604,this.frame605,616,this.frame617,626,this.frame627,629,this.frame630,636,this.frame637,654,this.frame655,656,this.frame657,664,this.frame665,674,this.frame675,677,this.frame678,683,this.frame684,693,this.frame694,703,this.frame704,704,this.frame705,705,this.frame706,717,this.frame718,718,this.frame719,736,this.frame737,737,this.frame738,738,this.frame739,741,this.frame742,749,this.frame750,759,this.frame760,760,this.frame761,762,this.frame763,768,this.frame769,778,this.frame779,787,this.frame788,788,this.frame789,789,this.frame790,791,this.frame792,802,this.frame803,812,this.frame813,816,this.frame817,822,this.frame823,841,this.frame842,862,this.frame863,863,this.frame864,868,this.frame869,870,this.frame871,883,this.frame884,901,this.frame902,910,this.frame911,920,this.frame921,932,this.frame933,941,this.frame942,949,this.frame950,956,this.frame957,976,this.frame977,980,this.frame981,992,this.frame993,1006,this.frame1007,1010,this.frame1011,1028,this.frame1029,1039,this.frame1040,1049,this.frame1050,1051,this.frame1052,1055,this.frame1056,1059,this.frame1060,1069,this.frame1070,1071,this.frame1072,1078,this.frame1079,1088,this.frame1089,1090,this.frame1091,1095,this.frame1096,1108,this.frame1109,1118,this.frame1119,1121,this.frame1122,1128,this.frame1129,1146,this.frame1147,1148,this.frame1149,1154,this.frame1155,1156,this.frame1157,1166,this.frame1167,1169,this.frame1170,1175,this.frame1176,1185,this.frame1186,1187,this.frame1188,1192,this.frame1193,1205,this.frame1206,1215,this.frame1216,1218,this.frame1219,1225,this.frame1226,1243,this.frame1244,1258,this.frame1259,1289,this.frame1290,1292,this.frame1293,1295,this.frame1296,1298,this.frame1299,1301,this.frame1302,1310,this.frame1311);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(30);
      }
      
      internal function frame34() : *
      {
         randomDelay(30);
      }
      
      internal function frame44() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame53() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame56() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
            this.x -= 100;
         }
      }
      
      internal function frame61() : *
      {
         Battle.shake("small");
      }
      
      internal function frame67() : *
      {
         if(!(self is Summon) && SaveData.questNo == 1 && Foes.isScanned(self) && skin == 1)
         {
            Text.speech(Text.cyclops[16],{
               "skin":skin,
               "skinDamage":skinDamage
            });
         }
      }
      
      internal function frame71() : *
      {
         Battle.shake("small");
      }
      
      internal function frame80() : *
      {
         if(isSummon && skin == 1)
         {
            gotoAndPlay("special1b");
         }
      }
      
      internal function frame81() : *
      {
         Battle.shake("small");
      }
      
      internal function frame93() : *
      {
         head.belly.gotoAndPlay("bounce2");
      }
      
      internal function frame107() : *
      {
         if(skin == 1 && !(self is Summon))
         {
            Text.speech(Text.cyclops[1],{
               "skin":skin,
               "skinDamage":skinDamage
            });
         }
         if(skin != 1 && !(self is Summon))
         {
            Text.speech(Text.sisters[12]);
         }
      }
      
      internal function frame111() : *
      {
         k();
      }
      
      internal function frame113() : *
      {
         stand();
      }
      
      internal function frame162() : *
      {
         ks();
      }
      
      internal function frame179() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame189() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame200() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame210() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame216() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame237() : *
      {
         flee();
      }
      
      internal function frame238() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame239() : *
      {
         head.eye.gotoAndPlay("evade");
         playSound("272");
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame255() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.cyclops[11]);
         }
         if(skin == 1 && skinDamage == 2)
         {
            Text.speech(Text.cyclops[12]);
         }
         if(skin == 1 && skinDamage == 2)
         {
            Text.speech(Text.cyclops[13]);
         }
         if(skin == 1 && skinDamage == 2)
         {
            Text.speech(Text.cyclops[14]);
         }
         if(skin == 1 && skinDamage == 3)
         {
            Text.speech(Text.cyclops[15]);
         }
         if(skin != 1)
         {
            Text.speech(Text.sisters[13]);
         }
         if(skin != 1 && skinDamage == 3)
         {
            Text.speech(Text.sisters[14]);
         }
         if(skin != 1 && Battle.foeCount() == 1)
         {
            Text.speech(Text.sisters[15]);
         }
      }
      
      internal function frame259() : *
      {
         k();
      }
      
      internal function frame260() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame261() : *
      {
         head.eye.gotoAndPlay("hit");
         playSound("273");
         head.belly.gotoAndPlay("bounce2");
      }
      
      internal function frame287() : *
      {
         k();
      }
      
      internal function frame288() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame307() : *
      {
         k();
      }
      
      internal function frame308() : *
      {
         head.eye.gotoAndPlay("heal");
         playSound("heal2");
      }
      
      internal function frame346() : *
      {
         k();
      }
      
      internal function frame347() : *
      {
         head.eye.gotoAndPlay("die");
         Battle.whiteFlash();
      }
      
      internal function frame361() : *
      {
         Battle.shake("small");
      }
      
      internal function frame380() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.cyclops[8],{
               "skin":skin,
               "skinDamage":skinDamage
            });
         }
         if(skin != 1)
         {
            Text.speech(Text.sisters[6],{
               "skin":skin,
               "skinDamage":skinDamage
            });
         }
         if(skin != 1)
         {
            Text.speech(Text.sisters[8],{
               "skin":skin,
               "skinDamage":skinDamage
            });
         }
      }
      
      internal function frame428() : *
      {
         randomDelay(15);
      }
      
      internal function frame453() : *
      {
         dropItems();
      }
      
      internal function frame529() : *
      {
         if(skin == 1)
         {
            Medals.unlock(Medals.popEye);
            Flags.CYCLOPS_DEFEATED.quantity = 1;
            Battle.bossDefeated();
         }
         if(skin != 1 && Global.cyclopsSisDown)
         {
            Medals.unlock(Medals.doubleTrouble);
            Flags.SUPER_CYCLOPS_DEFEATED.quantity = 1;
            Battle.bossDefeated();
         }
         if(skin != 1)
         {
            Global.cyclopsSisDown = true;
         }
      }
      
      internal function frame554() : *
      {
         dead();
      }
      
      internal function frame556() : *
      {
         setXY();
         move(0,38,null);
      }
      
      internal function frame564() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame574() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame577() : *
      {
         swapLayer();
      }
      
      internal function frame583() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame593() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame596() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame600() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame605() : *
      {
         self.attack1();
      }
      
      internal function frame617() : *
      {
         resetXY();
         move(0,38,null);
      }
      
      internal function frame627() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame630() : *
      {
         resetLayer();
      }
      
      internal function frame637() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame655() : *
      {
         k();
      }
      
      internal function frame657() : *
      {
         setXY();
         move(0,38,null);
      }
      
      internal function frame665() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame675() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame678() : *
      {
         swapLayer();
      }
      
      internal function frame684() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame694() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame704() : *
      {
         Text.speech(Text.cyclops[10]);
      }
      
      internal function frame705() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame706() : *
      {
         self.attack2();
      }
      
      internal function frame718() : *
      {
         Battle.shake("small");
         makeMagic(BackupHit,0,0);
      }
      
      internal function frame719() : *
      {
         self.attack22();
      }
      
      internal function frame737() : *
      {
         resetXY();
         move(0,1,null);
      }
      
      internal function frame738() : *
      {
         resetLayer();
      }
      
      internal function frame739() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame742() : *
      {
         setXY();
         move(0,38,null);
      }
      
      internal function frame750() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame760() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame761() : *
      {
         if(isSummon)
         {
            setXY();
            move(0,18,null);
         }
      }
      
      internal function frame763() : *
      {
         if(!isSummon)
         {
            swapLayer();
         }
      }
      
      internal function frame769() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame779() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame788() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.cyclops[12]);
         }
      }
      
      internal function frame789() : *
      {
         Battle.shake("big");
      }
      
      internal function frame790() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            self.attack3();
         }
         head.belly.gotoAndPlay("bounce2");
         makeMagic(EffectEarth2,0,0,true);
         if(skin == 1)
         {
            makeMagic(EffectEarth,0,0,true);
         }
         if(skin == 2)
         {
            makeMagic(EffectIce,0,0,true);
         }
         if(skin == 3)
         {
            makeMagic(EffectFire,0,0,true);
         }
      }
      
      internal function frame792() : *
      {
         Text.speech(Text.cyclops[10]);
      }
      
      internal function frame803() : *
      {
         resetXY();
         move(0,38,null);
      }
      
      internal function frame813() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame817() : *
      {
         resetLayer();
      }
      
      internal function frame823() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame842() : *
      {
         k();
      }
      
      internal function frame863() : *
      {
         Battle.shake("small");
         self.magic1();
      }
      
      internal function frame864() : *
      {
         head.belly.gotoAndPlay("bounce2");
      }
      
      internal function frame869() : *
      {
         self.magic11();
      }
      
      internal function frame871() : *
      {
         Text.speech(Text.cyclops[10]);
      }
      
      internal function frame884() : *
      {
         k();
      }
      
      internal function frame902() : *
      {
         head.belly.gotoAndPlay("bounce2");
      }
      
      internal function frame911() : *
      {
         self.magic2();
      }
      
      internal function frame921() : *
      {
         k();
      }
      
      internal function frame933() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame942() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame950() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame957() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame977() : *
      {
         Battle.shake("small");
      }
      
      internal function frame981() : *
      {
         skin = 2;
      }
      
      internal function frame993() : *
      {
         head.belly.gotoAndPlay("bounce2");
         makeMagic(BoulderBomb,this.x + (isSummon ? 200 : -200),this.y - 100);
      }
      
      internal function frame1007() : *
      {
         skin = 1;
      }
      
      internal function frame1011() : *
      {
         k();
      }
      
      internal function frame1029() : *
      {
         head.belly.gotoAndPlay("bounce2");
      }
      
      internal function frame1040() : *
      {
         self.magic3();
      }
      
      internal function frame1050() : *
      {
         k();
      }
      
      internal function frame1052() : *
      {
         setXY();
         move(isSummon ? -100 : 100,38,null);
      }
      
      internal function frame1056() : *
      {
         if(isSummon)
         {
            Text.speech(Text.sisters[9],{
               "skin":2,
               "skinDamage":1
            });
         }
      }
      
      internal function frame1060() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1070() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1072() : *
      {
         swapLayer();
      }
      
      internal function frame1079() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1089() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1091() : *
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
         makeMagic(EffectIce2,0,0);
      }
      
      internal function frame1096() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
         makeMagic(EffectIce2,0,0);
      }
      
      internal function frame1109() : *
      {
         if(isSummon)
         {
            gotoAndPlay("attack3b");
         }
         else
         {
            resetXY();
            move(0,38,null);
         }
      }
      
      internal function frame1119() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1122() : *
      {
         resetLayer();
      }
      
      internal function frame1129() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1147() : *
      {
         k();
      }
      
      internal function frame1149() : *
      {
         setXY();
         move(isSummon ? -100 : 100,38,null);
      }
      
      internal function frame1155() : *
      {
         if(isSummon)
         {
            Text.speech(Text.sisters[10],{
               "skin":3,
               "skinDamage":1
            });
         }
      }
      
      internal function frame1157() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1167() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1170() : *
      {
         swapLayer();
      }
      
      internal function frame1176() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1186() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1188() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack5();
         }
         makeMagic(EffectFire3,0,0);
      }
      
      internal function frame1193() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack5();
         }
         makeMagic(EffectFire3,0,0);
      }
      
      internal function frame1206() : *
      {
         if(isSummon)
         {
            gotoAndPlay("attack3b");
         }
         else
         {
            resetXY();
            move(0,38,null);
         }
      }
      
      internal function frame1216() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1219() : *
      {
         resetLayer();
      }
      
      internal function frame1226() : *
      {
         head.belly.gotoAndPlay("bounce1");
      }
      
      internal function frame1244() : *
      {
         k();
      }
      
      internal function frame1259() : *
      {
         head.eye.gotoAndPlay("heal");
      }
      
      internal function frame1290() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            self.special2();
            makeMagic(EffectSmash2,0,0);
         }
      }
      
      internal function frame1293() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            self.special2();
            makeMagic(EffectSmash2,0,0);
         }
      }
      
      internal function frame1296() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            self.special2();
            makeMagic(EffectSmash2,0,0);
         }
      }
      
      internal function frame1299() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            self.special2();
            makeMagic(EffectSmash2,0,0);
         }
      }
      
      internal function frame1302() : *
      {
         if(isSummon && Flags.battleEvent == Flags.SISTERS_BATTLE && Battle.foeCount() == 2)
         {
            Text.speech(Text.sisters[11],{"skin":(Battle.foes[1] as Foe).graphic.skin});
         }
         else if(isSummon)
         {
            Text.speech(Text.cyclops[9],{
               "skin":skin,
               "skinDamage":skinDamage
            });
         }
      }
      
      internal function frame1311() : *
      {
         k();
      }
   }
}

