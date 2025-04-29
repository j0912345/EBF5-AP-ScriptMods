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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11361")]
   public dynamic class NoLegs extends PlayerMC
   {
      public var swSpell:Class;
      
      public var aura:MovieClip;
      
      public var hat:MovieClip;
      
      public var head:MovieClip;
      
      public var eyes:MovieClip;
      
      public var cat:int;
      
      public var cuts:int;
      
      public function NoLegs()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,4,this.frame5,5,this.frame6,18,this.frame19,19,this.frame20,21,this.frame22,26,this.frame27,29,this.frame30,31,this.frame32,32,this.frame33,34,this.frame35,36,this.frame37,37,this.frame38,40,this.frame41,43,this.frame44,51,this.frame52,63,this.frame64,64,this.frame65,65,this.frame66,70,this.frame71,87,this.frame88,88,this.frame89,89,this.frame90,103,this.frame104,110,this.frame111,132,this.frame133,135,this.frame136,149,this.frame150,155,this.frame156,178,this.frame179,192,this.frame193,193,this.frame194,194,this.frame195,219,this.frame220,220,this.frame221,240,this.frame241,241,this.frame242,254,this.frame255,261,this.frame262,262,this.frame263,276,this.frame277,277,this.frame278,295,this.frame296,324,this.frame325,333,this.frame334,334,this.frame335,349,this.frame350,368,this.frame369,369,this.frame370,372,this.frame373,381,this.frame382,382,this.frame383,389,this.frame390,408,this.frame409,410,this.frame411,415,this.frame416,418,this.frame419,423,this.frame424,424,this.frame425,447,this.frame448,448,this.frame449,471,this.frame472,480,this.frame481,481,this.frame482,501,this.frame502,516,this.frame517,519,this.frame520,526,this.frame527,527,this.frame528,534,this.frame535,549,this.frame550,552,this.frame553,561,this.frame562,572,this.frame573,605,this.frame606,612,this.frame613,613,this.frame614,631,this.frame632,632,this.frame633,652,this.frame653,653,this.frame654,654,this.frame655,661,this.frame662,669,this.frame670,677,this.frame678,678,this.frame679,736,this.frame737,737,this.frame738,778,this.frame779,780,this.frame781,789,this.frame790,808,this.frame809,809,this.frame810,818,this.frame819,837,this.frame838,838,this.frame839,860,this.frame861,861,this.frame862,867,this.frame868,868,this.frame869,873,this.frame874,884,this.frame885,886,this.frame887,887,this.frame888,895,this.frame896,896,this.frame897,902,this.frame903,907,this.frame908,908,this.frame909,909,this.frame910,913,this.frame914,915,this.frame916,917,this.frame918,919,this.frame920,921,this.frame922,923,this.frame924,926,this.frame927,927,this.frame928,928,this.frame929,933,this.frame934,947,this.frame948,948,this.frame949,956,this.frame957,957,this.frame958,963,this.frame964,969,this.frame970,970,this.frame971,973,this.frame974,974,this.frame975,976,this.frame977,978,this.frame979,980,this.frame981,982,this.frame983,984,this.frame985,986,this.frame987,988,this.frame989,990,this.frame991,992,this.frame993,995,this.frame996,998,this.frame999,1003,this.frame1004,1005,this.frame1006,1006,this.frame1007,1007,this.frame1008,1008,this.frame1009,1014,this.frame1015,1015,this.frame1016,1016,this.frame1017,1018,this.frame1019,1020,this.frame1021,1034,this.frame1035,1035,this.frame1036,1043,this.frame1044,1044,this.frame1045,1051,this.frame1052,1054,this.frame1055,1064,this.frame1065,1065,this.frame1066,1072,this.frame1073,1082,this.frame1083,1084,this.frame1085,1085,this.frame1086,1090,this.frame1091,1101,this.frame1102,1112,this.frame1113,1113,this.frame1114,1138,this.frame1139,1145,this.frame1146,1148,this.frame1149,1158,this.frame1159,1159,this.frame1160,1166,this.frame1167,1167,this.frame1168,1184,this.frame1185,1192,this.frame1193,1193,this.frame1194,1203,this.frame1204,1204,this.frame1205,1211,this.frame1212,1212,this.frame1213,1227,this.frame1228,1229,this.frame1230,1238,this.frame1239,1239,this.frame1240,1249,this.frame1250,1250,this.frame1251,1260,this.frame1261,1261,this.frame1262,1270,this.frame1271,1277,this.frame1278,1278,this.frame1279,1279,this.frame1280,1285,this.frame1286,1294,this.frame1295,1295,this.frame1296,1297,this.frame1298,1303,this.frame1304,1304,this.frame1305,1310,this.frame1311,1315,this.frame1316,1319,this.frame1320,1320,this.frame1321,1325,this.frame1326,1331,this.frame1332,1332,this.frame1333,1338,this.frame1339,1339,this.frame1340,1344,this.frame1345,1350,this.frame1351,1351,this.frame1352,1355,this.frame1356,1356,this.frame1357,1357,this.frame1358,1361,this.frame1362,1375,this.frame1376,1376,this.frame1377,1384,this.frame1385,1395,this.frame1396,1402,this.frame1403,1419,this.frame1420,1422,this.frame1423,1428,this.frame1429,1436,this.frame1437,1447,this.frame1448,1450,this.frame1451,1451,this.frame1452,1459,this.frame1460,1470,this.frame1471,1477,this.frame1478,1478,this.frame1479,1491,this.frame1492,1505,this.frame1506,1519,this.frame1520,1522,this.frame1523,1524,this.frame1525,1534,this.frame1535,1584,this.frame1585,1597,this.frame1598,1635,this.frame1636,1645,this.frame1646,1655,this.frame1656,1684,this.frame1685,1687,this.frame1688,1689,this.frame1690,1691,this.frame1692,1692,this.frame1693,1694,this.frame1695,1695,this.frame1696,1698,this.frame1699,1701,this.frame1702,1706,this.frame1707,1711,this.frame1712,1727,this.frame1728,1728,this.frame1729,1852,this.frame1853,1862,this.frame1863,1945,this.frame1946,1996,this.frame1997,2021,this.frame2022,2022,this.frame2023,2032,this.frame2033,2033,this.frame2034,2034,this.frame2035,2036,this.frame2037,2070,this.frame2071,2072,this.frame2073,2077,this.frame2078,2078,this.frame2079,2082,this.frame2083,2088,this.frame2089,2091,this.frame2092,2093,this.frame2094,2094,this.frame2095);
      }
      
      public function swordSpell() : *
      {
      }
      
      internal function frame1() : *
      {
         this.swSpell = [WindSlash,WindSlash2][int(Math.random() * 2)];
         init();
         playerNo = 5;
         skin = 1;
         openMouth = false;
         if(isSummon || !self.isPlayer)
         {
            zombieNoLegs = true;
         }
      }
      
      internal function frame3() : *
      {
         gotoAndPlay("equip2");
      }
      
      internal function frame5() : *
      {
         playerNo = 5;
         if(self is Foe && self.catchRate == Catching.UNCATCHABLE && SaveData.questNo == 1)
         {
            Players.equips[5] = [1,13,12,2,2,2,1];
         }
      }
      
      internal function frame6() : *
      {
         if(Players.hasItem(19,5) || Players.hasItem(33,5))
         {
            hideMouth = true;
         }
         else
         {
            hideMouth = false;
         }
      }
      
      internal function frame19() : *
      {
         if(self is Player)
         {
            Text.equip(5);
         }
      }
      
      internal function frame20() : *
      {
         if(self is Player)
         {
            Text.backupIn(5);
         }
      }
      
      internal function frame22() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame27() : *
      {
         if(self is Foe && zombieMode && !(self is Summon) && SaveData.questNo == 1 && Foes.isScanned(self))
         {
            Text.speech(Text.evilNolegs[18]);
         }
      }
      
      internal function frame30() : *
      {
         if(isSummon)
         {
            Text.speech(Text.evilNolegs[8]);
         }
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.nolegs[1]);
         }
         if(self is Foe && Flags.battleEvent == Flags.EVIL_NOLEGS)
         {
            Text.speech(Text.evilNolegs[1]);
         }
      }
      
      internal function frame32() : *
      {
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            Text.speech(Text.arena[4]);
         }
      }
      
      internal function frame33() : *
      {
         if(!zombieMode)
         {
            stealItem();
         }
         if(isSummon)
         {
            k();
         }
         else if(self is Player)
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
      
      internal function frame35() : *
      {
         stand();
         if(Players.hasItem(19,5) || Players.hasItem(33,5))
         {
            hideMouth = true;
            idle.hideMouth = true;
         }
         else
         {
            hideMouth = false;
         }
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame37() : *
      {
         openMouth = false;
         Global.playSound("lilhit");
         if(this.head.mouth.currentFrame == 1)
         {
            this.head.mouth.gotoAndStop(int(Math.random() * 4 + 40));
         }
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame38() : *
      {
         if(Flags.battleEvent == Flags.NATALIE_BATTLE)
         {
            Text.speech(Text.natalie[6]);
         }
         if(self is Player)
         {
            Text.hit(5);
         }
      }
      
      internal function frame41() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.nolegs[4]);
         }
      }
      
      internal function frame44() : *
      {
         if(self is Foe && Flags.battleEvent == Flags.EVIL_NOLEGS)
         {
            Text.speech(Text.evilNolegs[9]);
            Text.speech(Text.evilNolegs[10]);
            if(self.getHpPercent() < 70)
            {
               Text.speech(Text.evilNolegs[11]);
            }
            if(self.getHpPercent() < 40)
            {
               Text.speech(Text.evilNolegs[16]);
            }
         }
      }
      
      internal function frame52() : *
      {
         this.head.mouth.gotoAndStop(1);
      }
      
      internal function frame64() : *
      {
         k();
      }
      
      internal function frame65() : *
      {
         Global.playSound("bighit");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame66() : *
      {
         if(self is Player)
         {
            Text.bigHit(5);
         }
      }
      
      internal function frame71() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.nolegs[4]);
         }
      }
      
      internal function frame88() : *
      {
         getHit2();
      }
      
      internal function frame89() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame90() : *
      {
         if(zombieMode || Players.P5equips[0] == 1 || Players.P5equips[0] == 3 || Players.P5equips[0] == 10 || Players.P5equips[0] == 14 || Players.P5equips[0] == 15 || Players.P5equips[0] == 20)
         {
            gotoAndPlay("defend2");
         }
      }
      
      internal function frame104() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame111() : *
      {
         self.defend();
      }
      
      internal function frame133() : *
      {
         k();
      }
      
      internal function frame136() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame150() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame156() : *
      {
         if(self is Player)
         {
            self.defend();
         }
         else
         {
            self.defend2();
         }
      }
      
      internal function frame179() : *
      {
         k();
      }
      
      internal function frame193() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame194() : *
      {
         if(self is Player)
         {
            Text.backupOut(5);
         }
      }
      
      internal function frame195() : *
      {
         if(self is Player)
         {
            Text.flee(5);
         }
      }
      
      internal function frame220() : *
      {
         if(isSummon)
         {
            k();
         }
         if(self is Foe)
         {
            flee();
         }
         else
         {
            stop();
            Battle.standby();
         }
      }
      
      internal function frame221() : *
      {
         Global.playSound("defhit");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame241() : *
      {
         k();
      }
      
      internal function frame242() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame255() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.nolegs[3]);
         }
      }
      
      internal function frame262() : *
      {
         k();
      }
      
      internal function frame263() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame277() : *
      {
         k();
      }
      
      internal function frame278() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame296() : *
      {
         this.head.mouth.gotoAndPlay("smile");
      }
      
      internal function frame325() : *
      {
         done();
      }
      
      internal function frame334() : *
      {
         stop();
      }
      
      internal function frame335() : *
      {
         Global.playSound("bigheal");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame350() : *
      {
         this.head.mouth.gotoAndPlay("smile");
      }
      
      internal function frame369() : *
      {
         k();
      }
      
      internal function frame370() : *
      {
         Global.playSound("bighit");
         deathFace = Math.floor(Math.random() * 18 + 1);
         this.head.mouth.visible = false;
         if(self is Foe)
         {
            Battle.whiteFlash();
         }
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame373() : *
      {
         grave = Math.floor(Math.random() * 8) + 2;
      }
      
      internal function frame382() : *
      {
         if(!Flags.CYCLOPS_DEFEATED.quantity && Flags.battleEvent != Flags.NOLEGS_BATTLE)
         {
            Text.speech(Text.tips[21]);
         }
      }
      
      internal function frame383() : *
      {
         if(self is Player)
         {
            Text.death(5);
         }
      }
      
      internal function frame390() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.nolegs[6]);
         }
      }
      
      internal function frame409() : *
      {
         dead();
      }
      
      internal function frame411() : *
      {
         Global.playSound("bigheal");
         this.head.mouth.visible = false;
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame416() : *
      {
         this.head.mouth.visible = true;
      }
      
      internal function frame419() : *
      {
      }
      
      internal function frame424() : *
      {
         this.head.mouth.gotoAndPlay("smile");
      }
      
      internal function frame425() : *
      {
         if(self is Player)
         {
            Text.revive(5);
         }
      }
      
      internal function frame448() : *
      {
         k();
      }
      
      internal function frame449() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame472() : *
      {
         self.passItem();
      }
      
      internal function frame481() : *
      {
         k();
      }
      
      internal function frame482() : *
      {
         this.head.mouth.gotoAndPlay("smirk");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame502() : *
      {
         this.head.mouth.visible = false;
      }
      
      internal function frame517() : *
      {
         if(self is Player)
         {
            Text.eat(5);
         }
      }
      
      internal function frame520() : *
      {
         if(!hideMouth)
         {
            this.head.mouth.visible = true;
         }
      }
      
      internal function frame527() : *
      {
         self.eatItem();
      }
      
      internal function frame528() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame535() : *
      {
         this.head.mouth.visible = false;
      }
      
      internal function frame550() : *
      {
         if(self is Player)
         {
            Text.eat(5);
         }
      }
      
      internal function frame553() : *
      {
         if(!hideMouth)
         {
            this.head.mouth.visible = true;
         }
      }
      
      internal function frame562() : *
      {
         self.eatItem();
      }
      
      internal function frame573() : *
      {
         this.head.mouth.gotoAndPlay("smirk");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame606() : *
      {
         self.throwItem();
      }
      
      internal function frame613() : *
      {
         k();
      }
      
      internal function frame614() : *
      {
         freezeSound(2);
         freeze = true;
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame632() : *
      {
         frozen();
      }
      
      internal function frame633() : *
      {
         this.head.mouth.gotoAndPlay("smirk");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame653() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame654() : *
      {
         if(!zombieMode)
         {
            changeEquips();
         }
      }
      
      internal function frame655() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         if(zombieMode)
         {
            makeMagic(WhiteFlash,0,0);
         }
      }
      
      internal function frame662() : *
      {
         if(self is Player)
         {
            Text.equip(5);
         }
         if(zombieMode)
         {
            self.equip1();
         }
      }
      
      internal function frame670() : *
      {
         if(zombieMode)
         {
            self.equip2();
         }
      }
      
      internal function frame678() : *
      {
         k();
      }
      
      internal function frame679() : *
      {
         this.cat = Math.random() * 6 + 1;
         skin = 6;
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame737() : *
      {
         stop();
         Battle.standby(self);
      }
      
      internal function frame738() : *
      {
         this.cat = Math.random() * 6 + 1;
         skin = 6;
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame779() : *
      {
         done();
      }
      
      internal function frame781() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         getJumpXY();
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame790() : *
      {
         move(0,12,null);
      }
      
      internal function frame809() : *
      {
         stop();
         self.useSkill(Battle.selectedSkill,true);
      }
      
      internal function frame810() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame819() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame838() : *
      {
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame839() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame861() : *
      {
         setXY();
         swapLayer();
         if(self is Player)
         {
            move(100,1,null);
         }
         else
         {
            move(-170,1,null);
         }
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame862() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame868() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.nolegs[2]);
         }
      }
      
      internal function frame869() : *
      {
         self.attack1();
         if(zombieMode && zombieNoLegs)
         {
            makeMagic(EffectStar,0,0);
         }
         else
         {
            makeMagic(getElementEffect(),0,0);
         }
      }
      
      internal function frame874() : *
      {
         Battle.bonusSpell(2.5);
      }
      
      internal function frame885() : *
      {
         resetXY();
         resetLayer();
         move(0,1,null);
      }
      
      internal function frame887() : *
      {
         gotoAndPlay("intro");
      }
      
      internal function frame888() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame896() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame897() : *
      {
         setXY();
         if(self is Player)
         {
            move(-40,12,null);
         }
         else
         {
            move(40,12,null);
         }
      }
      
      internal function frame903() : *
      {
         swapLayer();
      }
      
      internal function frame908() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.nolegs[2]);
         }
      }
      
      internal function frame909() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0);
         }
      }
      
      internal function frame910() : *
      {
         Battle.finalHit = false;
         self.attack2();
      }
      
      internal function frame914() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0);
         }
         this.eyes.gotoAndPlay("blink");
      }
      
      internal function frame916() : *
      {
         Battle.finalHit = false;
         self.attack2();
      }
      
      internal function frame918() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0);
         }
      }
      
      internal function frame920() : *
      {
         Battle.finalHit = false;
         self.attack2();
      }
      
      internal function frame922() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0);
         }
      }
      
      internal function frame924() : *
      {
         self.attack2();
      }
      
      internal function frame927() : *
      {
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[1]);
         }
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[2]);
         }
      }
      
      internal function frame928() : *
      {
         this.eyes.gotoAndPlay(1);
         Battle.bonusSpell();
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame929() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame934() : *
      {
         resetLayer();
      }
      
      internal function frame948() : *
      {
         if(!zombieMode)
         {
            stealItem();
         }
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
      
      internal function frame949() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame957() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame958() : *
      {
         setXY();
         move(zombieMode ? 40 : -40,12,null);
      }
      
      internal function frame964() : *
      {
         swapLayer();
      }
      
      internal function frame970() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0);
         }
      }
      
      internal function frame971() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame974() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0);
         }
      }
      
      internal function frame975() : *
      {
         this.eyes.gotoAndPlay("blink");
      }
      
      internal function frame977() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame979() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0);
         }
      }
      
      internal function frame981() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame983() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0);
         }
      }
      
      internal function frame985() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame987() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0);
         }
      }
      
      internal function frame989() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame991() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0);
         }
      }
      
      internal function frame993() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame996() : *
      {
         Battle.finalHit = false;
         self.attack3();
         this.eyes.gotoAndPlay(1);
      }
      
      internal function frame999() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1004() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1006() : *
      {
         this.eyes.gotoAndPlay("stars");
      }
      
      internal function frame1007() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar,0,0);
         }
      }
      
      internal function frame1008() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1009() : *
      {
         makeMagic(EffectElement,0,0);
      }
      
      internal function frame1015() : *
      {
         if(!zombieMode)
         {
            makeMagic(getElementEffect(),0,0);
         }
         if(zombieMode)
         {
            makeMagic(EffectStar,0,0);
         }
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame1016() : *
      {
         resetXY();
         move(0,12,null);
         this.eyes.gotoAndPlay(1);
         self.attack3();
      }
      
      internal function frame1017() : *
      {
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[1]);
         }
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[2]);
         }
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[3]);
         }
      }
      
      internal function frame1019() : *
      {
         if(self is Player)
         {
            Battle.bonusSpell();
         }
      }
      
      internal function frame1021() : *
      {
         resetLayer();
      }
      
      internal function frame1035() : *
      {
         if(!zombieMode)
         {
            stealItem();
         }
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
      
      internal function frame1036() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame1044() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame1045() : *
      {
         this.eyes.gotoAndPlay("blink");
      }
      
      internal function frame1052() : *
      {
         if(self is Player)
         {
            self.castSpell();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame1055() : *
      {
         this.eyes.gotoAndPlay(1);
      }
      
      internal function frame1065() : *
      {
         k();
      }
      
      internal function frame1066() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame1073() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame1083() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1085() : *
      {
         this.eyes.visible = false;
         this.head.mouth.visible = false;
      }
      
      internal function frame1086() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1091() : *
      {
         self.castSpell();
      }
      
      internal function frame1102() : *
      {
         this.eyes.visible = true;
         if(!hideMouth)
         {
            this.head.mouth.visible = true;
         }
      }
      
      internal function frame1113() : *
      {
         k();
      }
      
      internal function frame1114() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         this.eyes.gotoAndPlay("stars");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame1139() : *
      {
         this.eyes.gotoAndPlay("blink");
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1146() : *
      {
         self.castSpell();
      }
      
      internal function frame1149() : *
      {
         this.eyes.gotoAndPlay(1);
      }
      
      internal function frame1159() : *
      {
         k();
      }
      
      internal function frame1160() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame1167() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame1168() : *
      {
         this.eyes.gotoAndStop("close");
      }
      
      internal function frame1185() : *
      {
         this.eyes.gotoAndPlay("blink");
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1193() : *
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
      
      internal function frame1194() : *
      {
         this.eyes.gotoAndPlay(1);
      }
      
      internal function frame1204() : *
      {
         k();
      }
      
      internal function frame1205() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame1212() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame1213() : *
      {
         this.eyes.gotoAndStop("close");
      }
      
      internal function frame1228() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1230() : *
      {
         this.eyes.gotoAndPlay("blink");
      }
      
      internal function frame1239() : *
      {
         self.castSpell();
      }
      
      internal function frame1240() : *
      {
         this.eyes.gotoAndPlay(1);
      }
      
      internal function frame1250() : *
      {
         k();
      }
      
      internal function frame1251() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame1261() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame1262() : *
      {
         this.eyes.gotoAndPlay("blink");
      }
      
      internal function frame1271() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1278() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar2,0,0,true);
         }
         else
         {
            makeMagic(getElementEffect(),0,0,true);
         }
         self.attack4();
      }
      
      internal function frame1279() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1280() : *
      {
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[7]);
         }
      }
      
      internal function frame1286() : *
      {
         if(self is Foe)
         {
            Text.speech(Text.evilNolegs[12]);
            Text.speech(Text.evilNolegs[14]);
            Text.speech(Text.evilNolegs[17]);
         }
      }
      
      internal function frame1295() : *
      {
         resetPosition();
         gotoAndPlay("intro");
      }
      
      internal function frame1296() : *
      {
         this.cuts = 2;
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame1298() : *
      {
         if(zombieMode)
         {
            self.attack5b();
         }
      }
      
      internal function frame1304() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1305() : *
      {
         setXY();
         move(zombieMode ? 40 : -40,12,null);
      }
      
      internal function frame1311() : *
      {
         swapLayer();
      }
      
      internal function frame1316() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar,0,0);
         }
         else
         {
            this.swordSpell();
         }
         Battle.finalHit = false;
         if(!zombieMode && !Battle.selectedSkill.MC)
         {
            makeMagic(getElementEffect(),0,0);
         }
         self.attack5();
      }
      
      internal function frame1320() : *
      {
         if(this.cuts != 0)
         {
            if(Math.random() > 0.5)
            {
               gotoAndPlay("attack6");
            }
            else
            {
               gotoAndPlay("attack7");
            }
            --this.cuts;
         }
         else
         {
            gotoAndPlay("endAttack");
         }
      }
      
      internal function frame1321() : *
      {
         setXY();
         move(zombieMode ? 40 : -40,12,null);
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1326() : *
      {
         resetLayer();
         swapLayer();
      }
      
      internal function frame1332() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar,0,0);
         }
         else
         {
            this.swordSpell();
         }
      }
      
      internal function frame1333() : *
      {
         if(this.cuts != 0)
         {
            Battle.finalHit = false;
         }
         if(!zombieMode && !Battle.selectedSkill.MC)
         {
            makeMagic(getElementEffect(),0,0);
         }
         self.attack5();
      }
      
      internal function frame1339() : *
      {
         if(this.cuts != 0)
         {
            if(Math.random() > 0.5)
            {
               gotoAndPlay("attack6");
            }
            else
            {
               gotoAndPlay("attack7");
            }
            --this.cuts;
         }
         else
         {
            gotoAndPlay("endAttack");
         }
      }
      
      internal function frame1340() : *
      {
         setXY();
         move(zombieMode ? 40 : -50,12,null);
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1345() : *
      {
         resetLayer();
         swapLayer();
      }
      
      internal function frame1351() : *
      {
         if(zombieMode)
         {
            makeMagic(EffectStar,0,0);
         }
         else
         {
            this.swordSpell();
         }
      }
      
      internal function frame1352() : *
      {
         if(this.cuts != 0)
         {
            Battle.finalHit = false;
         }
         if(!zombieMode && !Battle.selectedSkill.MC)
         {
            makeMagic(getElementEffect(),0,0);
         }
         self.attack5();
      }
      
      internal function frame1356() : *
      {
         if(this.cuts != 0)
         {
            if(Math.random() > 0.5)
            {
               gotoAndPlay("attack6");
            }
            else
            {
               gotoAndPlay("attack7");
            }
            --this.cuts;
         }
         else
         {
            gotoAndPlay("endAttack");
         }
      }
      
      internal function frame1357() : *
      {
         resetXY();
         move(0,12,null);
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame1358() : *
      {
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[33]);
         }
      }
      
      internal function frame1362() : *
      {
         resetLayer();
      }
      
      internal function frame1376() : *
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
      
      internal function frame1377() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame1385() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame1396() : *
      {
         this.eyes.gotoAndPlay("stars");
      }
      
      internal function frame1403() : *
      {
         this.head.mouth.gotoAndPlay("smile");
      }
      
      internal function frame1420() : *
      {
         summonOnTop();
      }
      
      internal function frame1423() : *
      {
         Text.speech(Text.nolegsSkills[10]);
      }
      
      internal function frame1429() : *
      {
         if(!isSummon)
         {
            makeMagic(StarBlast,0,0);
         }
      }
      
      internal function frame1437() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
      }
      
      internal function frame1448() : *
      {
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[9]);
         }
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[8]);
         }
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[19]);
         }
      }
      
      internal function frame1451() : *
      {
         if(isSummon)
         {
            summonOnTop(false);
            k();
         }
         else
         {
            gotoAndPlay("intro");
         }
      }
      
      internal function frame1452() : *
      {
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame1460() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame1471() : *
      {
         this.eyes.gotoAndStop("close");
      }
      
      internal function frame1478() : *
      {
         this.head.mouth.gotoAndPlay("smile");
      }
      
      internal function frame1479() : *
      {
         if(self is Player)
         {
            Text.speech(Text.nolegsSkills[21]);
         }
      }
      
      internal function frame1492() : *
      {
         makeMagic(HealMax,0,0);
      }
      
      internal function frame1506() : *
      {
         this.eyes.gotoAndStop(1);
      }
      
      internal function frame1520() : *
      {
         k();
      }
      
      internal function frame1523() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         this.eyes.gotoAndPlay("stars");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1525() : *
      {
         self.castSpell();
      }
      
      internal function frame1535() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1585() : *
      {
         this.eyes.gotoAndPlay("blink");
      }
      
      internal function frame1598() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1636() : *
      {
         k();
      }
      
      internal function frame1646() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         this.eyes.gotoAndPlay("stars");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame1656() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1685() : *
      {
         this.eyes.gotoAndPlay("blink");
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1688() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame1690() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1692() : *
      {
         Battle.shake("big");
      }
      
      internal function frame1693() : *
      {
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame1695() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame1696() : *
      {
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame1699() : *
      {
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame1702() : *
      {
         self.special3();
      }
      
      internal function frame1707() : *
      {
         Text.speech(Text.evilNolegs[12]);
         Text.speech(Text.evilNolegs[14]);
         Text.speech(Text.evilNolegs[17]);
      }
      
      internal function frame1712() : *
      {
         this.eyes.gotoAndPlay(1);
      }
      
      internal function frame1728() : *
      {
         k();
      }
      
      internal function frame1729() : *
      {
         Global.playSound("bighit");
         deathFace = Math.floor(Math.random() * 18 + 1);
         this.head.mouth.visible = false;
         Battle.whiteFlash();
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame1853() : *
      {
         if(self is Foe && Flags.battleEvent == Flags.EVIL_NOLEGS)
         {
            Text.speech(Text.evilNolegs[7]);
         }
      }
      
      internal function frame1863() : *
      {
         if(Battle.menu.speechBox.visible)
         {
            gotoAndPlay(1855);
         }
      }
      
      internal function frame1946() : *
      {
         dropItems();
      }
      
      internal function frame1997() : *
      {
         Medals.unlock(Medals.superSaiyan);
         Flags.EVIL_NOLEGS_DEFEATED.quantity = 1;
         Battle.bossDefeated();
      }
      
      internal function frame2022() : *
      {
         dead();
      }
      
      internal function frame2023() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         if(!zombieMode)
         {
            this.aura.visible = false;
         }
      }
      
      internal function frame2033() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura1");
         }
      }
      
      internal function frame2034() : *
      {
         this.eyes.gotoAndStop("close");
      }
      
      internal function frame2035() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame2037() : *
      {
         Battle.shake("small");
      }
      
      internal function frame2071() : *
      {
         if(zombieMode)
         {
            Global.playSound("aura2");
         }
      }
      
      internal function frame2073() : *
      {
         this.eyes.gotoAndPlay("blink");
      }
      
      internal function frame2078() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame2079() : *
      {
         Battle.shake("big");
      }
      
      internal function frame2083() : *
      {
         this.eyes.gotoAndPlay(1);
      }
      
      internal function frame2089() : *
      {
         if(!isSummon)
         {
            self.special4();
         }
      }
      
      internal function frame2092() : *
      {
         Text.speech(Text.evilNolegs[15]);
         if(!(self is Summon))
         {
            Text.speech(Text.evilNolegs[13]);
         }
         Text.speech(Text.evilNolegs[17]);
      }
      
      internal function frame2094() : *
      {
      }
      
      internal function frame2095() : *
      {
         k();
      }
   }
}

