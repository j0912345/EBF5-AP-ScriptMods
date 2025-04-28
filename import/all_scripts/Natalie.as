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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11831")]
   public dynamic class Natalie extends PlayerMC
   {
      public function Natalie()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,5,this.frame6,9,this.frame10,20,this.frame21,21,this.frame22,23,this.frame24,24,this.frame25,34,this.frame35,35,this.frame36,37,this.frame38,39,this.frame40,41,this.frame42,42,this.frame43,45,this.frame46,70,this.frame71,71,this.frame72,72,this.frame73,92,this.frame93,93,this.frame94,94,this.frame95,124,this.frame125,139,this.frame140,177,this.frame178,178,this.frame179,179,this.frame180,211,this.frame212,212,this.frame213,250,this.frame251,277,this.frame278,278,this.frame279,325,this.frame326,339,this.frame340,340,this.frame341,341,this.frame342,346,this.frame347,348,this.frame349,362,this.frame363,381,this.frame382,382,this.frame383,395,this.frame396,428,this.frame429,436,this.frame437,442,this.frame443,451,this.frame452,459,this.frame460,460,this.frame461,468,this.frame469,482,this.frame483,483,this.frame484,505,this.frame506,519,this.frame520,538,this.frame539,563,this.frame564,582,this.frame583,591,this.frame592,618,this.frame619,620,this.frame621,641,this.frame642,657,this.frame658,670,this.frame671,672,this.frame673,673,this.frame674,682,this.frame683,689,this.frame690,703,this.frame704,723,this.frame724,724,this.frame725,751,this.frame752,759,this.frame760,793,this.frame794,815,this.frame816,820,this.frame821,839,this.frame840,840,this.frame841,859,this.frame860,880,this.frame881,882,this.frame883,901,this.frame902,915,this.frame916,927,this.frame928,928,this.frame929,966,this.frame967,1025,this.frame1026,1054,this.frame1055,1055,this.frame1056,1092,this.frame1093,1104,this.frame1105,1105,this.frame1106,1131,this.frame1132,1141,this.frame1142,1142,this.frame1143,1143,this.frame1144,1171,this.frame1172,1183,this.frame1184,1184,this.frame1185,1191,this.frame1192,1211,this.frame1212,1219,this.frame1220,1239,this.frame1240,1240,this.frame1241,1246,this.frame1247,1564,this.frame1565,1584,this.frame1585,1594,this.frame1595,1595,this.frame1596,1660,this.frame1661,1663,this.frame1664,1664,this.frame1665,1728,this.frame1729,1732,this.frame1733);
      }
      
      internal function frame1() : *
      {
         init();
         playerNo = 2;
         monster = 1;
         if(isSummon || !self.isPlayer)
         {
            zombieNatz = true;
         }
      }
      
      internal function frame3() : *
      {
         gotoAndPlay("equip2");
      }
      
      internal function frame6() : *
      {
         playerNo = 2;
         if(self is Foe && self.catchRate == Catching.UNCATCHABLE && SaveData.questNo == 1)
         {
            Players.equips[2] = [2,3,8,2,2,2,1];
         }
      }
      
      internal function frame10() : *
      {
         mouseChildren = true;
      }
      
      internal function frame21() : *
      {
         if(self is Foe && zombieMode && !(self is Summon) && SaveData.questNo == 1 && Foes.isScanned(self))
         {
            Text.speech(Text.evilNatz[17]);
         }
      }
      
      internal function frame22() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.natalie[1]);
         }
      }
      
      internal function frame24() : *
      {
         if(self is Player)
         {
            Text.equip(2);
         }
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame25() : *
      {
         if(self is Player)
         {
            Text.backupIn(2);
         }
      }
      
      internal function frame35() : *
      {
         if(isSummon)
         {
            Text.speech(Text.evilNatz[7]);
         }
         if(self is Foe && Flags.battleEvent == Flags.EVIL_NATALIE)
         {
            Text.speech(Text.evilNatz[8]);
         }
      }
      
      internal function frame36() : *
      {
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            Text.speech(Text.arena[1]);
         }
      }
      
      internal function frame38() : *
      {
         if(isSummon)
         {
            stop();
         }
         k();
      }
      
      internal function frame40() : *
      {
         stand();
         idle.zombieMode = zombieMode;
         idle.zombieNatz = zombieNatz;
         Players.hasItem(17,2);
         if(Players.hasItem(19,2) || Players.hasItem(33,2))
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
         Global.playSound("lilhit");
      }
      
      internal function frame43() : *
      {
         if(self is Player)
         {
            Text.hit(2);
         }
      }
      
      internal function frame46() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.natalie[5]);
         }
      }
      
      internal function frame71() : *
      {
         k();
      }
      
      internal function frame72() : *
      {
         Global.playSound("bighit");
      }
      
      internal function frame73() : *
      {
         if(self is Player)
         {
            Text.bigHit(2);
         }
      }
      
      internal function frame93() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.natalie[5]);
         }
      }
      
      internal function frame94() : *
      {
         getHit2();
      }
      
      internal function frame95() : *
      {
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame125() : *
      {
         if(zombieMode)
         {
            self.defend();
         }
         self.defend();
      }
      
      internal function frame140() : *
      {
         k();
      }
      
      internal function frame178() : *
      {
         done();
      }
      
      internal function frame179() : *
      {
         k();
      }
      
      internal function frame180() : *
      {
         Global.playSound("bigheal");
      }
      
      internal function frame212() : *
      {
         k();
      }
      
      internal function frame213() : *
      {
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame251() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else if(zombieMode)
         {
            self.magic1();
         }
         else
         {
            self.castSpell();
         }
      }
      
      internal function frame278() : *
      {
         k();
      }
      
      internal function frame279() : *
      {
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame326() : *
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
      
      internal function frame340() : *
      {
         k();
      }
      
      internal function frame341() : *
      {
         deathFace = Math.floor(Math.random() * 12 + 2);
         Global.playSound("bighit");
         if(self is Foe)
         {
            Battle.whiteFlash();
         }
      }
      
      internal function frame342() : *
      {
         grave = Math.floor(Math.random() * 8) + 1;
      }
      
      internal function frame347() : *
      {
         if(self is Player)
         {
            Text.death(2);
         }
      }
      
      internal function frame349() : *
      {
         if(self is Foe && !zombieMode)
         {
            Text.speech(Text.natalie[9]);
         }
      }
      
      internal function frame363() : *
      {
         pauseNestedAnimations = false;
      }
      
      internal function frame382() : *
      {
         dead();
      }
      
      internal function frame383() : *
      {
         Global.playSound("bigheal");
      }
      
      internal function frame396() : *
      {
         if(self is Player)
         {
            Text.revive(2);
         }
      }
      
      internal function frame429() : *
      {
         k();
      }
      
      internal function frame437() : *
      {
         setXY();
         if(self is Player)
         {
            move(-45,16,null);
         }
         else
         {
            move(45,16,null);
         }
      }
      
      internal function frame443() : *
      {
         swapLayer();
      }
      
      internal function frame452() : *
      {
         self.attack1();
      }
      
      internal function frame460() : *
      {
         if(self is Player)
         {
            Battle.bonusSpell(5);
         }
         else if(zombieMode)
         {
            self.bonusSpell();
         }
      }
      
      internal function frame461() : *
      {
         resetXY();
         move(0,16,null);
      }
      
      internal function frame469() : *
      {
         if(self is Player)
         {
            Text.speech(Text.natzSkills[3]);
         }
         if(self is Player)
         {
            Text.speech(Text.natzSkills[4]);
         }
         resetLayer();
      }
      
      internal function frame483() : *
      {
         if(!zombieMode)
         {
            stealItem();
         }
         if(zombieMode && false)
         {
            if(self.status[Status.BERSERK])
            {
               gotoAndPlay("attack");
               --self.status[Status.BERSERK];
            }
            else
            {
               k();
            }
         }
         else if(self is Foe || !drainage())
         {
            k();
         }
      }
      
      internal function frame484() : *
      {
         getXY(12,30);
      }
      
      internal function frame506() : *
      {
         self.attack2();
      }
      
      internal function frame520() : *
      {
         Battle.bonusSpell(5);
      }
      
      internal function frame539() : *
      {
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame564() : *
      {
         foodBubble = 2;
      }
      
      internal function frame583() : *
      {
         if(self is Player)
         {
            Text.eat(2);
         }
      }
      
      internal function frame592() : *
      {
         self.eatItem();
      }
      
      internal function frame619() : *
      {
         self.passItem();
      }
      
      internal function frame621() : *
      {
         k();
      }
      
      internal function frame642() : *
      {
         foodBubble = 2;
      }
      
      internal function frame658() : *
      {
         if(self is Player)
         {
            Text.eat(2);
         }
      }
      
      internal function frame671() : *
      {
         self.eatItem();
      }
      
      internal function frame673() : *
      {
         if(self is Player)
         {
            Text.backupOut(2);
         }
      }
      
      internal function frame674() : *
      {
         if(self is Player)
         {
            Text.flee(2);
         }
      }
      
      internal function frame683() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame690() : *
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
      
      internal function frame704() : *
      {
         Global.playSound("defhit");
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame724() : *
      {
         k();
      }
      
      internal function frame725() : *
      {
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame752() : *
      {
         self.castSpell();
      }
      
      internal function frame760() : *
      {
         k();
      }
      
      internal function frame794() : *
      {
         k();
      }
      
      internal function frame816() : *
      {
         self.throwItem();
      }
      
      internal function frame821() : *
      {
         k();
      }
      
      internal function frame840() : *
      {
         k();
      }
      
      internal function frame841() : *
      {
         freezeSound(2);
         freeze = true;
      }
      
      internal function frame860() : *
      {
         frozen();
      }
      
      internal function frame881() : *
      {
         k();
      }
      
      internal function frame883() : *
      {
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame902() : *
      {
         if(!isSummon)
         {
            changeEquips();
         }
      }
      
      internal function frame916() : *
      {
         if(self is Player)
         {
            Text.equip(2);
         }
      }
      
      internal function frame928() : *
      {
         if(isSummon && Battle.foeCount() > 3)
         {
            gotoAndPlay("magic4");
         }
      }
      
      internal function frame929() : *
      {
         k();
      }
      
      internal function frame967() : *
      {
         skin = 16;
      }
      
      internal function frame1026() : *
      {
         stop();
         Battle.standby(self);
      }
      
      internal function frame1055() : *
      {
         done();
      }
      
      internal function frame1056() : *
      {
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame1093() : *
      {
         if(zombieMode)
         {
            self.magic6();
         }
         else
         {
            self.castSpell();
         }
      }
      
      internal function frame1105() : *
      {
         k();
      }
      
      internal function frame1106() : *
      {
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame1132() : *
      {
         if(!isSummon)
         {
            if(self is Foe)
            {
               self.magic4();
            }
            else
            {
               self.castSpell();
            }
         }
      }
      
      internal function frame1142() : *
      {
         if(isSummon)
         {
            k();
         }
         else if(zombieMode)
         {
            gotoAndPlay("magic1");
         }
      }
      
      internal function frame1143() : *
      {
         k();
      }
      
      internal function frame1144() : *
      {
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame1172() : *
      {
         if(zombieMode)
         {
            self.magic5();
         }
         else if(self is Foe)
         {
            self.magic4();
         }
         else
         {
            self.castSpell();
         }
      }
      
      internal function frame1184() : *
      {
         k();
      }
      
      internal function frame1185() : *
      {
         getJumpXY();
      }
      
      internal function frame1192() : *
      {
         move(-90,12,null);
      }
      
      internal function frame1212() : *
      {
         stop();
         self.useSkill(Battle.selectedSkill,true);
      }
      
      internal function frame1220() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame1240() : *
      {
         if(!drainage())
         {
            k();
         }
      }
      
      internal function frame1241() : *
      {
         openMouth = false;
         Global.playSound("lilhit");
         Battle.whiteFlash();
      }
      
      internal function frame1247() : *
      {
         Text.speech(Text.evilNatz[6]);
      }
      
      internal function frame1565() : *
      {
         dropItems();
      }
      
      internal function frame1585() : *
      {
         Medals.unlock(Medals.burnTheWitch);
         Flags.EVIL_NATZ_DEFEATED.quantity = 1;
         Battle.bossDefeated();
      }
      
      internal function frame1595() : *
      {
         dead();
      }
      
      internal function frame1596() : *
      {
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame1661() : *
      {
         self.special3();
      }
      
      internal function frame1664() : *
      {
         k();
      }
      
      internal function frame1665() : *
      {
         if(zombieMode)
         {
            Global.circle = 3;
         }
         else
         {
            Global.circle = 1;
         }
      }
      
      internal function frame1729() : *
      {
         self.special4();
      }
      
      internal function frame1733() : *
      {
         k();
      }
   }
}

