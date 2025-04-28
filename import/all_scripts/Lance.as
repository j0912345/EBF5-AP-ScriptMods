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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12277")]
   public dynamic class Lance extends PlayerMC
   {
      public var hat:MovieClip;
      
      public var head:MovieClip;
      
      public var eyes:MovieClip;
      
      public var bubble:int;
      
      public function Lance()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,4,this.frame5,14,this.frame15,15,this.frame16,20,this.frame21,24,this.frame25,25,this.frame26,27,this.frame28,28,this.frame29,29,this.frame30,30,this.frame31,32,this.frame33,33,this.frame34,34,this.frame35,42,this.frame43,45,this.frame46,62,this.frame63,63,this.frame64,64,this.frame65,65,this.frame66,85,this.frame86,86,this.frame87,98,this.frame99,99,this.frame100,117,this.frame118,128,this.frame129,159,this.frame160,168,this.frame169,169,this.frame170,203,this.frame204,204,this.frame205,211,this.frame212,239,this.frame240,244,this.frame245,257,this.frame258,258,this.frame259,270,this.frame271,289,this.frame290,299,this.frame300,300,this.frame301,307,this.frame308,316,this.frame317,331,this.frame332,333,this.frame334,334,this.frame335,346,this.frame347,355,this.frame356,364,this.frame365,365,this.frame366,372,this.frame373,381,this.frame382,404,this.frame405,406,this.frame407,407,this.frame408,425,this.frame426,441,this.frame442,442,this.frame443,455,this.frame456,457,this.frame458,460,this.frame461,463,this.frame464,465,this.frame466,466,this.frame467,468,this.frame469,476,this.frame477,490,this.frame491,491,this.frame492,498,this.frame499,510,this.frame511,526,this.frame527,528,this.frame529,533,this.frame534,535,this.frame536,540,this.frame541,542,this.frame543,547,this.frame548,549,this.frame550,554,this.frame555,556,this.frame557,561,this.frame562,563,this.frame564,566,this.frame567,567,this.frame568,572,this.frame573,585,this.frame586,586,this.frame587,592,this.frame593,612,this.frame613,614,this.frame615,616,this.frame617,622,this.frame623,635,this.frame636,636,this.frame637,639,this.frame640,642,this.frame643,654,this.frame655,666,this.frame667,668,this.frame669,685,this.frame686,705,this.frame706,712,this.frame713,713,this.frame714,719,this.frame720,724,this.frame725,727,this.frame728,731,this.frame732,732,this.frame733,733,this.frame734,735,this.frame736,737,this.frame738,738,this.frame739,752,this.frame753,753,this.frame754,772,this.frame773,776,this.frame777,777,this.frame778,780,this.frame781,782,this.frame783,803,this.frame804,814,this.frame815,815,this.frame816,821,this.frame822,826,this.frame827,827,this.frame828,829,this.frame830,830,this.frame831,834,this.frame835,835,this.frame836,837,this.frame838,840,this.frame841,854,this.frame855,877,this.frame878,887,this.frame888,920,this.frame921,929,this.frame930,963,this.frame964,972,this.frame973,973,this.frame974,974,this.frame975,975,this.frame976,984,this.frame985,989,this.frame990,998,this.frame999,999,this.frame1000,1019,this.frame1020,1040,this.frame1041,1049,this.frame1050,1051,this.frame1052,1060,this.frame1061,1073,this.frame1074,1075,this.frame1076,1093,this.frame1094,1094,this.frame1095,1104,this.frame1105,1105,this.frame1106,1112,this.frame1113,1117,this.frame1118,1128,this.frame1129,1129,this.frame1130,1138,this.frame1139,1153,this.frame1154,1154,this.frame1155,1246,this.frame1247,1287,this.frame1288,1289,this.frame1290,1296,this.frame1297,1307,this.frame1308,1308,this.frame1309,1320,this.frame1321,1321,this.frame1322,1322,this.frame1323,1329,this.frame1330,1330,this.frame1331,1331,this.frame1332,1333,this.frame1334,1336,this.frame1337,1348,this.frame1349,1353,this.frame1354,1365,this.frame1366,1366,this.frame1367,1373,this.frame1374,1418,this.frame1419,1419,this.frame1420,1421,this.frame1422,1422,this.frame1423,1423,this.frame1424,1424,this.frame1425,1437,this.frame1438,1438,this.frame1439,1447,this.frame1448,1453,this.frame1454,1466,this.frame1467,1476,this.frame1477,1482,this.frame1483,1496,this.frame1497,1497,this.frame1498,1519,this.frame1520,1522,this.frame1523,1526,this.frame1527,1529,this.frame1530,1532,this.frame1533,1536,this.frame1537,1544,this.frame1545,1554,this.frame1555,1555,this.frame1556,1577,this.frame1578,1585,this.frame1586,1593,this.frame1594,1597,this.frame1598,1614,this.frame1615,1615,this.frame1616,1640,this.frame1641,1641,this.frame1642,1669,this.frame1670,1670,this.frame1671,1678,this.frame1679,1692,this.frame1693,1702,this.frame1703,1743,this.frame1744,1914,this.frame1915,1915,this.frame1916,1973,this.frame1974,1992,this.frame1993,1997,this.frame1998);
      }
      
      public function hairUp() : *
      {
         this.head.hair1.gotoAndPlay("up");
         this.hat.hair1.gotoAndPlay("up");
         this.hat.hair2.gotoAndPlay("up");
      }
      
      public function hairDown() : *
      {
         this.head.hair1.gotoAndPlay("down");
         this.hat.hair1.gotoAndPlay("down");
         this.hat.hair2.gotoAndPlay("down");
      }
      
      internal function frame1() : *
      {
         init();
         playerNo = 3;
         skin = 1;
         if(isSummon || !self.isPlayer)
         {
            zombieLance = true;
         }
      }
      
      internal function frame3() : *
      {
         gotoAndPlay("equip2");
      }
      
      internal function frame5() : *
      {
         if(self is Foe && self.catchRate == Catching.UNCATCHABLE && SaveData.questNo == 1)
         {
            Players.equips[3] = [1,20,10,2,2,2,2];
         }
      }
      
      internal function frame15() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame16() : *
      {
         this.hairDown();
      }
      
      internal function frame21() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame25() : *
      {
         if(self is Player)
         {
            Text.equip(3);
         }
      }
      
      internal function frame26() : *
      {
         if(self is Player)
         {
            Text.backupIn(3);
         }
      }
      
      internal function frame28() : *
      {
         if(self is Foe && zombieMode && !(self is Summon) && SaveData.questNo == 1 && Foes.isScanned(self))
         {
            Text.speech(Text.evilLance[14]);
         }
      }
      
      internal function frame29() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_2)
         {
            Text.speech(Text.lance[1]);
         }
      }
      
      internal function frame30() : *
      {
         if(isSummon)
         {
            Text.speech(Text.evilLance[7]);
         }
         if(self is Foe && Flags.battleEvent == Flags.EVIL_LANCE)
         {
            Text.speech(Text.evilLance[8]);
         }
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            Text.speech(Text.arena[2]);
         }
      }
      
      internal function frame31() : *
      {
         k();
      }
      
      internal function frame33() : *
      {
         stand();
         idle.zombieMode = zombieMode;
         idle.zombieLance = zombieLance;
         if(Players.hasItem(19,3) || Players.hasItem(33,3) || zombieMode)
         {
            hideMouth = true;
         }
         else if(Players.P3equips[1] == 5 || Players.P3equips[1] == 6 || Players.P3equips[1] == 8 || Players.P3equips[1] == 11 || Players.P3equips[1] == 15)
         {
            hideMouth = true;
         }
         else
         {
            hideMouth = false;
         }
      }
      
      internal function frame34() : *
      {
         openMouth = false;
         if(!zombieMode)
         {
            Global.playSound("lilhit");
         }
         this.hairUp();
         if(zombieMode)
         {
            playSound("evilLanceHit1");
         }
      }
      
      internal function frame35() : *
      {
         if(self is Player)
         {
            Text.hit(3);
         }
      }
      
      internal function frame43() : *
      {
         if(self is Foe && Flags.battleEvent == Flags.EVIL_LANCE)
         {
            Text.speech(Text.evilLance[9]);
         }
         if(self is Foe && Flags.battleEvent == Flags.EVIL_LANCE && self.getHpPercent() < 70)
         {
            Text.speech(Text.evilLance[11]);
         }
         if(self is Foe && Flags.battleEvent == Flags.EVIL_LANCE && self.getHpPercent() < 40)
         {
            Text.speech(Text.evilLance[13]);
         }
      }
      
      internal function frame46() : *
      {
         if((Flags.battleEvent == Flags.LANCE_BATTLE_2 || Flags.battleEvent == Flags.LANCE_BATTLE_3) && self.textCount > 4)
         {
            Text.speech(Text.lance[6]);
         }
         if((Flags.battleEvent == Flags.LANCE_BATTLE_2 || Flags.battleEvent == Flags.LANCE_BATTLE_3) && self.textCount > 4)
         {
            Text.speech(Text.lance[7]);
         }
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            if(self.getHpPercent() < 50)
            {
               Text.speech(Text.lance[25]);
            }
            if(self.textCount > 2)
            {
               Text.speech(Text.lance[27]);
            }
            if(self.textCount > 3)
            {
               Text.speech(Text.lance[28]);
            }
         }
      }
      
      internal function frame63() : *
      {
         k();
      }
      
      internal function frame64() : *
      {
         if(!zombieMode)
         {
            Global.playSound("bighit");
         }
         if(zombieMode)
         {
            playSound("evilLanceHit2");
         }
      }
      
      internal function frame65() : *
      {
         if(self is Player)
         {
            Text.bigHit(3);
         }
      }
      
      internal function frame66() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_2 || Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            Text.speech(Text.lance[9]);
         }
         if(Flags.battleEvent == Flags.LANCE_BATTLE_2 || Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            Text.speech(Text.lance[10]);
         }
      }
      
      internal function frame86() : *
      {
         getHit2();
      }
      
      internal function frame87() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame99() : *
      {
         this.hairUp();
      }
      
      internal function frame100() : *
      {
         self.defend();
      }
      
      internal function frame118() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame129() : *
      {
         k();
      }
      
      internal function frame160() : *
      {
         done();
      }
      
      internal function frame169() : *
      {
         stop();
      }
      
      internal function frame170() : *
      {
         Global.playSound("bigheal");
      }
      
      internal function frame204() : *
      {
         k();
      }
      
      internal function frame205() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame212() : *
      {
         this.bubble = Math.floor(Math.random() * 7) + 2;
         if(!isSummon && self is Foe)
         {
            this.bubble = 9;
         }
      }
      
      internal function frame240() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else if(self is Foe)
         {
            self.magic1();
         }
         else
         {
            self.castSpell();
         }
      }
      
      internal function frame245() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame258() : *
      {
         k();
      }
      
      internal function frame259() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame271() : *
      {
         if(!isSummon)
         {
            if(zombieMode)
            {
               self.magic2();
            }
            else
            {
               self.castSpell();
            }
         }
      }
      
      internal function frame290() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame300() : *
      {
         k();
      }
      
      internal function frame301() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame308() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame317() : *
      {
         if(!zombieMode && Players.P3equips[2] == 9 || Players.P3equips[2] == 10)
         {
            this.eyes.gotoAndStop(2);
         }
      }
      
      internal function frame332() : *
      {
         if(zombieMode)
         {
            playSound("evilLance3");
         }
      }
      
      internal function frame334() : *
      {
         this.hairUp();
      }
      
      internal function frame335() : *
      {
         if(self is Foe)
         {
            self.shoot1();
         }
         else
         {
            self.castSpell();
         }
      }
      
      internal function frame347() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame356() : *
      {
         if(!zombieMode && Players.P3equips[2] == 9 || Players.P3equips[2] == 10)
         {
            this.eyes.gotoAndStop(1);
         }
      }
      
      internal function frame365() : *
      {
         k();
      }
      
      internal function frame366() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame373() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame382() : *
      {
         if(!zombieMode && Players.P3equips[2] == 9 || Players.P3equips[2] == 10)
         {
            this.eyes.gotoAndStop(2);
         }
      }
      
      internal function frame405() : *
      {
         if(zombieMode)
         {
            playSound("evilLance3");
         }
      }
      
      internal function frame407() : *
      {
         this.hairUp();
      }
      
      internal function frame408() : *
      {
         if(!zombieMode && Players.P3equips[2] == 9 || Players.P3equips[2] == 10)
         {
            this.eyes.gotoAndStop(1);
         }
         if(self is Foe)
         {
            self.shoot2();
         }
         else
         {
            self.castSpell();
         }
         Battle.shake("tiny");
      }
      
      internal function frame426() : *
      {
         this.hairDown();
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame442() : *
      {
         k();
      }
      
      internal function frame443() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame456() : *
      {
         setXY();
         makeMagic(Snipe2,0,0);
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame458() : *
      {
         if(!zombieMode)
         {
            Battle.finalHit = false;
         }
         self.attack4();
      }
      
      internal function frame461() : *
      {
         if(zombieMode)
         {
            self.attack4b();
         }
      }
      
      internal function frame464() : *
      {
         setXY();
         makeMagic(Snipe2,0,0);
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame466() : *
      {
         self.attack4();
      }
      
      internal function frame467() : *
      {
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[3]);
         }
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[2]);
         }
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[11]);
         }
      }
      
      internal function frame469() : *
      {
         Battle.bonusSpell(1.5);
      }
      
      internal function frame477() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame491() : *
      {
         if(self is Player)
         {
            if(!drainage())
            {
               k();
            }
         }
         else
         {
            k();
         }
      }
      
      internal function frame492() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame499() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame511() : *
      {
         if(zombieMode)
         {
            playSound("evilLance3");
         }
      }
      
      internal function frame527() : *
      {
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[14]);
         }
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame529() : *
      {
         Battle.finalHit = false;
         self.attack5();
      }
      
      internal function frame534() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame536() : *
      {
         Battle.finalHit = false;
         self.attack5();
      }
      
      internal function frame541() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame543() : *
      {
         Battle.finalHit = false;
         self.attack5();
      }
      
      internal function frame548() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame550() : *
      {
         Battle.finalHit = false;
         self.attack5();
      }
      
      internal function frame555() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame557() : *
      {
         Battle.finalHit = false;
         self.attack5();
      }
      
      internal function frame562() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame564() : *
      {
         self.attack5();
      }
      
      internal function frame567() : *
      {
         Battle.bonusSpell();
      }
      
      internal function frame568() : *
      {
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[12]);
         }
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[13]);
         }
      }
      
      internal function frame573() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame586() : *
      {
         if(self is Player)
         {
            if(!drainage())
            {
               k();
            }
         }
         else
         {
            k();
         }
      }
      
      internal function frame587() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame593() : *
      {
         setXY();
         makeMagic(Snipe,0,0);
      }
      
      internal function frame613() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame615() : *
      {
         makeMagic(EffectElement2,0,0);
      }
      
      internal function frame617() : *
      {
         if(self is Player)
         {
            Battle.bonusSpell();
         }
      }
      
      internal function frame623() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame636() : *
      {
         if(self is Player)
         {
            if(!drainage())
            {
               k();
            }
         }
         else
         {
            k();
         }
      }
      
      internal function frame637() : *
      {
         Global.playSound("bighit");
         deathFace = Math.floor(Math.random() * 12 + 1);
         if(self is Foe)
         {
            Battle.whiteFlash();
         }
      }
      
      internal function frame640() : *
      {
         grave = Math.floor(Math.random() * 8) + 2;
      }
      
      internal function frame643() : *
      {
         if(self is Player)
         {
            Text.death(3);
         }
      }
      
      internal function frame655() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_2)
         {
            Text.speech(Text.lance[5]);
         }
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3 && Battle.foeCount() > 1)
         {
            Text.speech(Text.lance[22]);
         }
      }
      
      internal function frame667() : *
      {
         dead();
      }
      
      internal function frame669() : *
      {
         Global.playSound("bigheal");
      }
      
      internal function frame686() : *
      {
         if(self is Player)
         {
            Text.revive(3);
         }
      }
      
      internal function frame706() : *
      {
         k();
      }
      
      internal function frame713() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame714() : *
      {
         setXY();
         move(-40,12,null);
      }
      
      internal function frame720() : *
      {
         swapLayer();
      }
      
      internal function frame725() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame728() : *
      {
         Battle.finalHit = false;
         self.attack1();
         makeMagic(EffectElement,0,0);
      }
      
      internal function frame732() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame733() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame734() : *
      {
         self.attack1();
         makeMagic(EffectElement2,0,0);
      }
      
      internal function frame736() : *
      {
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[40]);
         }
      }
      
      internal function frame738() : *
      {
         Battle.bonusSpell(2.5);
      }
      
      internal function frame739() : *
      {
         resetLayer();
      }
      
      internal function frame753() : *
      {
         if(!zombieMode)
         {
            stealItem();
         }
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame754() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame773() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame777() : *
      {
         this.hairDown();
      }
      
      internal function frame778() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame781() : *
      {
         self.castSpell();
      }
      
      internal function frame783() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame804() : *
      {
         k();
      }
      
      internal function frame815() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame816() : *
      {
         setXY();
         move(-40,12,null);
      }
      
      internal function frame822() : *
      {
         swapLayer();
      }
      
      internal function frame827() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame828() : *
      {
         makeMagic(EffectElement3,0,0);
      }
      
      internal function frame830() : *
      {
         self.attack2();
      }
      
      internal function frame831() : *
      {
         Battle.shake("big");
      }
      
      internal function frame835() : *
      {
         Battle.bonusSpell();
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame836() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame838() : *
      {
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[4]);
         }
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[5]);
         }
      }
      
      internal function frame841() : *
      {
         resetLayer();
      }
      
      internal function frame855() : *
      {
         if(!zombieMode)
         {
            stealItem();
         }
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame878() : *
      {
         self.passItem();
      }
      
      internal function frame888() : *
      {
         k();
      }
      
      internal function frame921() : *
      {
         if(self is Player)
         {
            Text.eat(3);
         }
      }
      
      internal function frame930() : *
      {
         self.eatItem();
      }
      
      internal function frame964() : *
      {
         if(self is Player)
         {
            Text.eat(3);
         }
      }
      
      internal function frame973() : *
      {
         self.eatItem();
      }
      
      internal function frame974() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame975() : *
      {
         if(self is Player)
         {
            Text.backupOut(3);
         }
      }
      
      internal function frame976() : *
      {
         if(self is Player)
         {
            Text.flee(3);
         }
      }
      
      internal function frame985() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame990() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame999() : *
      {
         if(isSummon)
         {
            k();
         }
         else if(self is Foe)
         {
            flee();
         }
         else
         {
            stop();
            Battle.standby();
         }
      }
      
      internal function frame1000() : *
      {
         Global.playSound("defhit");
         if(zombieMode)
         {
            playSound("evilLance3");
         }
      }
      
      internal function frame1020() : *
      {
         k();
      }
      
      internal function frame1041() : *
      {
         self.throwItem();
      }
      
      internal function frame1050() : *
      {
         k();
      }
      
      internal function frame1052() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame1061() : *
      {
         this.hairDown();
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame1074() : *
      {
         k();
      }
      
      internal function frame1076() : *
      {
         freezeSound(2);
         freeze = true;
      }
      
      internal function frame1094() : *
      {
         frozen();
      }
      
      internal function frame1095() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame1105() : *
      {
         if(zombieMode)
         {
            self.equip1();
         }
         else
         {
            changeEquips();
         }
      }
      
      internal function frame1106() : *
      {
         this.hairUp();
      }
      
      internal function frame1113() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame1118() : *
      {
         if(self is Player)
         {
            Text.equip(3);
         }
      }
      
      internal function frame1129() : *
      {
         k();
      }
      
      internal function frame1130() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame1139() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame1154() : *
      {
         self.castSpell();
      }
      
      internal function frame1155() : *
      {
         stop();
      }
      
      internal function frame1247() : *
      {
         stop();
         Battle.standby(self);
      }
      
      internal function frame1288() : *
      {
         done();
      }
      
      internal function frame1290() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame1297() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame1308() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame1309() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1321() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame1322() : *
      {
         this.hairUp();
      }
      
      internal function frame1323() : *
      {
         Battle.shake("big");
      }
      
      internal function frame1330() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame1331() : *
      {
         Battle.finalHit = false;
         self.hyperbeam();
      }
      
      internal function frame1332() : *
      {
         Battle.shake("big");
      }
      
      internal function frame1334() : *
      {
         Battle.finalHit = false;
         self.hyperbeam();
      }
      
      internal function frame1337() : *
      {
         self.hyperbeam();
      }
      
      internal function frame1349() : *
      {
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[8]);
         }
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[9]);
         }
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[43]);
         }
      }
      
      internal function frame1354() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame1366() : *
      {
         if(zombieMode)
         {
            k();
         }
         else
         {
            gotoAndPlay("jump2");
         }
      }
      
      internal function frame1367() : *
      {
         if(self.status[Status.CHARGE])
         {
            gotoAndPlay("special2");
            self.status[Status.CHARGE] = 0;
         }
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame1374() : *
      {
         if(zombieMode)
         {
            playSound("evilLance4");
         }
      }
      
      internal function frame1419() : *
      {
         this.hairUp();
      }
      
      internal function frame1420() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame1422() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1423() : *
      {
         self.charge();
      }
      
      internal function frame1424() : *
      {
         if(self is Player)
         {
            Text.speech(Text.lanceSkills[7]);
         }
      }
      
      internal function frame1425() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame1438() : *
      {
         gotoAndPlay("jump2");
      }
      
      internal function frame1439() : *
      {
         getJumpXY();
      }
      
      internal function frame1448() : *
      {
         move(0,12,null);
      }
      
      internal function frame1454() : *
      {
         if(Battle.selectedSkill == Spells.hyperbeam)
         {
            putOnTop();
         }
      }
      
      internal function frame1467() : *
      {
         stop();
         self.useSkill(Battle.selectedSkill,true);
      }
      
      internal function frame1477() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame1483() : *
      {
         if(Battle.selectedSkill == Spells.hyperbeam)
         {
            putOnTop(false);
         }
      }
      
      internal function frame1497() : *
      {
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame1498() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame1520() : *
      {
         Battle.shake("tiny");
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame1523() : *
      {
         Battle.shake("tiny");
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame1527() : *
      {
         Battle.shake("tiny");
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame1530() : *
      {
         Battle.shake("tiny");
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame1533() : *
      {
         Battle.shake("tiny");
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame1537() : *
      {
         Battle.shake("tiny");
         self.special3();
      }
      
      internal function frame1545() : *
      {
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame1555() : *
      {
         k();
      }
      
      internal function frame1556() : *
      {
         if(zombieMode)
         {
            playSound("evilLance1");
         }
      }
      
      internal function frame1578() : *
      {
         Battle.shake("big");
      }
      
      internal function frame1586() : *
      {
         self.special4();
      }
      
      internal function frame1594() : *
      {
         self.special4b();
         if(zombieMode)
         {
            playSound("evilLance2");
         }
      }
      
      internal function frame1598() : *
      {
         if(self is Foe && Flags.battleEvent == Flags.EVIL_LANCE)
         {
            Text.speech(Text.evilLance[12]);
         }
      }
      
      internal function frame1615() : *
      {
         k();
      }
      
      internal function frame1616() : *
      {
         openMouth = false;
         this.hairUp();
         Battle.shake("small");
         Battle.whiteFlash();
         if(zombieMode)
         {
            playSound("evilLanceHit2");
         }
      }
      
      internal function frame1641() : *
      {
         if(zombieMode)
         {
            playSound("evilLanceHit2");
         }
      }
      
      internal function frame1642() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1670() : *
      {
         if(zombieMode)
         {
            playSound("evilLanceHit2");
         }
      }
      
      internal function frame1671() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1679() : *
      {
         if(zombieMode)
         {
            playSound("evilLanceHit1");
         }
      }
      
      internal function frame1693() : *
      {
         Text.speech(Text.evilLance[6]);
      }
      
      internal function frame1703() : *
      {
         if(Battle.stage.checkBusy() > 1)
         {
            gotoAndPlay("die3");
         }
      }
      
      internal function frame1744() : *
      {
         self.deathExplosion();
      }
      
      internal function frame1915() : *
      {
         this.hairDown();
      }
      
      internal function frame1916() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1974() : *
      {
         dropItems();
      }
      
      internal function frame1993() : *
      {
         Medals.unlock(Medals.twistedMetal);
         Flags.EVIL_LANCE_DEFEATED.quantity = 1;
         Battle.bossDefeated();
      }
      
      internal function frame1998() : *
      {
         dead();
      }
   }
}

