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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12080")]
   public dynamic class Matt extends PlayerMC
   {
      public function Matt()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,13,this.frame14,16,this.frame17,17,this.frame18,21,this.frame22,23,this.frame24,33,this.frame34,34,this.frame35,35,this.frame36,37,this.frame38,39,this.frame40,41,this.frame42,42,this.frame43,56,this.frame57,70,this.frame71,71,this.frame72,72,this.frame73,109,this.frame110,111,this.frame112,132,this.frame133,133,this.frame134,159,this.frame160,180,this.frame181,214,this.frame215,243,this.frame244,249,this.frame250,283,this.frame284,291,this.frame292,321,this.frame322,340,this.frame341,341,this.frame342,342,this.frame343,348,this.frame349,362,this.frame363,383,this.frame384,384,this.frame385,411,this.frame412,424,this.frame425,435,this.frame436,436,this.frame437,440,this.frame441,445,this.frame446,447,this.frame448,448,this.frame449,451,this.frame452,452,this.frame453,455,this.frame456,458,this.frame459,462,this.frame463,469,this.frame470,470,this.frame471,481,this.frame482,482,this.frame483,483,this.frame484,484,this.frame485,487,this.frame488,488,this.frame489,489,this.frame490,493,this.frame494,494,this.frame495,499,this.frame500,504,this.frame505,505,this.frame506,547,this.frame548,559,this.frame560,592,this.frame593,598,this.frame599,601,this.frame602,648,this.frame649,649,this.frame650,658,this.frame659,667,this.frame668,668,this.frame669,681,this.frame682,697,this.frame698,708,this.frame709,713,this.frame714,722,this.frame723,725,this.frame726,728,this.frame729,730,this.frame731,741,this.frame742,742,this.frame743,769,this.frame770,772,this.frame773,773,this.frame774,776,this.frame777,782,this.frame783,788,this.frame789,800,this.frame801,804,this.frame805,810,this.frame811,812,this.frame813,817,this.frame818,825,this.frame826,831,this.frame832,839,this.frame840,849,this.frame850,856,this.frame857,860,this.frame861,873,this.frame874,874,this.frame875,877,this.frame878,882,this.frame883,883,this.frame884,888,this.frame889,893,this.frame894,899,this.frame900,934,this.frame935,949,this.frame950,966,this.frame967,967,this.frame968,971,this.frame972,977,this.frame978,978,this.frame979,979,this.frame980,980,this.frame981,982,this.frame983,983,this.frame984,985,this.frame986,989,this.frame990,990,this.frame991,993,this.frame994,1000,this.frame1001,1016,this.frame1017,1022,this.frame1023,1031,this.frame1032,1032,this.frame1033,1033,this.frame1034,1034,this.frame1035,1039,this.frame1040,1044,this.frame1045,1045,this.frame1046,1049,this.frame1050,1060,this.frame1061,1061,this.frame1062,1080,this.frame1081,1081,this.frame1082,1100,this.frame1101,1111,this.frame1112,1129,this.frame1130,1131,this.frame1132,1134,this.frame1135,1135,this.frame1136,1145,this.frame1146,1146,this.frame1147,1154,this.frame1155,1155,this.frame1156,1163,this.frame1164,1164,this.frame1165,1172,this.frame1173,1173,this.frame1174,1178,this.frame1179,1190,this.frame1191,1195,this.frame1196,1200,this.frame1201,1206,this.frame1207,1218,this.frame1219,1222,this.frame1223,1231,this.frame1232,1234,this.frame1235,1239,this.frame1240,1245,this.frame1246,1251,this.frame1252,1253,this.frame1254,1264,this.frame1265,1330,this.frame1331,1363,this.frame1364,1430,this.frame1431,1488,this.frame1489,1494,this.frame1495,1513,this.frame1514,1521,this.frame1522,1522,this.frame1523,1533,this.frame1534,1534,this.frame1535,1538,this.frame1539,1544,this.frame1545,1548,this.frame1549,1557,this.frame1558,1558,this.frame1559,1564,this.frame1565,1568,this.frame1569,1576,this.frame1577,1591,this.frame1592,1592,this.frame1593,1594,this.frame1595,1596,this.frame1597,1639,this.frame1640,1656,this.frame1657,1658,this.frame1659,1666,this.frame1667,1670,this.frame1671,1685,this.frame1686,1695,this.frame1696,1700,this.frame1701,1715,this.frame1716,1723,this.frame1724,1735,this.frame1736,1736,this.frame1737,1742,this.frame1743,1748,this.frame1749,1755,this.frame1756,1761,this.frame1762,1783,this.frame1784,1792,this.frame1793,1793,this.frame1794,1797,this.frame1798,1803,this.frame1804,1805,this.frame1806,1809,this.frame1810,1814,this.frame1815,1821,this.frame1822,1822,this.frame1823,1827,this.frame1828,1832,this.frame1833,1842,this.frame1843,1844,this.frame1845,1873,this.frame1874,1897,this.frame1898,1989,this.frame1990,2008,this.frame2009,2018,this.frame2019);
      }
      
      internal function frame1() : *
      {
         init();
         playerNo = 1;
         monster = 1;
         if(isSummon || !self.isPlayer)
         {
            zombieMatt = true;
         }
      }
      
      internal function frame3() : *
      {
         gotoAndPlay("equip2");
      }
      
      internal function frame14() : *
      {
         if(zombieMode)
         {
            SFX.playSound("evilMatt1");
         }
      }
      
      internal function frame17() : *
      {
         if(zombieMode)
         {
            SFX.playSound("evilMatt2");
         }
      }
      
      internal function frame18() : *
      {
         if(Global.catchTip)
         {
            Text.speech(Text.tips[5]);
         }
         if(Flags.TANK_DEFEATED.quantity)
         {
            Text.speech(Text.tips[6]);
         }
         if(SaveData.foesDefeated >= 15)
         {
            Text.speech(Text.tips[7]);
         }
         Text.equip(1);
         Text.backupIn(1);
      }
      
      internal function frame22() : *
      {
         if(self is Foe && zombieMode && !(self is Summon) && SaveData.questNo == 1 && Foes.isScanned(self))
         {
            Text.speech(Text.evilMatt[15]);
         }
      }
      
      internal function frame24() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame34() : *
      {
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            Text.speech(Text.arena[0]);
         }
      }
      
      internal function frame35() : *
      {
         if(isSummon)
         {
            Text.speech(Text.evilMatt[7]);
         }
         if(self is Foe)
         {
            Text.speech(Text.evilMatt[8]);
         }
      }
      
      internal function frame36() : *
      {
         if(SaveData.foesDefeated >= 8)
         {
            Text.speech(Text.tips[3]);
         }
      }
      
      internal function frame38() : *
      {
         if(isSummon || zombieMode)
         {
            k();
         }
         else if(!drainage())
         {
            k();
         }
      }
      
      internal function frame40() : *
      {
         stand();
         idle.zombieMode = zombieMode;
         idle.zombieMatt = zombieMatt;
         if(Players.hasItem(19,1) || Players.hasItem(33,1))
         {
            hideMouth = true;
         }
         else
         {
            hideMouth = false;
         }
      }
      
      internal function frame42() : *
      {
         openMouth = false;
         SFX.playSound("lilhit");
         if(zombieMode)
         {
            SFX.playSound("evilMattHit1");
         }
      }
      
      internal function frame43() : *
      {
         if(Flags.battleEvent == Flags.NATALIE_BATTLE)
         {
            Text.speech(Text.natalie[4]);
         }
         Text.hit(1);
      }
      
      internal function frame57() : *
      {
         if(self is Foe)
         {
            Text.speech(Text.evilMatt[9]);
         }
         if(self is Foe && self.getHpPercent() < 50)
         {
            Text.speech(Text.evilMatt[13]);
         }
         if(self is Foe && Flags.stonedTimer < 5)
         {
            Text.speech(Text.evilMatt[14]);
         }
      }
      
      internal function frame71() : *
      {
         k();
      }
      
      internal function frame72() : *
      {
         SFX.playSound("bighit");
         if(zombieMode)
         {
            SFX.playSound("evilMattHit2");
         }
      }
      
      internal function frame73() : *
      {
         Text.bigHit(1);
      }
      
      internal function frame110() : *
      {
         if(zombieMode)
         {
            SFX.playSound("evilMatt1");
         }
      }
      
      internal function frame112() : *
      {
         if(zombieMode)
         {
            SFX.playSound("evilMatt2");
         }
      }
      
      internal function frame133() : *
      {
         k();
      }
      
      internal function frame134() : *
      {
         SFX.playSound("bighit");
      }
      
      internal function frame160() : *
      {
         getHit2();
      }
      
      internal function frame181() : *
      {
         self.defend();
         if(zombieMode)
         {
            SFX.playSound("evilMatt2");
         }
      }
      
      internal function frame215() : *
      {
         k();
      }
      
      internal function frame244() : *
      {
         done();
      }
      
      internal function frame250() : *
      {
         Global.playSound("bigheal");
      }
      
      internal function frame284() : *
      {
         k();
      }
      
      internal function frame292() : *
      {
         if(zombieMode)
         {
            SFX.playSound("evilMatt2");
         }
      }
      
      internal function frame322() : *
      {
         if(zombieMode)
         {
            self.magic1();
         }
         else
         {
            self.castSpell();
         }
      }
      
      internal function frame341() : *
      {
         k();
      }
      
      internal function frame342() : *
      {
         SFX.playSound("bighit");
         deathFace = Math.floor(Math.random() * 13 + 2);
      }
      
      internal function frame343() : *
      {
         grave = Math.random() * 8 + 2;
      }
      
      internal function frame349() : *
      {
         Text.death(1);
      }
      
      internal function frame363() : *
      {
         pauseNestedAnimations = false;
      }
      
      internal function frame384() : *
      {
         dead();
      }
      
      internal function frame385() : *
      {
         Global.playSound("bigheal");
      }
      
      internal function frame412() : *
      {
         Text.revive(1);
      }
      
      internal function frame425() : *
      {
         k();
      }
      
      internal function frame436() : *
      {
         if(zombieMode)
         {
            SFX.playSound("evilMatt2");
         }
      }
      
      internal function frame437() : *
      {
         setXY();
         move(zombieMode ? 50 : -50,12,null);
      }
      
      internal function frame441() : *
      {
         swapLayer();
      }
      
      internal function frame446() : *
      {
         if(zombieMode)
         {
            SFX.playSound("evilMatt1");
         }
      }
      
      internal function frame448() : *
      {
         makeMagic(EffectElement3,0,0);
      }
      
      internal function frame449() : *
      {
         if(zombieMode)
         {
            self.attack1();
         }
         else
         {
            self.attack1();
         }
      }
      
      internal function frame452() : *
      {
         if(zombieMode)
         {
            self.bonusSpell();
         }
         else
         {
            Battle.bonusSpell(2.5);
         }
         if(zombieMode)
         {
            SFX.playSound("evilMatt2");
         }
      }
      
      internal function frame453() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame456() : *
      {
         Text.speech(Text.mattSkills[28]);
      }
      
      internal function frame459() : *
      {
         resetLayer();
      }
      
      internal function frame463() : *
      {
         if(zombieMode)
         {
            SFX.playSound("evilMatt1");
         }
      }
      
      internal function frame470() : *
      {
         if(zombieMode)
         {
            self.attack1b();
         }
      }
      
      internal function frame471() : *
      {
         stealItem();
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame482() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame483() : *
      {
         setXY();
         move(zombieMode ? 55 : -55,6,null);
      }
      
      internal function frame484() : *
      {
         Text.speech(Text.mattSkills[1]);
      }
      
      internal function frame485() : *
      {
         swapLayer();
      }
      
      internal function frame488() : *
      {
         makeMagic(EffectElement3,0,0);
      }
      
      internal function frame489() : *
      {
         if(zombieMode)
         {
            self.attack2();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame490() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame494() : *
      {
         Text.speech(Text.tips[4]);
         if(zombieMode)
         {
            self.bonusSpell();
         }
         else
         {
            Battle.bonusSpell();
         }
      }
      
      internal function frame495() : *
      {
         Text.speech(Text.mattSkills[28]);
         resetLayer();
      }
      
      internal function frame500() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame505() : *
      {
         if(zombieMode)
         {
            self.attack2b();
         }
      }
      
      internal function frame506() : *
      {
         stealItem();
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame548() : *
      {
         self.passItem();
      }
      
      internal function frame560() : *
      {
         k();
      }
      
      internal function frame593() : *
      {
         Text.eat(1);
      }
      
      internal function frame599() : *
      {
         self.eatItem();
      }
      
      internal function frame602() : *
      {
         if(isSummon)
         {
            Global.itemIcon = Items.bacon.icon;
         }
      }
      
      internal function frame649() : *
      {
         if(self is Foe)
         {
            Text.speech(Text.evilMatt[10]);
         }
      }
      
      internal function frame650() : *
      {
         Text.eat(1);
      }
      
      internal function frame659() : *
      {
         if(isSummon)
         {
            k();
         }
         else
         {
            self.eatItem();
         }
      }
      
      internal function frame668() : *
      {
         changeEquips();
      }
      
      internal function frame669() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame682() : *
      {
         Text.equip(1);
      }
      
      internal function frame698() : *
      {
         k();
      }
      
      internal function frame709() : *
      {
         setXY();
         move(-50,14,null);
      }
      
      internal function frame714() : *
      {
         swapLayer();
      }
      
      internal function frame723() : *
      {
         self.attack7();
      }
      
      internal function frame726() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame729() : *
      {
         Battle.bonusSpell();
      }
      
      internal function frame731() : *
      {
         resetLayer();
      }
      
      internal function frame742() : *
      {
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame743() : *
      {
         SFX.playSound("defhit");
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame770() : *
      {
         k();
      }
      
      internal function frame773() : *
      {
         Text.backupOut(1);
      }
      
      internal function frame774() : *
      {
         Text.flee(1);
      }
      
      internal function frame777() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame783() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame789() : *
      {
         if(isSummon)
         {
            k();
         }
         else
         {
            stop();
            Battle.standby();
         }
      }
      
      internal function frame801() : *
      {
         setXY();
         move(zombieMode ? 50 : -50,12,null);
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame805() : *
      {
         swapLayer();
      }
      
      internal function frame811() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame813() : *
      {
         Battle.finalHit = false;
         self.attack3(1);
      }
      
      internal function frame818() : *
      {
         Battle.finalHit = false;
         self.attack3(1);
      }
      
      internal function frame826() : *
      {
         Battle.finalHit = false;
         self.attack3(1);
      }
      
      internal function frame832() : *
      {
         Battle.finalHit = false;
         self.attack3(1);
      }
      
      internal function frame840() : *
      {
         Battle.finalHit = false;
         self.attack3(1);
      }
      
      internal function frame850() : *
      {
         Battle.finalHit = false;
         self.attack3(1);
      }
      
      internal function frame857() : *
      {
         Battle.finalHit = false;
         self.attack3(1);
      }
      
      internal function frame861() : *
      {
         Battle.finalHit = false;
         self.attack3(1);
      }
      
      internal function frame874() : *
      {
         self.attack3(2);
      }
      
      internal function frame875() : *
      {
         Battle.shake("small");
      }
      
      internal function frame878() : *
      {
         if(!zombieMode)
         {
            Battle.bonusSpell(1.5);
         }
      }
      
      internal function frame883() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame884() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame889() : *
      {
         Text.speech(Text.mattSkills[15]);
         Text.speech(Text.mattSkills[16]);
         resetLayer();
      }
      
      internal function frame894() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame900() : *
      {
         if(!zombieMode)
         {
            stealItem();
         }
         if(zombieMode || !drainage())
         {
            k();
         }
      }
      
      internal function frame935() : *
      {
         self.throwItem();
      }
      
      internal function frame950() : *
      {
         k();
      }
      
      internal function frame967() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame968() : *
      {
         setXY();
         move(-50,12,null);
      }
      
      internal function frame972() : *
      {
         swapLayer();
      }
      
      internal function frame978() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame979() : *
      {
         makeMagic(EffectRevenge,0,0);
         makeMagic(EffectElement3,0,0);
      }
      
      internal function frame980() : *
      {
         self.attack4();
      }
      
      internal function frame981() : *
      {
         Battle.shake("small");
      }
      
      internal function frame983() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame984() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame986() : *
      {
         Battle.bonusSpell();
      }
      
      internal function frame990() : *
      {
         Text.speech(Text.mattSkills[5]);
         Text.speech(Text.mattSkills[6]);
         resetLayer();
      }
      
      internal function frame991() : *
      {
         Text.speech(Text.mattSkills[28]);
      }
      
      internal function frame994() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame1001() : *
      {
         stealItem();
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame1017() : *
      {
         setXY();
         move(-50,15,null);
      }
      
      internal function frame1023() : *
      {
         swapLayer();
      }
      
      internal function frame1032() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame1033() : *
      {
         makeMagic(EffectUnleash,0,0);
      }
      
      internal function frame1034() : *
      {
         self.attack5();
      }
      
      internal function frame1035() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1040() : *
      {
         resetXY();
         move(0,12,null);
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1045() : *
      {
         Text.speech(Text.mattSkills[7]);
         resetLayer();
      }
      
      internal function frame1046() : *
      {
         Text.speech(Text.mattSkills[28]);
         Battle.bonusSpell(1.5);
      }
      
      internal function frame1050() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame1061() : *
      {
         stealItem();
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame1062() : *
      {
         freezeSound(2);
         freeze = true;
      }
      
      internal function frame1081() : *
      {
         frozen();
      }
      
      internal function frame1082() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1101() : *
      {
         k();
      }
      
      internal function frame1112() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1130() : *
      {
         if(zombieMode)
         {
            Battle.selectedTarget = Battle.players[1];
         }
         setXY();
         move(zombieMode ? 70 : -50,4,null);
      }
      
      internal function frame1132() : *
      {
         swapLayer();
      }
      
      internal function frame1135() : *
      {
         Battle.finalHit = false;
         self.attack6();
      }
      
      internal function frame1136() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1146() : *
      {
         Battle.finalHit = false;
         self.attack6();
      }
      
      internal function frame1147() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1155() : *
      {
         Battle.finalHit = false;
         self.attack6();
      }
      
      internal function frame1156() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[11]);
         }
         Battle.shake("small");
      }
      
      internal function frame1164() : *
      {
         Battle.finalHit = false;
         self.attack6();
      }
      
      internal function frame1165() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1173() : *
      {
         self.attack6();
      }
      
      internal function frame1174() : *
      {
         if(Flags.battleEvent == Flags.ANNA_BATTLE)
         {
            Text.speech(Text.anna[12]);
         }
         Text.speech(Text.mattSkills[38]);
         Text.speech(Text.mattSkills[45]);
         Text.speech(Text.mattSkills[42]);
         Text.speech(Text.mattSkills[43]);
         Text.speech(Text.mattSkills[44]);
         Text.speech(Text.mattSkills[37]);
         Battle.shake("small");
      }
      
      internal function frame1179() : *
      {
         if(!zombieMode)
         {
            Battle.bonusSpell(2.5);
         }
      }
      
      internal function frame1191() : *
      {
         resetXY();
         move(0,12,null);
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1196() : *
      {
         resetLayer();
      }
      
      internal function frame1201() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame1207() : *
      {
         if(!zombieMode)
         {
            stealItem();
         }
         if(zombieMode || !drainage())
         {
            k();
         }
      }
      
      internal function frame1219() : *
      {
         setXY();
         move(-15,12,null);
      }
      
      internal function frame1223() : *
      {
         Text.speech(Text.mattSkills[8]);
         Text.speech(Text.mattSkills[9]);
         Text.speech(Text.mattSkills[10]);
         Text.speech(Text.mattSkills[11]);
         Text.speech(Text.mattSkills[12]);
         Text.speech(Text.mattSkills[13]);
         swapLayer();
      }
      
      internal function frame1232() : *
      {
         self.special1();
      }
      
      internal function frame1235() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame1240() : *
      {
         resetLayer();
      }
      
      internal function frame1246() : *
      {
      }
      
      internal function frame1252() : *
      {
         makeMagic(EffectItem,this.x + 120,this.y + 80);
         stealItem();
         if(self.drainableDamage != 0)
         {
            (Battle.selectedTarget as Foe).stolenFrom = true;
         }
         k();
      }
      
      internal function frame1254() : *
      {
         if(zombieMode)
         {
            self.magic3();
         }
         else
         {
            self.castSpell();
         }
      }
      
      internal function frame1265() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1331() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1364() : *
      {
         gotoAndPlay("intro");
      }
      
      internal function frame1431() : *
      {
         stop();
         Battle.standby(self);
      }
      
      internal function frame1489() : *
      {
         done();
      }
      
      internal function frame1495() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1514() : *
      {
         if(zombieMode)
         {
            self.magic4();
         }
         else
         {
            self.castSpell();
         }
      }
      
      internal function frame1522() : *
      {
         if(zombieMode)
         {
            gotoAndPlay("defend");
         }
      }
      
      internal function frame1523() : *
      {
         k();
      }
      
      internal function frame1534() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1535() : *
      {
         setXY();
         move(zombieMode && !isSummon ? 140 : -140,12,null);
      }
      
      internal function frame1539() : *
      {
         swapLayer();
      }
      
      internal function frame1545() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame1549() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else if(zombieMode)
         {
            self.magic2();
         }
         else
         {
            self.castSpell();
         }
      }
      
      internal function frame1558() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1559() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame1565() : *
      {
         Text.speech(Text.mattSkills[17]);
         resetLayer();
      }
      
      internal function frame1569() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame1577() : *
      {
         if(zombieMode || !drainage())
         {
            k();
         }
      }
      
      internal function frame1592() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1593() : *
      {
         Text.speech(Text.mattSkills[2]);
         Text.speech(Text.mattSkills[3]);
      }
      
      internal function frame1595() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame1597() : *
      {
         makeMagic(MattSwordSpin,350,0);
      }
      
      internal function frame1640() : *
      {
         Text.speech(Text.mattSkills[4]);
      }
      
      internal function frame1657() : *
      {
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame1659() : *
      {
         getJumpXY();
      }
      
      internal function frame1667() : *
      {
         move(0,12,null);
      }
      
      internal function frame1671() : *
      {
      }
      
      internal function frame1686() : *
      {
         stop();
         self.useSkill(Battle.selectedSkill,true);
      }
      
      internal function frame1696() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame1701() : *
      {
      }
      
      internal function frame1716() : *
      {
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame1724() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1736() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1737() : *
      {
         self.special3();
      }
      
      internal function frame1743() : *
      {
         Text.speech(Text.evilMatt[11]);
      }
      
      internal function frame1749() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1756() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1762() : *
      {
         self.special3();
      }
      
      internal function frame1784() : *
      {
         k();
      }
      
      internal function frame1793() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1794() : *
      {
         setXY();
         move(40,12,null);
      }
      
      internal function frame1798() : *
      {
         swapLayer();
      }
      
      internal function frame1804() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame1806() : *
      {
         Battle.shake("big");
         self.special4();
      }
      
      internal function frame1810() : *
      {
         self.special4b();
      }
      
      internal function frame1815() : *
      {
         Text.speech(Text.evilMatt[11]);
      }
      
      internal function frame1822() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt2");
         }
      }
      
      internal function frame1823() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame1828() : *
      {
         resetLayer();
      }
      
      internal function frame1833() : *
      {
         if(zombieMode)
         {
            playSound("evilMatt1");
         }
      }
      
      internal function frame1843() : *
      {
         k();
      }
      
      internal function frame1845() : *
      {
         Global.playSound("bighit");
         Battle.whiteFlash();
         if(zombieMode)
         {
            playSound("evilMattHit2");
         }
      }
      
      internal function frame1874() : *
      {
         pauseNestedAnimations = false;
      }
      
      internal function frame1898() : *
      {
         Text.speech(Text.evilMatt[11]);
      }
      
      internal function frame1990() : *
      {
         dropItems();
      }
      
      internal function frame2009() : *
      {
         Medals.unlock(Medals.dustToDust);
         Flags.EVIL_MATT_DEFEATED.quantity = 1;
         Battle.bossDefeated();
      }
      
      internal function frame2019() : *
      {
         dead();
      }
   }
}

