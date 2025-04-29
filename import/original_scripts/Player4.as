package
{
   import text.*;
   
   public class Player4 extends Player
   {
      public function Player4()
      {
         super();
         name = SetStrings.getPlayerName(3);
         playerNo = 4;
         graphicType = "Anna";
         skin = 10;
         weapon = Equips.fairybow;
         armor = Equips.rangerskirt;
         hat = Equips.orangebauble;
         flair1 = Equips.empty;
         flair2 = Equips.empty;
         flair3 = Equips.empty;
         this.setStats();
         if(Debug.skillSet == 0)
         {
            skillsMain = [Spells.piercingshot,Spells.arrowrain,Spells.comboshot,Spells.bowwhack,Spells.razorleaf,Spells.log,Spells.gust,Spells.soularrow,Spells.sparkarrow,Spells.aquaarrow,Spells.frostarrow,Spells.nitroarrow,Spells.renew,Spells.dispel,null,null,null,null,null,null,null];
            skillsLimit = [Spells.arrowcut,Spells.motherearth,Spells.mightyoak,null,null,null,null];
         }
         if(Debug.skillSet == 1)
         {
            skillsMain = [Spells.piercingshot,Spells.bowwhack,Spells.gust,Spells.renew,Spells.ivy,Spells.gaiaglow];
            skillsLimit = [Spells.arrowcut,Spells.motherearth,Spells.mightyoak];
         }
         if(Debug.skillSet == 2)
         {
            skillsMain = [Spells.piercingshot,Spells.comboshot,Spells.bowwhack,Spells.razorleaf,Spells.log,Spells.whirlwind,Spells.soularrow,Spells.sparkarrow,Spells.aquaarrow,Spells.frostarrow,Spells.nitroarrow,Spells.remedy,Spells.bind,Spells.gaiabloom,Spells.vines,Spells.sawblade];
            skillsLimit = [Spells.arrowcut,Spells.motherearth,Spells.mightyoak];
         }
         if(Debug.skillSet == 3)
         {
            skillsMain = [Spells.piercingshot,Spells.arrowrain,Spells.comboshot,Spells.bowwhack,Spells.razorleaf2,Spells.lumber,Spells.hurricane,Spells.soularrow2,Spells.sparkarrow2,Spells.aquaarrow2,Spells.frostarrow2,Spells.nitroarrow2,Spells.remedy,Spells.bind,Spells.gaiablossom,Spells.vines,Spells.reflex,Spells.firespin,Spells.screamer,Spells.snowcat];
            skillsLimit = [Spells.arrowcut,Spells.motherearth,Spells.mightyoak,Spells.abzero,Spells.tsunami,Spells.annihilate];
         }
         skillsSub = [];
         berserkSkill = Spells.piercingshot;
         berserkSkill2 = Spells.comboshot;
         berserkSkill3 = Spells.arrowrain;
         init();
         levelUp();
      }
      
      override public function setStats() : *
      {
         HP = 175;
         attack = 6.2 * Constants.ATK_MOD;
         magicAttack = 6 * Constants.ATK_MOD;
         defence = 5.5 * Constants.DEF_MOD;
         magicDefence = 5.4 * Constants.DEF_MOD;
         accuracy = 4.4 * Constants.ACC_MOD;
         evade = 4.5 * Constants.EVA_MOD;
      }
      
      public function attack1() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats()));
      }
      
      public function attack2() : *
      {
         Global.bowwhack = true;
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats()));
         Catching.considerSurrender(Catching.SKILL_BOOST,true);
         Global.bowwhack = false;
      }
   }
}

