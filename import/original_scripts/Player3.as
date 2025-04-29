package
{
   import text.*;
   
   public class Player3 extends Player
   {
      public function Player3()
      {
         super();
         name = SetStrings.getPlayerName(2);
         playerNo = 3;
         graphicType = "Lance";
         skin = 22;
         weapon = Equips.shadowblaster;
         armor = Equips.officercoat;
         hat = Equips.officerhat;
         flair1 = Equips.empty;
         flair2 = Equips.empty;
         flair3 = Equips.empty;
         this.setStats();
         if(Debug.skillSet == 0)
         {
            skillsMain = [Spells.snipe,Spells.doubleshot,Spells.unloadd,Spells.plasma,Spells.flameshot,Spells.darkblast,Spells.airstrike1,Spells.crush,Spells.tankgun,Spells.airstrike3,Spells.poisongas,Spells.medipack,Spells.hyperbeam,Spells.debilitate,null,null,null,null,null,null,null];
            skillsLimit = [Spells.pistolwhip,Spells.oblivion,Spells.nuke,Spells.ion,null,null,null];
         }
         if(Debug.skillSet == 1)
         {
            skillsMain = [Spells.snipe,Spells.doubleshot,Spells.plasma,Spells.flameshot,Spells.darkblast,Spells.lockon];
            skillsLimit = [Spells.pistolwhip,Spells.oblivion];
         }
         if(Debug.skillSet == 2)
         {
            skillsMain = [Spells.snipe,Spells.doubleshot,Spells.plasmawave,Spells.flameburst,Spells.gravitysurge,Spells.airstrike1,Spells.crush,Spells.tankgun,Spells.poisongas,Spells.medipack,Spells.lockon,Spells.flare,Spells.debilitate,Spells.enfeeble];
            skillsLimit = [Spells.pistolwhip,Spells.oblivion,Spells.nuke];
         }
         if(Debug.skillSet == 3)
         {
            skillsMain = [Spells.snipe,Spells.doubleshot,Spells.unloadd,Spells.plasmacross,Spells.bullethell,Spells.antimatter,Spells.airstrike2,Spells.crush,Spells.tankgun,Spells.airstrike3,Spells.poisongas,Spells.medipack2,Spells.hyperbeam,Spells.lockon,Spells.flare,Spells.debilitate,Spells.enfeeble,Spells.holyfire,Spells.dispel,undefined];
            skillsLimit = [Spells.pistolwhip,Spells.oblivion,Spells.nuke,Spells.ion,Spells.blackhole,undefined,Spells.rapture];
         }
         skillsSub = [];
         berserkSkill = Spells.snipe;
         berserkSkill2 = Spells.doubleshot;
         berserkSkill3 = Spells.unloadd;
         init();
         levelUp();
      }
      
      override public function setStats() : *
      {
         HP = 185;
         attack = 6.1 * Constants.ATK_MOD;
         magicAttack = 6.2 * Constants.ATK_MOD;
         defence = 5.5 * Constants.DEF_MOD;
         magicDefence = 5.5 * Constants.DEF_MOD;
         accuracy = 4.7 * Constants.ACC_MOD;
         evade = 3.9 * Constants.EVA_MOD;
      }
      
      public function attack1() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats(100 / 2)));
      }
      
      public function snipe() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats()));
      }
      
      public function attack4() : *
      {
         graphic.makeMagic(EffectElement2,0,0);
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats(100 / 2)));
         if(Battle.selectedTarget.dead && !Battle.foesDead())
         {
            Battle.selectedTarget = Battle.randomWeakFoe();
         }
      }
      
      public function attack5() : *
      {
         graphic.makeMagic(EffectSmash,0,0);
         graphic.makeMagic(EffectSmash2,0,0);
         graphic.makeMagic(EffectElement,0,0);
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats(100 / 6))) / 2;
         if(Battle.selectedTarget.dead && !Battle.foesDead())
         {
            Battle.selectedTarget = Battle.randomWeakFoe();
         }
      }
      
      public function attack2() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats())) / 2;
      }
      
      public function charge() : *
      {
         Skills.giveStatus(this,Status.CHARGE,3);
      }
      
      public function hyperbeam() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats(100 / 3))) / 3;
      }
   }
}

