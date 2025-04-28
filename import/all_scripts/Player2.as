package
{
   import text.*;
   
   public class Player2 extends Player
   {
      public function Player2()
      {
         super();
         name = SetStrings.getPlayerName(1);
         playerNo = 2;
         graphicType = "Natalie";
         skin = 16;
         weapon = Equips.darktooth;
         armor = Equips.reddress;
         hat = Equips.redribbon;
         flair1 = Equips.empty;
         flair2 = Equips.empty;
         flair3 = Equips.empty;
         this.setStats();
         if(Debug.skillSet == 0)
         {
            skillsMain = [Spells.luckystar,Spells.starpower,Spells.cleanse,Spells.fire,Spells.ice,Spells.thunder,Spells.toxic,Spells.pulse,Spells.pulsar,Spells.shine,Spells.judgement,Spells.spectrum,Spells.syphon,Spells.heal,null,null,null,null,null,null,null];
            skillsLimit = [Spells.staffstrike,Spells.kyun,Spells.genesis,null,null,null,null];
         }
         if(Debug.skillSet == 1)
         {
            skillsMain = [Spells.fire,Spells.ice,Spells.thunder,Spells.heal,Spells.bubbles,Spells.energy,Spells.air];
            skillsLimit = [Spells.staffstrike,Spells.kyun];
            if(Debug.expoDemo)
            {
               skillsLimit = [Spells.staffstrike,Spells.genesis];
            }
         }
         if(Debug.skillSet == 2)
         {
            skillsMain = [Spells.luckystar,Spells.starpower,Spells.cleanse,Spells.fireball,Spells.iceshard,Spells.thunderbolt,Spells.toxic,Spells.pulse,Spells.shine,Spells.spectrum,Spells.syphon,Spells.healmore,Spells.whirlpool,Spells.airwave,Spells.energybomb,Spells.barrier,Spells.purify];
            skillsLimit = [Spells.staffstrike,Spells.kyun,Spells.genesis];
            if(Debug.expoDemo)
            {
               skillsLimit = [Spells.staffstrike,Spells.genesis,Spells.supernova];
            }
         }
         if(Debug.skillSet == 3)
         {
            skillsMain = [Spells.starshower,Spells.starpower,Spells.cleanse,Spells.firestorm,Spells.icestorm,Spells.thunderstorm,Spells.toxic,Spells.pulse,Spells.pulsar,Spells.shine,Spells.judgement,Spells.spectrum2,Spells.syphon2,Spells.healmore,Spells.vortex,Spells.shockwave,Spells.energybarrage,Spells.barrier,Spells.revive,Spells.purify];
            skillsLimit = [Spells.staffstrike,Spells.kyun,Spells.genesis,undefined,Spells.supernova,Spells.blackhole,Spells.rapture];
            if(Debug.expoDemo)
            {
               skillsLimit = [Spells.staffstrike,Spells.genesis,Spells.supernova,Spells.blackhole,Spells.rapture];
            }
         }
         skillsSub = [];
         berserkSkill = Spells.luckystar;
         berserkSkill2 = Spells.starshower;
         berserkSkill3 = Spells.luckystar;
         init();
         levelUp();
      }
      
      override public function setStats() : *
      {
         HP = 165;
         attack = 4.2 * Constants.ATK_MOD;
         magicAttack = 7.1 * Constants.ATK_MOD;
         defence = 5.4 * Constants.DEF_MOD;
         magicDefence = 6.3 * Constants.DEF_MOD;
         accuracy = 4.1 * Constants.ACC_MOD;
         evade = 4.3 * Constants.EVA_MOD;
      }
      
      public function attack1() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats()));
      }
   }
}

