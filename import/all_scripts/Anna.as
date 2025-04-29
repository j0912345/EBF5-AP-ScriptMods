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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12552")]
   public dynamic class Anna extends PlayerMC
   {
      public var bow:MovieClip;
      
      public function Anna()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,17,this.frame18,18,this.frame19,19,this.frame20,20,this.frame21,28,this.frame29,30,this.frame31,31,this.frame32,33,this.frame34,35,this.frame36,36,this.frame37,64,this.frame65,65,this.frame66,66,this.frame67,88,this.frame89,104,this.frame105,132,this.frame133,167,this.frame168,168,this.frame169,169,this.frame170,201,this.frame202,246,this.frame247,267,this.frame268,294,this.frame295,329,this.frame330,330,this.frame331,331,this.frame332,346,this.frame347,349,this.frame350,368,this.frame369,369,this.frame370,370,this.frame371,389,this.frame390,416,this.frame417,417,this.frame418,474,this.frame475,534,this.frame535,535,this.frame536,546,this.frame547,550,this.frame551,558,this.frame559,561,this.frame562,562,this.frame563,564,this.frame565,568,this.frame569,579,this.frame580,586,this.frame587,601,this.frame602,603,this.frame604,615,this.frame616,616,this.frame617,623,this.frame624,634,this.frame635,638,this.frame639,640,this.frame641,650,this.frame651,656,this.frame657,663,this.frame664,666,this.frame667,689,this.frame690,691,this.frame692,707,this.frame708,714,this.frame715,726,this.frame727,729,this.frame730,733,this.frame734,744,this.frame745,747,this.frame748,748,this.frame749,754,this.frame755,824,this.frame825,834,this.frame835,886,this.frame887,894,this.frame895,912,this.frame913,924,this.frame925,963,this.frame964,977,this.frame978,979,this.frame980,980,this.frame981,994,this.frame995,1009,this.frame1010,1010,this.frame1011,1011,this.frame1012,1030,this.frame1031,1048,this.frame1049,1057,this.frame1058,1058,this.frame1059,1077,this.frame1078,1078,this.frame1079,1097,this.frame1098,1108,this.frame1109,1111,this.frame1112,1124,this.frame1125,1128,this.frame1129,1129,this.frame1130,1147,this.frame1148,1162,this.frame1163,1335,this.frame1336,1356,this.frame1357,1372,this.frame1373,1381,this.frame1382,1385,this.frame1386,1392,this.frame1393,1394,this.frame1395,1398,this.frame1399,1405,this.frame1406,1416,this.frame1417,1417,this.frame1418,1425,this.frame1426,1444,this.frame1445,1453,this.frame1454,1472,this.frame1473,1484,this.frame1485,1497,this.frame1498,1513,this.frame1514,1525,this.frame1526,1547,this.frame1548,1554,this.frame1555,1581,this.frame1582,1616,this.frame1617);
      }
      
      internal function frame1() : *
      {
         init();
         playerNo = 4;
         skin = 10;
         if(isSummon || !self.isPlayer)
         {
            zombieAnna = true;
         }
      }
      
      internal function frame3() : *
      {
         gotoAndPlay("equip2");
      }
      
      internal function frame7() : *
      {
         playerNo = 4;
         if(self is Foe && self.catchRate == Catching.UNCATCHABLE && SaveData.questNo == 1)
         {
            Players.equips[4] = [2,22,4,2,2,2,4];
         }
      }
      
      internal function frame18() : *
      {
         if(self is Player)
         {
            Text.equip(4);
         }
      }
      
      internal function frame19() : *
      {
         if(self is Foe && zombieMode && !(self is Summon) && SaveData.questNo == 1 && Foes.isScanned(self))
         {
            Text.speech(Text.evilAnna[14]);
         }
         if(self is Player)
         {
            Text.backupIn(4);
         }
      }
      
      internal function frame20() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.anna[1]);
         }
      }
      
      internal function frame21() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame29() : *
      {
         if(isSummon)
         {
            Text.speech(Text.evilAnna[7]);
         }
         if(self is Foe && Flags.battleEvent == Flags.EVIL_ANNA)
         {
            Text.speech(Text.evilAnna[8]);
         }
      }
      
      internal function frame31() : *
      {
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            Text.speech(Text.arena[3]);
         }
      }
      
      internal function frame32() : *
      {
         k();
      }
      
      internal function frame34() : *
      {
         stand();
         idle.zombieMode = zombieMode;
         idle.zombieAnna = zombieAnna;
         if(Players.hasItem(19,4) || Players.hasItem(33,4))
         {
            hideMouth = true;
         }
         else
         {
            hideMouth = false;
         }
      }
      
      internal function frame36() : *
      {
         openMouth = false;
         Global.playSound("lilhit");
      }
      
      internal function frame37() : *
      {
         if(self is Player)
         {
            Text.hit(4);
         }
      }
      
      internal function frame65() : *
      {
         k();
      }
      
      internal function frame66() : *
      {
         Global.playSound("bighit");
      }
      
      internal function frame67() : *
      {
         if(self is Player)
         {
            Text.bigHit(4);
         }
      }
      
      internal function frame89() : *
      {
         getHit2();
      }
      
      internal function frame105() : *
      {
         if(!isSummon)
         {
            if(!zombieMode)
            {
               self.defend();
            }
            else
            {
               self.defend1();
            }
         }
      }
      
      internal function frame133() : *
      {
         k();
      }
      
      internal function frame168() : *
      {
         done();
      }
      
      internal function frame169() : *
      {
         k();
      }
      
      internal function frame170() : *
      {
         Global.playSound("bigheal");
      }
      
      internal function frame202() : *
      {
         k();
      }
      
      internal function frame247() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else if(self is Player)
         {
            self.castSpell();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame268() : *
      {
         k();
      }
      
      internal function frame295() : *
      {
         if(!zombieMode)
         {
            self.castSpell();
         }
         else
         {
            self.magic2();
         }
      }
      
      internal function frame330() : *
      {
         k();
      }
      
      internal function frame331() : *
      {
         deathFace = Math.floor(Math.random() * 13 + 20);
         Global.playSound("bighit");
         if(self is Foe)
         {
            Battle.whiteFlash();
         }
      }
      
      internal function frame332() : *
      {
         grave = Math.floor(Math.random() * 8) + 2;
      }
      
      internal function frame347() : *
      {
         if(self is Player)
         {
            Text.death(4);
         }
      }
      
      internal function frame350() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.anna[14]);
         }
      }
      
      internal function frame369() : *
      {
         if(self is Foe)
         {
            Medals.unlock(Medals.firewood);
            Battle.bossDefeated();
         }
      }
      
      internal function frame370() : *
      {
         dead();
      }
      
      internal function frame371() : *
      {
         Global.playSound("bigheal");
      }
      
      internal function frame390() : *
      {
         if(self is Player)
         {
            Text.revive(4);
         }
      }
      
      internal function frame417() : *
      {
         k();
      }
      
      internal function frame418() : *
      {
         skin = 10;
      }
      
      internal function frame475() : *
      {
         stop();
         Battle.standby(self);
      }
      
      internal function frame535() : *
      {
         done();
      }
      
      internal function frame536() : *
      {
         stop();
      }
      
      internal function frame547() : *
      {
         setXY();
         if(self is Player)
         {
            move(-45,12,null);
         }
         else
         {
            move(45,12,null);
         }
      }
      
      internal function frame551() : *
      {
         swapLayer();
      }
      
      internal function frame559() : *
      {
         self.attack1();
         makeMagic(EffectElement2,0,0);
      }
      
      internal function frame562() : *
      {
         if(self is Player)
         {
            Battle.bonusSpell(2.5);
         }
         else
         {
            self.bonusSpell();
         }
      }
      
      internal function frame563() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame565() : *
      {
         if(self is Player)
         {
            Text.speech(Text.annaSkills[6]);
         }
      }
      
      internal function frame569() : *
      {
         resetLayer();
      }
      
      internal function frame580() : *
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
      
      internal function frame587() : *
      {
         this.bow.gotoAndStop(2);
      }
      
      internal function frame602() : *
      {
         this.bow.gotoAndStop(1);
      }
      
      internal function frame604() : *
      {
         if(self is Player)
         {
            Text.speech(Text.annaSkills[5]);
         }
         if(self is Player)
         {
            self.castSpell();
         }
         else
         {
            self.shoot1();
         }
      }
      
      internal function frame616() : *
      {
         if(zombieMode)
         {
            self.shoot1b();
         }
      }
      
      internal function frame617() : *
      {
         k();
      }
      
      internal function frame624() : *
      {
         this.bow.gotoAndStop(2);
      }
      
      internal function frame635() : *
      {
         if(self is Player)
         {
            Text.speech(Text.annaSkills[2]);
         }
      }
      
      internal function frame639() : *
      {
         this.bow.gotoAndStop(1);
      }
      
      internal function frame641() : *
      {
         if(!zombieMode)
         {
            self.castSpell();
         }
         else
         {
            self.shoot2();
         }
      }
      
      internal function frame651() : *
      {
         if(self is Player)
         {
            Text.speech(Text.annaSkills[3]);
         }
         if(self is Player)
         {
            Text.speech(Text.annaSkills[6]);
         }
      }
      
      internal function frame657() : *
      {
         k();
      }
      
      internal function frame664() : *
      {
         this.bow.gotoAndStop(2);
      }
      
      internal function frame667() : *
      {
         if(self is Player)
         {
            Text.speech(Text.annaSkills[1]);
         }
      }
      
      internal function frame690() : *
      {
         this.bow.gotoAndStop(1);
      }
      
      internal function frame692() : *
      {
         if(self is Player)
         {
            self.castSpell();
         }
         else
         {
            self.shoot3();
         }
      }
      
      internal function frame708() : *
      {
         k();
      }
      
      internal function frame715() : *
      {
         this.bow.gotoAndStop(2);
      }
      
      internal function frame727() : *
      {
         if(self is Player)
         {
            Text.speech(Text.annaSkills[2]);
         }
      }
      
      internal function frame730() : *
      {
         this.bow.gotoAndStop(1);
      }
      
      internal function frame734() : *
      {
         if(self is Player)
         {
            Text.speech(Text.annaSkills[4]);
         }
      }
      
      internal function frame745() : *
      {
         if(!zombieMode)
         {
            self.castSpell();
         }
         else
         {
            self.shoot4();
         }
      }
      
      internal function frame748() : *
      {
         k();
      }
      
      internal function frame749() : *
      {
         if(zombieMode)
         {
            self.shoot5();
         }
         else
         {
            self.castSpell();
         }
      }
      
      internal function frame755() : *
      {
         this.bow.gotoAndStop(2);
      }
      
      internal function frame825() : *
      {
         this.bow.gotoAndStop(1);
      }
      
      internal function frame835() : *
      {
         gotoAndPlay("intro");
      }
      
      internal function frame887() : *
      {
         if(self is Player)
         {
            Text.eat(4);
         }
      }
      
      internal function frame895() : *
      {
         self.eatItem();
      }
      
      internal function frame913() : *
      {
         self.passItem();
      }
      
      internal function frame925() : *
      {
         k();
      }
      
      internal function frame964() : *
      {
         if(self is Player)
         {
            Text.eat(4);
         }
      }
      
      internal function frame978() : *
      {
         self.eatItem();
      }
      
      internal function frame980() : *
      {
         if(self is Player)
         {
            Text.backupOut(4);
         }
      }
      
      internal function frame981() : *
      {
         if(self is Player)
         {
            Text.flee(4);
         }
      }
      
      internal function frame995() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame1010() : *
      {
         if(isSummon)
         {
            k();
         }
         else if(self is Foe)
         {
            if(self.status[Status.SURRENDER])
            {
               if(!zombieMode)
               {
                  Medals.unlock(Medals.firewood);
               }
               flee();
            }
            else
            {
               stop();
            }
         }
      }
      
      internal function frame1011() : *
      {
         stop();
         Battle.standby();
      }
      
      internal function frame1012() : *
      {
         Global.playSound("defhit");
      }
      
      internal function frame1031() : *
      {
         k();
      }
      
      internal function frame1049() : *
      {
         self.throwItem();
      }
      
      internal function frame1058() : *
      {
         if(zombieMode)
         {
            self.throwItemb();
         }
      }
      
      internal function frame1059() : *
      {
         k();
      }
      
      internal function frame1078() : *
      {
         k();
      }
      
      internal function frame1079() : *
      {
         freezeSound(2);
         freeze = true;
      }
      
      internal function frame1098() : *
      {
         frozen();
      }
      
      internal function frame1109() : *
      {
         if(zombieMode)
         {
            playSound(178);
         }
         else
         {
            playSound(176);
         }
      }
      
      internal function frame1112() : *
      {
         if(!zombieMode)
         {
            changeEquips();
         }
         else
         {
            self.equip1();
         }
      }
      
      internal function frame1125() : *
      {
         if(self is Player)
         {
            Text.equip(4);
         }
      }
      
      internal function frame1129() : *
      {
         if(zombieMode)
         {
            gotoAndPlay("defend");
         }
      }
      
      internal function frame1130() : *
      {
         k();
      }
      
      internal function frame1148() : *
      {
         Battle.whiteFlash();
      }
      
      internal function frame1163() : *
      {
         Text.speech(Text.evilAnna[6]);
      }
      
      internal function frame1336() : *
      {
         dropItems();
      }
      
      internal function frame1357() : *
      {
         Medals.unlock(Medals.demonHunter);
         Flags.EVIL_ANNA_DEFEATED.quantity = 1;
         Battle.bossDefeated();
      }
      
      internal function frame1373() : *
      {
         dead();
      }
      
      internal function frame1382() : *
      {
         setXY();
         move(zombieMode ? 90 : -90,13,null);
      }
      
      internal function frame1386() : *
      {
         swapLayer();
      }
      
      internal function frame1393() : *
      {
         makeMagic(EffectElement2,0,0);
      }
      
      internal function frame1395() : *
      {
         self.attack2();
         makeMagic(EffectSmash,0,0);
      }
      
      internal function frame1399() : *
      {
         resetXY();
         move(0,13,null);
      }
      
      internal function frame1406() : *
      {
         resetLayer();
      }
      
      internal function frame1417() : *
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
      
      internal function frame1418() : *
      {
         getJumpXY();
      }
      
      internal function frame1426() : *
      {
         move(-90,12,null);
      }
      
      internal function frame1445() : *
      {
         stop();
         self.useSkill(Battle.selectedSkill,true);
      }
      
      internal function frame1454() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame1473() : *
      {
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame1485() : *
      {
         if(zombieMode)
         {
            playSound(178);
         }
         else
         {
            playSound(177);
         }
      }
      
      internal function frame1498() : *
      {
         if(!zombieMode)
         {
            self.castSpell();
         }
         else
         {
            self.shoot1();
         }
      }
      
      internal function frame1514() : *
      {
         k();
      }
      
      internal function frame1526() : *
      {
         if(zombieMode)
         {
            playSound(178);
         }
         else
         {
            playSound(177);
         }
      }
      
      internal function frame1548() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special3();
         }
      }
      
      internal function frame1555() : *
      {
         k();
      }
      
      internal function frame1582() : *
      {
         if(!zombieMode)
         {
            self.castSpell();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame1617() : *
      {
         k();
      }
   }
}

