package
{
   import text.*;
   
   public class Player1 extends Player
   {
      public function Player1()
      {
         super();
         name = SetStrings.getPlayerName(0);
         playerNo = 1;
         graphicType = "Matt";
         skin = 20;
         weapon = Equips.ultrapro9000;
         armor = Equips.hoboclothes;
         hat = Equips.captainhat;
         flair1 = Equips.empty;
         flair2 = Equips.empty;
         flair3 = Equips.empty;
         this.setStats();
         Spells.protect.owned = 1;
         Spells.protect.level = 1;
         if(Debug.skillSet == 0)
         {
            skillsMain = [Spells.quickslash,Spells.slicingcyclone,Spells.unleash,Spells.revenge,Spells.legend,Spells.stealitem,Spells.temper,Spells.lightblade,Spells.earthedge,Spells.geysergush,Spells.firespire,Spells.frostfragment,Spells.nettleknife,Spells.protect,null,null,null,null,null,null,null];
            skillsLimit = [Spells.slash,Spells.cleaver,Spells.ragnarok,null,null,null,null];
         }
         if(Debug.skillSet == 1)
         {
            skillsMain = [Spells.quickslash,Spells.stealitem,Spells.temper,Spells.lightblade,Spells.earthedge,Spells.geysergush];
            skillsLimit = [Spells.slash,Spells.cleaver];
         }
         if(Debug.skillSet == 2)
         {
            skillsMain = [Spells.quickslash,Spells.slicingcyclone,Spells.unleash,Spells.revenge,Spells.legend,Spells.stealitem,Spells.temper,Spells.lightblade,Spells.quakespikes,Spells.pouringpike,Spells.firespire,Spells.frostfragment,Spells.nettleknife,Spells.laserblade,Spells.bullet,Spells.gale,Spells.protect];
            skillsLimit = [Spells.slash,Spells.cleaver,Spells.ragnarok];
         }
         if(Debug.skillSet == 3)
         {
            skillsMain = [Spells.quickslash,Spells.slicingcyclone,Spells.unleash,Spells.revenge,Spells.legend,Spells.stealitem,Spells.temper,Spells.holysword,Spells.cataclysmiccut,Spells.surgingskewer,Spells.lavalance,Spells.glacialglaive,Spells.shreddingshrub,Spells.lasersword,Spells.teradrill,Spells.bigbullet,Spells.tempest,Spells.protect,Spells.guardian,Spells.powermetal];
            skillsLimit = [Spells.slash,Spells.cleaver,Spells.ragnarok,Spells.annihilate,Spells.deathmetal,undefined,Spells.rapture];
         }
         skillsSub = [];
         berserkSkill = Spells.quickslash;
         berserkSkill2 = Spells.unleash;
         berserkSkill3 = Spells.legend;
         init();
         levelUp();
      }
      
      public static function stealItem(param1:int, param2:Boolean = true) : *
      {
         var _loc3_:Item = null;
         if(param1 < 1)
         {
            param1 = 1;
         }
         var _loc4_:int = int(Math.random() * 3) + param1 - 2;
         var _loc5_:int = int((Battle.selectedTarget as Foe).dropList.length - 1);
         if(_loc4_ > _loc5_)
         {
            _loc4_ = _loc5_;
         }
         if(_loc4_ > 3)
         {
            _loc4_ = 3;
         }
         if(_loc4_ < 0)
         {
            _loc4_ = 0;
         }
         _loc3_ = (Battle.selectedTarget as Foe).dropList[_loc4_][0];
         ++_loc3_.quantity;
         DamageNumber.displayDamage(DamageNumber.STEAL,0,Battle.selectedTarget);
         Global.itemIcon = _loc3_.icon;
         if(param2)
         {
            (Battle.selectedTarget as Foe).stolenFrom = true;
         }
      }
      
      override public function setStats() : *
      {
         HP = 210;
         attack = 6.6 * Constants.ATK_MOD;
         magicAttack = 5.4 * Constants.ATK_MOD;
         defence = 6.2 * Constants.DEF_MOD;
         magicDefence = 5 * Constants.DEF_MOD;
         accuracy = 4 * Constants.ACC_MOD;
         evade = 4 * Constants.EVA_MOD;
      }
      
      public function attack1() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats()));
      }
      
      public function attack2() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats()));
      }
      
      public function special1() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats())) * 3;
         if(drainableDamage != 0 && !(Battle.selectedTarget as Foe).stolenFrom)
         {
            stealItem(Spells.stealitem.level,false);
         }
         else
         {
            Global.itemIcon = 1;
         }
      }
      
      public function attack3(param1:int) : *
      {
         if(param1 == 1)
         {
            drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats(70 / 8))) / 2;
         }
         if(param1 == 2)
         {
            drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats(30))) / 2;
         }
      }
      
      public function attack4() : *
      {
         var _loc3_:Player = null;
         var _loc1_:DamageObject = new DamageObject(Battle.selectedSkill.getStats());
         var _loc2_:Number = Math.pow(101 - getHpPercent(),1.3);
         for each(_loc3_ in Battle.players.concat(Battle.standbyPlayers))
         {
            if(Boolean(_loc3_) && _loc3_.dead)
            {
               _loc2_ += 150;
            }
         }
         if(_loc2_ == NaN)
         {
            _loc2_ = 0;
         }
         _loc2_ *= 0.2 + 0.8 / 4 * (Battle.selectedSkill as Spell).level;
         _loc1_.damage = _loc2_;
         drainableDamage += sendHit(_loc1_);
      }
      
      public function attack5() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats())) * 2;
      }
      
      public function attack6() : *
      {
         drainableDamage += sendHit(new DamageObject(Battle.selectedSkill.getStats(100 / 5)));
         if(Battle.selectedTarget.dead)
         {
            Battle.selectedTarget = Battle.randomWeakFoe();
         }
         this.resetLimit();
      }
   }
}

