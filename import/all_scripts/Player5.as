package
{
   import text.*;
   
   public class Player5 extends Player
   {
      public function Player5()
      {
         super();
         name = SetStrings.getPlayerName(4);
         playerNo = 5;
         graphicType = "NoLegs";
         monster = 23;
         weapon = Equips.steelbuckler;
         armor = Equips.heroicarmor;
         hat = Equips.knighthelmet;
         flair1 = Equips.empty;
         flair2 = Equips.empty;
         flair3 = Equips.empty;
         this.setStats();
         if(Debug.skillSet == 0)
         {
            skillsMain = [Spells.swiftslash,Spells.sworddance,Spells.rapidslash,Spells.windslash,Spells.waterslash,Spells.lightningslash,Spells.holyslash,Spells.darkslash,Spells.charm,Spells.berserk,Spells.starblast,Spells.ninelives,Spells.sushicat,Spells.barrier,null,null,null,null,null,null,null];
            skillsLimit = [Spells.backstab,Spells.thedestroyer,Spells.thecreator,null,null,null,null];
         }
         if(Debug.skillSet == 1)
         {
            skillsMain = [Spells.sworddance,Spells.rapidslash,Spells.berserk,Spells.charm,Spells.sushicat,Spells.partytime];
            skillsLimit = [Spells.backstab,Spells.thecreator];
         }
         if(Debug.skillSet == 2)
         {
            skillsMain = [Spells.swiftslash,Spells.sworddance2,Spells.rapidslash,Spells.windslash,Spells.waterslash,Spells.lightningslash,Spells.holyslash,Spells.darkslash,Spells.charm,Spells.berserk,Spells.sushicat2,Spells.snowbunny,Spells.partytime,Spells.laserblade];
            skillsLimit = [Spells.backstab,Spells.thedestroyer,Spells.thecreator];
         }
         if(Debug.skillSet == 3)
         {
            skillsMain = [Spells.swiftslash,Spells.sworddance3,Spells.rapidslash2,Spells.windslash2,Spells.waterslash2,Spells.lightningslash2,Spells.holyslash2,Spells.darkslash2,Spells.charm2,Spells.berserk2,Spells.starblast,Spells.ninelives,Spells.sushicat2,Spells.snowcat,Spells.reflex,Spells.partytime,Spells.firespin,Spells.lasersword,Spells.screamer,Spells.bigbullet,Spells.powermetal];
            skillsLimit = [Spells.backstab,Spells.thedestroyer,Spells.thecreator,Spells.annihilate,Spells.tsunami,Spells.rapture];
         }
         skillsSub = [];
         berserkSkill = Spells.swiftslash;
         berserkSkill2 = Spells.sworddance3;
         berserkSkill3 = Spells.rapidslash2;
         init();
         levelUp();
      }
      
      override public function setStats() : *
      {
         HP = 110;
         attack = 6.5 * Constants.ATK_MOD;
         magicAttack = 6.1 * Constants.ATK_MOD;
         defence = 5.3 * Constants.DEF_MOD;
         magicDefence = 5.9 * Constants.DEF_MOD;
         accuracy = 4.3 * Constants.ACC_MOD;
         evade = 7.6 * Constants.EVA_MOD;
      }
      
      public function attack1() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats()));
      }
      
      public function attack2() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats(100 / 4)));
      }
      
      public function attack3() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats(100 / 11)));
      }
      
      public function attack4() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats())) / 2;
      }
      
      public function attack5() : *
      {
         if(!Battle.selectedSkill.MC)
         {
            drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats(100 / 3)));
            if(Battle.selectedTarget.dead)
            {
               Battle.selectedTarget = Battle.randomWeakFoe();
               ++graphic.cuts;
               Text.speech(Text.nolegsSkills[4]);
               Text.speech(Text.nolegsSkills[5]);
               Text.speech(Text.nolegsSkills[6]);
            }
            if(Battle.foeCount() == 0)
            {
               graphic.cuts = 0;
            }
         }
         else
         {
            castSpell();
         }
      }
   }
}

