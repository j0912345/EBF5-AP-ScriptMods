package
{
   import flash.display.MovieClip;
   import flash.utils.*;
   import foes.*;
   
   public class Catching
   {
      public static var currentFoe:String;
      
      public static const SLIME_RATE:int = 90;
      
      public static const BUSH_RATE:int = 80;
      
      public static const IDOL_RATE:int = 70;
      
      public static const WORM_RATE:int = 60;
      
      public static const CAT_RATE:int = 55;
      
      public static const BAT_RATE:int = 50;
      
      public static const DOG_RATE:int = 45;
      
      public static const SPRITE_RATE:int = 42;
      
      public static const FISH_RATE:int = 38;
      
      public static const GLOOP_RATE:int = 36;
      
      public static const HAND_RATE:int = 35;
      
      public static const ROCKBIT_RATE:int = 33;
      
      public static const MIRROR_RATE:int = 32;
      
      public static const WRAITH_RATE:int = 25;
      
      public static const SKELETON_CAT_RATE:int = 24;
      
      public static const DOLL_RATE:int = 23;
      
      public static const CREEP_RATE:int = 20;
      
      public static const BOULDER_RATE:int = 18;
      
      public static const FLYBOT_RATE:int = 16;
      
      public static const FALLEN_RATE:int = 13;
      
      public static const BEAR_RATE:int = 10;
      
      public static const PLANT_RATE:int = 9;
      
      public static const GOLEM_RATE:int = 8;
      
      public static const BIG_SLIME_RATE:int = 7;
      
      public static const SQUID_RATE:int = 7;
      
      public static const DEFENDER_RATE:int = 6;
      
      public static const MAMMOTH_RATE:int = 5;
      
      public static const MONOLITH_RATE:int = 5;
      
      public static const DRAGON_RATE:int = 5;
      
      public static const HYDRA_RATE:int = 3;
      
      public static const PIXEL_RATE:int = 15;
      
      public static const GLITCH_RATE:int = 7;
      
      public static const BOSS_RATE:int = 4;
      
      public static const MEGA_BOSS_RATE:int = 3;
      
      public static const SNOWFLAKE:int = 2;
      
      public static const UNCATCHABLE:int = 0;
      
      public static const FURRY_SLIME_RATE:int = 70;
      
      public static const WASP_RATE:int = 45;
      
      public static const TREE_RATE:int = 40;
      
      public static const EYEBALL_RATE:int = 35;
      
      public static const EATER_RATE:int = 24;
      
      public static const CLAY_RATE:int = 17;
      
      public static const SLINGER_RATE:int = 12;
      
      public static const CRYSTAL_RATE:int = 11;
      
      public static const KING_SLIME_RATE:int = 7;
      
      public static const BEHOLDER_RATE:int = 5;
      
      public static const GIGA_GOLEM_RATE:int = 5;
      
      public static const SANDWORM_RATE:int = 5;
      
      public static const JACK_RATE:int = 4;
      
      public static const PROTECTOR_RATE:int = 4;
      
      public static const RAFFLESIA_RATE:int = 4;
      
      public static const PRAETORIAN_RATE:int = 3;
      
      public static const SNEK_RATE:int = 8;
      
      public static const BOSH_RATE:int = 8;
      
      public static const PUMPKUS_RATE:int = 7;
      
      public static const ROBO_RATE:int = 7;
      
      public static const GLOB_RATE:int = 7;
      
      public static const CHAIR_RATE:int = 7;
      
      public static const TOTOM_RATE:int = 6;
      
      public static const PHOENIX_RATE:int = 5;
      
      public static const GUOYE_RATE:int = 4;
      
      public static const TREAGURE_RATE:int = 4;
      
      public static const MERMAID_RATE:int = 3;
      
      public static const MAW_RATE:int = 3;
      
      public static var bossDefeated:Boolean = false;
      
      public static const SKILL_BOOST:Number = 1.3;
      
      public static var catchScore:Number = 0;
      
      public static var shakes:int = 0;
      
      public static var tired:Spell = new Spell({
         "level":1,
         "type":Stats.NONE,
         "target":Target.ONE_ENEMY,
         "statusEffect":Status.TIRED,
         "statusChance":[100],
         "statusDegree":[2],
         "statusOnly":true,
         "accuracy":999999
      });
      
      public function Catching()
      {
         super();
      }
      
      public static function getCatchScore(param1:Foe = null) : int
      {
         var _loc2_:Foe = null;
         var _loc9_:Equip = null;
         var _loc10_:int = 0;
         if(param1)
         {
            _loc2_ = param1;
         }
         else
         {
            _loc2_ = Battle.selectedTarget;
         }
         var _loc3_:Number = _loc2_.catchRate;
         if(Options.onePlayerMode)
         {
            _loc3_ += Constants.P1catchingBaseBoost;
            _loc3_ *= Constants.P1catchingMultiplier;
         }
         if(Options.twoPlayerMode)
         {
            _loc3_ += Constants.P2catchingBaseBoost;
            _loc3_ *= Constants.P2catchingMultiplier;
         }
         var _loc4_:Number = 1;
         if(_loc2_.status[Status.POISON])
         {
            _loc4_ += 0.2;
         }
         if(_loc2_.status[Status.VIRUS])
         {
            _loc4_ += 0.2;
         }
         if(_loc2_.status[Status.FREEZE])
         {
            _loc4_ += 2;
         }
         if(_loc2_.status[Status.SCORCHED])
         {
            _loc4_ += 0.3;
         }
         if(_loc2_.status[Status.STUN])
         {
            _loc4_ += 1;
         }
         if(_loc2_.status[Status.SYPHON])
         {
            _loc4_ += 0.5;
         }
         if(_loc2_.status[Status.TIRED])
         {
            _loc4_ += 0.2;
         }
         if(_loc2_.status[Status.BURN])
         {
            _loc4_ += 0.2;
         }
         if(_loc2_.status[Status.DOOM])
         {
            _loc4_ += 0.4;
         }
         if(_loc2_.status[Status.CHILL])
         {
            _loc4_ += 0.2;
         }
         if(_loc2_.status[Status.WEAKEN])
         {
            _loc4_ += 0.2;
         }
         if(_loc2_.status[Status.CURSE])
         {
            _loc4_ += 0.2;
         }
         if(_loc2_.status[Status.BAD_LUCK])
         {
            _loc4_ += 0.3;
         }
         if(_loc2_.status[Status.STAGGER])
         {
            _loc4_ += 0.2;
         }
         if(_loc2_.status[Status.REGEN])
         {
            _loc4_ -= 0.2;
         }
         if(_loc2_.status[Status.DEFEND])
         {
            _loc4_ -= 0.5;
         }
         if(_loc2_.status[Status.MORALE])
         {
            _loc4_ -= 0.2;
         }
         if(_loc2_.status[Status.BRAVE])
         {
            _loc4_ -= 0.2;
         }
         if(_loc2_.status[Status.GOOD_LUCK])
         {
            _loc4_ -= 0.3;
         }
         if(_loc2_.status[Status.AUTOLIFE])
         {
            _loc4_ -= 0.5;
         }
         var _loc5_:Number = 1;
         _loc5_ = _loc5_ + (100 - _loc2_.buffs[Stats.HP]) / 50;
         _loc5_ = _loc5_ + (100 - _loc2_.buffs[Stats.EVADE]) / 50;
         _loc5_ = _loc5_ + (100 - _loc2_.buffs[Stats.DEFENCE]) / 100;
         _loc5_ = _loc5_ + (100 - _loc2_.buffs[Stats.MAGIC_DEFENCE]) / 100;
         var _loc6_:Number = 0.98;
         _loc6_ = _loc6_ + Math.pow(101 - _loc2_.getHpPercent(),2) / 1000;
         var _loc7_:Number = 1;
         if(!param1)
         {
            if(Battle.currentPlayer.status[Status.GOOD_LUCK])
            {
               _loc7_ += 0.3;
            }
            if(Battle.currentPlayer.status[Status.BAD_LUCK])
            {
               _loc7_ -= 0.4;
            }
         }
         if(!param1)
         {
            for each(_loc9_ in Battle.currentPlayer.equips)
            {
               _loc10_ = 0;
               while(_loc10_ < _loc9_.level)
               {
                  if(Boolean(_loc9_.specials[_loc10_]) && _loc9_.specials[_loc10_][0] == Equip.BOOST_CATCH)
                  {
                     _loc7_ += 0.3;
                  }
                  _loc10_++;
               }
            }
         }
         var _loc8_:Number = 1 + Cards.catchingBoost / 100;
         catchScore = _loc3_ * _loc4_ * _loc5_ * _loc6_ * _loc7_ * _loc8_ * (0.9 + Math.random() * 0.2);
         if(_loc2_.status[Status.SURRENDER])
         {
            catchScore += 120;
         }
         if(!param1)
         {
            if(catchScore >= 175)
            {
               shakes = 0;
            }
            else if(catchScore >= 150)
            {
               shakes = 1;
            }
            else if(catchScore >= 125)
            {
               shakes = 2;
            }
            else if(catchScore >= 80)
            {
               shakes = 3;
            }
            else if(catchScore >= 60)
            {
               shakes = 2;
            }
            else if(catchScore >= 40)
            {
               shakes = 1;
            }
            else
            {
               shakes = 0;
            }
            Text.shakes = shakes;
         }
         return catchScore;
      }
      
      public static function earlyCatch(param1:MovieClip) : *
      {
         if(catchScore > 200)
         {
            param1.gotoAndPlay("catch");
         }
      }
      
      public static function wiggle(param1:MovieClip) : *
      {
         if(shakes)
         {
            if(Battle.selectedTarget.boxSize == 3)
            {
               param1.gotoAndPlay("wiggle" + int(Math.random() * 2 + 1));
            }
            else
            {
               param1.gotoAndPlay("wiggle" + int(Math.random() * 3 + 1));
            }
            --shakes;
         }
         else if(catchScore >= 100)
         {
            param1.gotoAndPlay("catch");
         }
         else
         {
            param1.gotoAndPlay("fail");
         }
      }
      
      public static function makeTired() : *
      {
         var _loc1_:DamageObject = new DamageObject(tired.getStats());
         Battle.currentPlayer.sendHit(_loc1_);
      }
      
      public static function catchFoe() : Boolean
      {
         Battle.selectedTarget.capture();
         DamageNumber.displayDamage(DamageNumber.CAUGHT,0,Battle.selectedTarget);
         Medals.unlock(Medals.slaveTrader);
         if((Battle.selectedTarget as Foe).catchRate <= 10)
         {
            Medals.unlock(Medals.beastTamer);
         }
         if((Battle.selectedTarget as Foe).catchRate <= 4 || Battle.selectedTarget is BossCyclopsDesert)
         {
            Medals.unlock(Medals.bosssBoss);
         }
         if((Battle.selectedTarget as Foe).catchRate <= 3)
         {
         }
         if(Battle.selectedTarget is BossCyclopsDesert)
         {
            Medals.unlock(Medals.popEye);
            Flags.CYCLOPS_DEFEATED.quantity = 2;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is BossNestCat)
         {
            Medals.unlock(Medals.barkAndBite);
            Flags.NEST_DEFEATED.quantity = 2;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is BossGolemWater)
         {
            Medals.unlock(Medals.forgottenMyths);
            Flags.GOLEM_DEFEATED.quantity = 2;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is ChibiKnightUltra)
         {
            Medals.unlock(Medals.goldenGod);
            Battle.bossDefeated();
         }
         if(Battle.foeCount() == 0 && (Flags.battleEvent == Flags.ZOMBIE_HYDRA || Flags.battleEvent == Flags.MINIBOSS_RUSH && Battle.wave == 4))
         {
            Medals.unlock(Medals.tripleDead);
            Flags.ZOMBIE_HYDRA_DEFEATED.quantity = 1;
         }
         if(Battle.foeCount() == 0 && (Flags.battleEvent == Flags.BLAZE_HYDRA && Battle.wave == 2 || Flags.battleEvent == Flags.MINIBOSS_RUSH && Battle.wave == 2))
         {
            Medals.unlock(Medals.burningSoul);
         }
         if(Battle.foeCount() == 0 && (Flags.battleEvent == Flags.ICE_HYDRA || Flags.battleEvent == Flags.SUPER_BOSS_RUSH && Battle.wave == 5))
         {
            Medals.unlock(Medals.noRespawns);
            Flags.ICE_HYDRA_DEFEATED.quantity = 2;
         }
         if(Battle.selectedTarget is BossCyclopsGlacial || Battle.selectedTarget is BossCyclopsInfernal)
         {
            if(Global.cyclopsSisDown)
            {
               Medals.unlock(Medals.doubleTrouble);
               Flags.SUPER_CYCLOPS_DEFEATED.quantity = 2;
               Battle.bossDefeated();
            }
            else
            {
               Global.cyclopsSisDown = true;
            }
         }
         if(Battle.selectedTarget is BossNestNinja)
         {
            Medals.unlock(Medals.catastrophe);
            Flags.SUPER_NEST_DEFEATED.quantity = 2;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is BossGolemFire)
         {
            Medals.unlock(Medals.fryyoufools);
            Flags.SUPER_GOLEM_DEFEATED.quantity = 2;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is Glitch1)
         {
            Medals.unlock(Medals.reformat);
            Flags.GLITCH_DEFEATED.quantity = 1;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is Underlegs)
         {
            Medals.unlock(Medals.determination);
            Flags.UNDERLEGS_DEFEATED.quantity = 2;
         }
         if(Battle.selectedTarget is EvilMatt)
         {
            Medals.unlock(Medals.dustToDust);
            Flags.EVIL_MATT_DEFEATED.quantity = 1;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is EvilNatalie)
         {
            Medals.unlock(Medals.burnTheWitch);
            Flags.EVIL_NATZ_DEFEATED.quantity = 1;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is EvilLance)
         {
            Medals.unlock(Medals.twistedMetal);
            Flags.EVIL_LANCE_DEFEATED.quantity = 2;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is EvilAnna)
         {
            Medals.unlock(Medals.demonHunter);
            Flags.EVIL_ANNA_DEFEATED.quantity = 1;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is EvilNoLegs)
         {
            Medals.unlock(Medals.superSaiyan);
            Flags.EVIL_NOLEGS_DEFEATED.quantity = 1;
            Battle.bossDefeated();
         }
         if(Battle.selectedTarget is ArcadePumpkus)
         {
            Battle.selectedTarget.skin = 10;
            Battle.selectedTarget.graphic.skin = 10;
         }
         if(Battle.selectedTarget is BossGigalith)
         {
            Battle.extremeMedal();
            Battle.counterStack = [];
         }
         if(Battle.selectedTarget is BossDevourer)
         {
            Battle.extremeMedal();
            Flags.FINAL_BOSS_DEFEATED.quantity = 1;
            SaveData.calculateEndingTheshold();
            Main.newGamePlusFlag = true;
            Battle.endGame();
         }
         currentFoe = getQualifiedClassName(Battle.selectedTarget).substring(6);
         Summons.info[currentFoe] = {
            "nickname":"",
            "skin":Battle.selectedTarget.graphic.skin
         };
         Battle.menu.updateFoeBars();
         var _loc1_:int = 0;
         while(_loc1_ < Summons.PARTY_SUMMONS.length)
         {
            if(Summons.PARTY_SUMMONS[_loc1_] == Summons[currentFoe])
            {
               return true;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < Summons.PARTY_SUMMONS.length)
         {
            if(Summons.PARTY_SUMMONS[_loc1_] == Equips.empty)
            {
               Summons.PARTY_SUMMONS[_loc1_] = Summons[currentFoe];
               (Summons[currentFoe] as Summon).equipped = true;
               break;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < Summons.OWNED_SUMMONS.length)
         {
            if(Summons.OWNED_SUMMONS[_loc1_] == Summons[currentFoe])
            {
               return true;
            }
            _loc1_++;
         }
         Summons.OWNED_SUMMONS.push(Summons[currentFoe]);
         _loc1_ = 0;
         while(_loc1_ < Summons.RECENT.length)
         {
            if(Summons.RECENT[_loc1_] == Summons[currentFoe])
            {
               return true;
            }
            _loc1_++;
         }
         Summons.RECENT.splice(0,0,Summons[currentFoe]);
         if(Summons.RECENT.length > 20)
         {
            Summons.RECENT.pop();
         }
         if(Summons.OWNED_SUMMONS.length >= Medals.noneAreSafe.value)
         {
            Medals.unlock(Medals.noneAreSafe);
         }
         if(Summons.OWNED_SUMMONS.length >= Medals.noneAreFree.value)
         {
            Medals.unlock(Medals.noneAreFree);
         }
         if(Summons.OWNED_SUMMONS.length >= Medals.gottaCatchEmAll.value)
         {
            Medals.unlock(Medals.gottaCatchEmAll);
         }
         return true;
      }
      
      public static function openDialogue() : *
      {
         if(Flags.battleEvent == Flags.FINAL_BOSS)
         {
            Battle.selectedTarget.graphic.busy = false;
            Battle.stage.checkBusy();
            return;
         }
         if(Options.language != Options.ENGLISH)
         {
            Catching.setFoeName("");
            Battle.selectedTarget.graphic.busy = false;
            Battle.stage.checkBusy();
         }
         else
         {
            Catching.foeName = "";
            Battle.menu.naming.init();
         }
      }
      
      public static function setFoeName(param1:String) : *
      {
         if(param1 == Battle.selectedTarget.fname)
         {
            setFoeName("");
         }
         else
         {
            Summons.info[currentFoe]["nickname"] = param1;
         }
      }
      
      public static function considerSurrender(param1:Number = 1, param2:Boolean = false) : *
      {
         var _loc4_:Player = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Foe = null;
         var _loc8_:Number = NaN;
         var _loc9_:Equip = null;
         var _loc10_:int = 0;
         if(Flags.battleEvent == Flags.FINAL_BOSS)
         {
            return;
         }
         var _loc3_:Number = 0;
         for each(_loc4_ in Battle.players)
         {
            for each(_loc9_ in _loc4_.equips)
            {
               _loc10_ = 0;
               while(_loc10_ < _loc9_.specials.length && _loc10_ < _loc9_.level)
               {
                  if(_loc9_.specials[_loc10_])
                  {
                     if(_loc9_.specials[_loc10_][0] == Equip.INTIMIDATE)
                     {
                        _loc3_ += 5;
                        _loc3_ += _loc9_.level * 1.5;
                     }
                  }
                  _loc10_++;
               }
            }
         }
         _loc5_ = 0;
         for each(_loc4_ in Battle.players)
         {
            _loc5_ += _loc4_.getHpPercent();
         }
         _loc5_ /= Battle.players.length;
         _loc6_ = 0;
         for each(_loc7_ in Battle.foes)
         {
            _loc6_ += _loc7_.getHpPercent();
         }
         _loc6_ /= Battle.foes.length;
         _loc8_ = (_loc5_ - _loc6_ + _loc3_) * param1;
         for each(_loc7_ in Battle.foes)
         {
            if(!_loc7_.dead && (!_loc7_.status[Status.BRAVE] || param1 > 1) && (!_loc7_.status[Status.MORALE] || param1 > 1) && !_loc7_.status[Status.SURRENDER] && (_loc7_.catchRate > 7 || param1 > 1))
            {
               if(!_loc7_.cantFlee)
               {
                  if(bossDefeated && Flags.battleEvent != Flags.LANCE_BATTLE_3)
                  {
                     Skills.giveStatus(_loc7_,Status.SURRENDER,99);
                  }
                  else if(_loc8_ + _loc7_.catchRate / 2 + (100 - _loc7_.getHpPercent()) > 190 && (!param2 || _loc7_ == Battle.selectedTarget))
                  {
                     Skills.giveStatus(_loc7_,Status.SURRENDER,99);
                  }
               }
            }
         }
      }
   }
}

