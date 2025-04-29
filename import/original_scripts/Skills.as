package
{
   import foes.*;
   
   public class Skills
   {
      public static var user:Target;
      
      public function Skills()
      {
         super();
      }
      
      public static function giveStatus(param1:Target, param2:String, param3:int) : *
      {
         var _loc4_:Target = null;
         if(Game.mode != Game.BATTLE)
         {
            return;
         }
         if(!param1.dead)
         {
            if(param1 is Foe)
            {
               if(param2 == Status.INVISIBLE && param1.getResistance("status",Status.INVISIBLE) == 0)
               {
                  DamageNumber.displayDamage(DamageNumber.MISS,0,param1);
                  return;
               }
               if(param2 == Status.ENCHANTED && param1.getResistance("status",Status.ENCHANTED) == 0)
               {
                  DamageNumber.displayDamage(DamageNumber.MISS,0,param1);
                  return;
               }
            }
            if(param2 == Status.DOOM && Boolean(param1.status[Status.DOOM]))
            {
               return;
            }
            if(param2 == Status.LOVED)
            {
               if(param1.status[Status.TARGET])
               {
                  param1.status[Status.TARGET] = 0;
               }
            }
            if(param2 == Status.TARGET)
            {
               if(param1.status[Status.LOVED])
               {
                  param1.status[Status.LOVED] = 0;
               }
               if(param1 is Player)
               {
                  for each(_loc4_ in Players.party)
                  {
                     if(_loc4_ != param1)
                     {
                        _loc4_.status[Status.TARGET] = 0;
                     }
                     if(_loc4_.statusDisplay)
                     {
                        _loc4_.statusDisplay.update(_loc4_);
                     }
                  }
               }
            }
            if(param2 == Status.HASTE)
            {
               if(param1.turnTaken)
               {
                  param1.turnTaken = false;
                  param1.status[Status.HASTE] += param3 - 1;
               }
               else if(param1.status[Status.HASTE])
               {
                  ++param1.status[Status.HASTE];
               }
               else
               {
                  param1.status[Status.HASTE] += param3;
               }
            }
            if(param2 == Status.INVISIBLE)
            {
               param1.status[Status.ENCHANTED] = 0;
            }
            if(param2 == Status.ENCHANTED)
            {
               param1.status[Status.INVISIBLE] = 0;
            }
            if(param2 == Status.GOOD_LUCK)
            {
               param1.status[Status.BAD_LUCK] = 0;
            }
            if(param2 == Status.BAD_LUCK)
            {
               param1.status[Status.GOOD_LUCK] = 0;
            }
            if(param2 == Status.WET)
            {
               param1.status[Status.DRY] = 0;
               param1.status[Status.BURN] = 0;
               param1.status[Status.SCORCHED] = 0;
            }
            if(param2 == Status.CHILL)
            {
               param1.status[Status.BURN] = 0;
               param1.status[Status.SCORCHED] = 0;
            }
            if(param2 == Status.DRY)
            {
               param1.status[Status.WET] = 0;
            }
            if(param2 == Status.BURN || param2 == Status.SCORCHED)
            {
               param1.status[Status.CHILL] = 0;
            }
            if(param2 != Status.HASTE)
            {
               param1.status[param2] += param3;
            }
            if(param1.status[param2] > 9)
            {
               param1.status[param2] = 9;
            }
            DamageNumber.displayStatus(param2,param1);
            if(param1.statusDisplay)
            {
               param1.statusDisplay.update(param1);
            }
            if(param2 == Status.SHROUD)
            {
               Battle.menu.updatePlayerBars();
               Battle.menu.updateFoeBars();
            }
            if(param2 == Status.ENCHANTED || param2 == Status.INVISIBLE)
            {
               param1.graphic.colorEffects();
            }
            if(param1 is Player)
            {
               Text.inflictStatus(param1,param2);
               Text.hasStatus(param1,param2);
            }
         }
      }
      
      public static function earthedge() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.earthedge.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 25;
         }
         user.sendHit(_loc1_);
      }
      
      public static function quakespikes() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.quakespikes.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 60;
         }
         if(user is BossGolemWater)
         {
            _loc1_.damage = 75;
         }
         if(user is BossGolemFire)
         {
            _loc1_.damage = 100;
         }
         user.sendHit(_loc1_);
      }
      
      public static function cataclysmiccut() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.cataclysmiccut.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 210;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 200;
         }
         if(user is EvilMatt)
         {
            _loc1_.damage = 175;
         }
         user.sendHit(_loc1_);
      }
      
      public static function geysergush() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.geysergush.getStats());
         if(user == Weather.weatherFoe || user == Weather.weatherPlayer)
         {
            _loc1_.damage = 40;
         }
         else if(!user.isPlayer)
         {
            _loc1_.damage = 20;
         }
         user.sendHit(_loc1_);
      }
      
      public static function pouringpike() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.pouringpike.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 80;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 45;
            if(user is BossGolemWater)
            {
               _loc1_.damage = 75;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function surgingskewer() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.surgingskewer.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 180;
         }
         if(user == Weather.weatherFoe || user == Weather.weatherPlayer)
         {
            _loc1_.damage = 70;
         }
         else if(!user.isPlayer)
         {
            _loc1_.damage = 105;
         }
         if(user is EvilMatt)
         {
            _loc1_.damage = 160;
         }
         user.sendHit(_loc1_);
      }
      
      public static function firespire() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.firespire.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 44;
         }
         if(user is BossCyclopsInfernal || user is BearBlack)
         {
            _loc1_.damage = 55;
         }
         if(user is BossGolemFire)
         {
            _loc1_.damage = 100;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 200;
         }
         user.sendHit(_loc1_);
      }
      
      public static function lavalance() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.lavalance.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 130;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 110;
         }
         if(user is BossCyclopsInfernal)
         {
            _loc1_.damage = 180;
         }
         if(user is BossGigalith)
         {
            _loc1_.damage = 120;
         }
         user.sendHit(_loc1_);
      }
      
      public static function frostfragment() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.frostfragment.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 80;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 55;
            if(user is BossGolemWater)
            {
               _loc1_.damage = 70;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function glacialglaive() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.glacialglaive.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 160;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 85;
         }
         if(user is BossCyclopsGlacial)
         {
            _loc1_.damage = 180;
         }
         if(user is BossGigalith)
         {
            _loc1_.damage = 120;
         }
         user.sendHit(_loc1_);
      }
      
      public static function nettleknife() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.nettleknife.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 22;
         }
         user.sendHit(_loc1_);
      }
      
      public static function shreddingshrub() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.shreddingshrub.getStats(100 / 2));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 100 / 2;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 60 / 2;
         }
         if(user is EvilMatt)
         {
            _loc1_.damage = 150 / 2;
         }
         if(user is BossGolemWater)
         {
            _loc1_.damage = 80 / 2;
         }
         if(user is BossGigalith)
         {
            _loc1_.damage = 100 / 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function temper() : *
      {
         var _loc1_:DamageObject = null;
         if(!user.isPlayer)
         {
            Battle.selectedTarget.buff(Stats.ATTACK,50);
            if((user as Foe).isHard)
            {
               giveStatus(Battle.selectedTarget,Status.BRAVE,3);
            }
         }
         else
         {
            _loc1_ = new DamageObject(Spells.temper.getStats());
            Battle.selectedTarget.buff(Stats.ATTACK,_loc1_.buffDegree + buffBoost());
            giveStatus(Battle.selectedTarget,Status.BRAVE,_loc1_.statusDegree);
         }
      }
      
      public static function slicingcyclone() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.slicingcyclone.getStats(100 / 7));
         user.drainableDamage += user.sendHit(_loc1_) / 2;
      }
      
      public static function lightblade() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.lightblade.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 32;
         }
         user.sendHit(_loc1_);
      }
      
      public static function holysword() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.holysword.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 180;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 130;
         }
         user.sendHit(_loc1_);
      }
      
      public static function ragnarok(param1:int) : *
      {
         var _loc2_:DamageObject = null;
         var _loc3_:Foe = null;
         var _loc4_:Player = null;
         if(param1 == 1)
         {
            _loc2_ = new DamageObject(Spells.ragnarok.getStats(40 / 4));
            if(!user.isPlayer)
            {
               _loc2_.damage = 100 / 4;
            }
            user.sendHit(_loc2_);
         }
         if(param1 == 2)
         {
            _loc2_ = new DamageObject(Spells.ragnarok.getStats(60));
            if(!user.isPlayer)
            {
               _loc2_.damage = 130;
            }
            user.sendHit(_loc2_);
         }
         if(user.isPlayer)
         {
            (user as Player).resetLimit();
         }
         if(param1 == 3)
         {
            if(!user.isPlayer)
            {
               for each(_loc3_ in Battle.foes)
               {
                  if((user as Foe).isHard)
                  {
                     _loc3_.buff(Stats.ATTACK,30);
                  }
                  giveStatus(_loc3_,Status.BRAVE,3);
               }
            }
            else
            {
               _loc2_ = new DamageObject(Spells.ragnarok.getStats());
               for each(_loc4_ in Battle.players.concat(Battle.standbyPlayers))
               {
                  if(_loc4_)
                  {
                     _loc4_.buff(Stats.ATTACK,_loc2_.buffDegree + buffBoost());
                     giveStatus(_loc4_,Status.BRAVE,5);
                  }
               }
            }
         }
      }
      
      public static function luckystar() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.luckystar.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 100;
         }
         if(user is NormalNatalie)
         {
            _loc1_.damage = 22;
         }
         user.sendHit(_loc1_);
      }
      
      public static function starshower() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.starshower.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 45 / 3;
         }
         if(user is EvilNoLegs)
         {
            _loc1_ = new DamageObject(EvilNoLegs.starshower.getStats(100 / 3));
         }
         user.sendHit(_loc1_);
      }
      
      public static function starpower() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.starpower.getStats());
         if(!user.isPlayer)
         {
            _loc1_.buffDegree = 50;
         }
         Battle.selectedTarget.buff(Stats.MAGIC_ATTACK,_loc1_.buffDegree + buffBoost());
         if(!(!user.isPlayer && !(user as Foe).isHard))
         {
            giveStatus(Battle.selectedTarget,Status.GOOD_LUCK,_loc1_.statusDegree);
         }
      }
      
      public static function fire() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.fire.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 22;
         }
         user.sendHit(_loc1_);
      }
      
      public static function fireball() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.fireball.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 40;
         }
         user.sendHit(_loc1_);
      }
      
      public static function firestorm() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.firestorm.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 50 / 3;
            if(user.graphic.zombieMode)
            {
               _loc1_.damage = 100 / 3;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function thunder() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.thunder.getStats(100 / 2));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 40 / 2;
         }
         if(user == Weather.weatherFoe || user == Weather.weatherPlayer)
         {
            _loc1_.damage = 40 / 2;
         }
         else if(!user.isPlayer)
         {
            _loc1_.damage = 22 / 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function thunderbolt() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.thunderbolt.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 70 / 3;
         }
         if(user == Weather.weatherFoe || user == Weather.weatherPlayer)
         {
            _loc1_.damage = 70 / 3;
         }
         else if(!user.isPlayer)
         {
            _loc1_.damage = 40 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function thunderstorm() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.thunderstorm.getStats(100 / 5));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 55 / 5;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 45 / 5;
         }
         user.sendHit(_loc1_);
      }
      
      public static function ice() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.ice.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 22;
         }
         user.sendHit(_loc1_);
      }
      
      public static function iceshard() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.iceshard.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 40;
         }
         user.sendHit(_loc1_);
      }
      
      public static function icestorm() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.icestorm.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 45 / 3;
            if(user.graphic.zombieMode)
            {
               _loc1_.damage = 100 / 3;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function shine() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.shine.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 42;
         }
         user.sendHit(_loc1_);
      }
      
      public static function judgement() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.judgement.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 250;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 130;
            user.sendHit(_loc1_);
         }
         else if(user is EvilNatalie)
         {
            _loc1_.damage = 140;
         }
         else
         {
            user.drainableDamage += user.sendHit(_loc1_);
         }
      }
      
      public static function spectrum() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.spectrum.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 100;
         }
         if(!user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.foespectrum.getStats());
            _loc1_.element = Element.ELEMENTS[int(Math.random() * 10)];
            Global.element = _loc1_.element;
         }
         if(user is GloopFab)
         {
            _loc1_.damage = 40;
         }
         user.drainableDamage += user.sendHit(_loc1_);
      }
      
      public static function spectrum2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.spectrum2.getStats(100 / 4));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50 / 4;
         }
         user.drainableDamage += user.sendHit(_loc1_) / 2;
      }
      
      public static function pulse() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.pulse.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 90;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 25;
         }
         user.sendHit(_loc1_);
      }
      
      public static function pulsar() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.pulsar.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 60;
            if(user.graphic.zombieMode)
            {
               _loc1_.damage = 120;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function toxic() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.toxic.getStats());
         if(user is GloopFab)
         {
            _loc1_.damage = 30;
            _loc1_.statusChance = (user as Foe).isHard ? 100 : 50;
            _loc1_.statusDegree = 3;
         }
         else if(!user.isPlayer)
         {
            _loc1_.damage = 60;
            _loc1_.statusDegree = 6;
         }
         user.sendHit(_loc1_);
      }
      
      public static function syphon() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.syphon.getStats());
         if(!user.isPlayer)
         {
            _loc1_.statusDegree = 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function syphon2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.syphon2.getStats());
         if(!user.isPlayer && (user as Foe).isHard)
         {
            _loc1_.statusChance = 100;
            _loc1_.statusDegree = 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function genesis(param1:int) : *
      {
         var _loc2_:DamageObject = null;
         var _loc3_:Player = null;
         if(!user.isPlayer)
         {
            _loc2_ = new DamageObject(Spells.genesis.getStats());
            _loc2_.statusEffect = Status.CURSE;
            _loc2_.statusChance = 100;
            _loc2_.statusDegree = 9;
            _loc2_.damage = 180;
            user.sendHit(_loc2_);
            Battle.targetType = Target.ALL_STANDBY;
            Spells.genesis.target = Target.ALL_STANDBY;
            _loc2_.statusChance = 0;
            _loc2_.damage = 110;
            user.sendHit(_loc2_);
            Spells.genesis.target = Target.ALL_ENEMY;
         }
         else
         {
            if(param1 == 1)
            {
               _loc2_ = new DamageObject(Spells.genesis.getStats());
               user.sendHit(_loc2_);
            }
            if(param1 == 2)
            {
               for each(_loc3_ in Battle.players.concat(Battle.standbyPlayers))
               {
                  if(_loc3_)
                  {
                     if(_loc3_.dead)
                     {
                        if(Flags.battleEvent == Flags.EVIL_NATALIE)
                        {
                           _loc3_.revive(0);
                        }
                        else
                        {
                           _loc3_.revive(33);
                        }
                     }
                     else
                     {
                        giveStatus(_loc3_,Status.AUTOLIFE,5);
                     }
                  }
               }
               (user as Player).resetLimit();
            }
         }
      }
      
      public static function kyun() : *
      {
         var _loc2_:Player = null;
         var _loc1_:DamageObject = new DamageObject(Spells.kyun.getStats());
         undeadEffect(_loc1_);
         user.sendHeal(_loc1_);
         Battle.targetType = Target.ALL_STANDBY;
         _loc1_ = new DamageObject(Spells.kyun.getStats());
         undeadEffect(_loc1_);
         user.sendHeal(_loc1_);
         for each(_loc2_ in Battle.players.concat(Battle.standbyPlayers))
         {
            if(_loc2_)
            {
               _loc2_.dispelBadStatus();
               _loc2_.buff(Stats.ATTACK,_loc1_.buffDegree + buffBoost());
               _loc2_.buff(Stats.MAGIC_ATTACK,_loc1_.buffDegree + buffBoost());
               _loc2_.buff(Stats.DEFENCE,_loc1_.buffDegree + buffBoost());
               _loc2_.buff(Stats.MAGIC_DEFENCE,_loc1_.buffDegree + buffBoost());
            }
         }
         Skills.giveStatus(user,Status.LOVED,2);
         (user as Player).resetLimit();
      }
      
      public static function snipe() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.snipe.getStats());
         if(user is EvilLance)
         {
            _loc1_ = new DamageObject(Spells.evilsnipe.getStats());
         }
         else if(!user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.foesnipe.getStats());
            _loc1_.damage = 36;
            if((user as Foe).isHard)
            {
               _loc1_.statusChance = 25;
            }
         }
         if(user is NormalLance)
         {
            _loc1_.damage = 70;
            _loc1_.statusChance = 20;
            if((user as Foe).isHard)
            {
               _loc1_.statusChance = 50;
            }
         }
         user.drainableDamage += user.sendHit(_loc1_);
      }
      
      public static function flameshot() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.flameshot.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 75;
         }
         user.sendHit(_loc1_);
      }
      
      public static function flameburst() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.flameburst.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 23;
         }
         if(user is NormalLance)
         {
            _loc1_.damage = 40;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bullethell() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bullethell.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 70 / 3;
         }
         if(user is EvilLance)
         {
            _loc1_.damage = 160 / 3;
            _loc1_.buffChance = 100;
            _loc1_.buffDegree = -30;
            if((user as Foe).isHard)
            {
               _loc1_.statusEffect = Status.SCORCHED;
               _loc1_.statusChance = 100;
               _loc1_.statusDegree = 2;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function plasma() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.plasma.getStats(100 / 2));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 75 / 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function plasmawave() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.plasmawave.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 24;
         }
         if(user is NormalLance)
         {
            _loc1_.damage = 40;
         }
         user.sendHit(_loc1_);
      }
      
      public static function plasmacross() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.plasmacross.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 42;
         }
         if(user is EvilLance)
         {
            _loc1_.damage = 160;
            _loc1_.buffChance = 100;
            _loc1_.buffDegree = -50;
            if((user as Foe).isHard)
            {
               _loc1_.statusEffect = Status.STUN;
               _loc1_.statusChance = 100;
               _loc1_.statusDegree = 1;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function airstrike1() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.airstrike1.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 90;
         }
         if(user == Weather.weatherFoe || user == Weather.weatherPlayer)
         {
            _loc1_.damage = 90;
         }
         else if(!user.isPlayer)
         {
            _loc1_.damage = 80;
         }
         if(user is NormalLance)
         {
            _loc1_.damage = 120;
         }
         if(user is BossNestNinja)
         {
            _loc1_.damage = 180;
         }
         user.sendHit(_loc1_);
      }
      
      public static function airstrike2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.airstrike2.getStats());
         Battle.targetType = Target.ONE_ENEMY;
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 180;
         }
         if(user.isPlayer)
         {
            Battle.selectedSkill.target = Target.ONE_ENEMY;
         }
         if(user == Weather.weatherFoe || user == Weather.weatherPlayer)
         {
            _loc1_.damage = 50;
         }
         else if(!user.isPlayer)
         {
            _loc1_.damage = 30;
         }
         if(user is NormalLance)
         {
            _loc1_.damage = 50;
         }
         if(user is BossNestNinja)
         {
            _loc1_.damage = 65;
         }
         user.sendHit(_loc1_);
         if(user.isPlayer)
         {
            Battle.selectedSkill.target = Target.ALL_ENEMY;
         }
      }
      
      public static function airstrike3() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.airstrike3.getStats());
         if(user.isPlayer)
         {
            Medals.unlock(Medals.coolingOff);
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 60;
         }
         if(user is BossNestNinja)
         {
            _loc1_.damage = 130;
         }
         user.sendHit(_loc1_);
      }
      
      public static function poisongas() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.poisongas.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 15;
         }
         if(user is BossNestNinja)
         {
            _loc1_.damage = 30;
            _loc1_.statusDegree = (user as Foe).isHard ? 9 : 5;
         }
         if(user.graphic.zombieMode)
         {
            _loc1_.damage = 45;
            _loc1_.statusChance = 200;
            _loc1_.statusDegree = 3;
         }
         if(user is EvilLance)
         {
            _loc1_.damage = 60;
            _loc1_.statusEffect = Status.VIRUS;
            _loc1_.statusChance = 200;
            _loc1_.statusDegree = (user as Foe).isHard ? 9 : 5;
         }
         user.sendHit(_loc1_);
      }
      
      public static function tankcannon() : *
      {
         var _loc1_:SpellMC = new Bomb();
         Battle.stage.addChild(_loc1_);
      }
      
      public static function tankgun() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.tankgun.getStats(100 / 15));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 100 / 15;
         }
         user.sendHit(_loc1_);
      }
      
      public static function medipack() : *
      {
         var d:DamageObject = null;
         try
         {
            d = new DamageObject(Battle.selectedSkill.getStats());
         }
         catch(e:Error)
         {
            d = new DamageObject(Spells.medipack.getStats());
         }
         if(Battle.bonusSpellFlag)
         {
            d.damage = 40;
         }
         undeadEffect(d);
         if(user == Weather.weatherPlayer)
         {
            Battle.selectedTarget.getHeal({
               "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 80,
               "randomness":10
            });
         }
         else if(user == Weather.weatherFoe)
         {
            Battle.selectedTarget.getHeal({
               "damage":Battle.selectedTarget.maxHP,
               "randomness":10
            });
         }
         else if(user is DollLance)
         {
            Battle.selectedTarget.getHeal({
               "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 80,
               "randomness":10
            });
         }
         else if(user is NormalLance)
         {
            Battle.selectedTarget.getHeal({
               "damage":Battle.selectedTarget.maxHP * 0.3,
               "randomness":10
            });
         }
         else
         {
            user.sendHeal(d);
         }
         Battle.selectedTarget.dispelBadStatus();
      }
      
      public static function darkblast() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.darkblast.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 40;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 40;
         }
         user.sendHit(_loc1_);
      }
      
      public static function gravitysurge() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.gravitysurge.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 55 / 3;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 30 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function antimatter() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.antimatter.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 65 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function oblivion(param1:int) : *
      {
         var _loc2_:DamageObject = null;
         if(param1 == 1)
         {
            _loc2_ = new DamageObject(Spells.oblivion.getStats(35));
         }
         if(param1 == 2)
         {
            _loc2_ = new DamageObject(Spells.oblivion.getStats(15 / 3));
         }
         if(param1 == 3)
         {
            _loc2_ = new DamageObject(Spells.oblivion.getStats(50 / 3));
         }
         user.sendHit(_loc2_);
         if(Battle.finalHit)
         {
            (user as Player).resetLimit();
         }
      }
      
      public static function nuke(param1:int) : *
      {
         var _loc2_:DamageObject = null;
         if(param1 == 1)
         {
            _loc2_ = new DamageObject(Spells.nuke.getStats());
            if(!user.isPlayer)
            {
               _loc2_.damage = 270;
            }
         }
         if(param1 == 2)
         {
            _loc2_ = new DamageObject(Spells.nuke2.getStats(100,Spells.nuke.level));
            Battle.selectedSkill = Spells.nuke2;
            Weather.tempWeather = Weather.RADIATION;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
            if(!user.isPlayer)
            {
               return;
            }
         }
         user.sendHit(_loc2_);
         if(user.isPlayer)
         {
            (user as Player).resetLimit();
         }
      }
      
      public static function gust() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.gust.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 22;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 40;
         }
         user.sendHit(_loc1_);
      }
      
      public static function whirlwind() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.whirlwind.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 65 / 3;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 36 / 3;
         }
         if(user is EvilAnna)
         {
            _loc1_.damage = 60 / 3;
            _loc1_.statusChance = 100;
            _loc1_.statusDegree = 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function hurricane() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.hurricane.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 50;
         }
         if(user is EvilAnna)
         {
            _loc1_.damage = 60;
            _loc1_.statusChance = 100;
            _loc1_.statusDegree = 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function log(param1:int = 20) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.log.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc2_.damage = 55;
         }
         if(!user.isPlayer)
         {
            _loc2_.damage = 28;
         }
         user.sendHit(_loc2_);
      }
      
      public static function lumber() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.lumber.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 100 / 3;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 65 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function razorleaf() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.razorleaf.getStats(100 / 2));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 70 / 2;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 55 / 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function razorleaf2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.razorleaf2.getStats(100 / 5));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50 / 5;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 38 / 5;
         }
         if(user is NormalAnna)
         {
            _loc1_.damage = 70 / 5;
         }
         user.sendHit(_loc1_);
      }
      
      public static function aquaarrow(param1:int = 40) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.aquaarrow2.getStats());
         if(user.isPlayer)
         {
            user.sendHit(_loc2_);
         }
         else
         {
            _loc2_.damage = param1;
            user.sendHit(_loc2_);
         }
      }
      
      public static function nitroarrow(param1:int = 40) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.nitroarrow2.getStats());
         if(user.isPlayer)
         {
            user.sendHit(_loc2_);
         }
         else
         {
            _loc2_.damage = param1;
            user.sendHit(_loc2_);
         }
      }
      
      public static function frostarrow() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.frostarrow2.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function sparkarrow(param1:int = 40) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.sparkarrow2.getStats());
         if(user.isPlayer)
         {
            user.sendHit(_loc2_);
         }
         else
         {
            _loc2_.damage = param1;
            if(user.graphic.zombieMode)
            {
               _loc2_.damage = 130;
               _loc2_.statusChance = 100;
               _loc2_.statusDegree = 3;
            }
            user.sendHit(_loc2_);
         }
      }
      
      public static function soularrow(param1:int = 40) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.soularrow2.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc2_.damage = 70;
         }
         if(!user.sendHit(_loc2_))
         {
         }
      }
      
      public static function aquaarrow2(param1:int = 45) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.aquaarrow.getStats());
         if(user.isPlayer)
         {
            user.sendHit(_loc2_);
         }
         else
         {
            _loc2_.damage = param1;
            if(user is NormalAnna)
            {
               _loc2_.damage = 65;
               if((user as Foe).isHard)
               {
                  _loc2_.statusDegree = 4;
               }
            }
            user.sendHit(_loc2_);
         }
      }
      
      public static function nitroarrow2(param1:int = 41) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.nitroarrow.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc2_.damage = 70;
         }
         if(user.isPlayer)
         {
            user.sendHit(_loc2_);
         }
         else
         {
            _loc2_.damage = param1;
            user.sendHit(_loc2_);
         }
      }
      
      public static function frostarrow2(param1:int = 35) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.frostarrow.getStats());
         if(!user.isPlayer)
         {
            _loc2_.damage = 35;
            if(user is NormalAnna)
            {
               _loc2_.damage = 55;
               if(!(user as Foe).isHard)
               {
                  _loc2_.statusChance /= 3;
               }
            }
         }
         user.sendHit(_loc2_);
      }
      
      public static function sparkarrow2(param1:int = 38) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.sparkarrow.getStats());
         if(user.isPlayer)
         {
            user.sendHit(_loc2_);
         }
         else
         {
            _loc2_.damage = param1;
            if(user is NormalAnna)
            {
               _loc2_.damage = 70;
               if(!(user as Foe).isHard)
               {
                  _loc2_.statusChance /= 2;
               }
            }
            user.sendHit(_loc2_);
         }
      }
      
      public static function soularrow2(param1:int = 38) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.soularrow.getStats());
         if(!user.isPlayer)
         {
            _loc2_.damage = 40;
         }
         if(!user.sendHit(_loc2_))
         {
         }
      }
      
      public static function piercingshot() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.piercingshot.getStats());
         _loc1_.ignoreBuffs = true;
         if(user.isPlayer)
         {
            user.drainableDamage += user.sendHit(_loc1_);
         }
         else if(user is EvilAnna)
         {
            _loc1_ = new DamageObject({
               "damage":130,
               "accuracy":200,
               "element":Element.DARK,
               "elementDegree":30,
               "statusEffect":Status.POISON,
               "statusChance":100,
               "statusDegree":((user as Foe).isHard ? 4 : 2)
            });
            user.sendHit(_loc1_);
         }
         else
         {
            _loc1_ = new DamageObject({
               "damage":65,
               "accuracy":150,
               "element":Element.BIO,
               "elementDegree":50,
               "ignoreBuffs":true,
               "statusEffect":Status.POISON,
               "statusChance":100,
               "statusDegree":((user as Foe).isHard ? 4 : 2)
            });
            user.sendHit(_loc1_);
         }
      }
      
      public static function comboshot() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.comboshot.getStats(100 / 3));
         if(user.isPlayer)
         {
            user.drainableDamage += user.sendHit(_loc1_);
         }
         else if(user is EvilAnna)
         {
            _loc1_ = new DamageObject({
               "damage":220 / 3,
               "accuracy":200,
               "element":Element.DARK,
               "elementDegree":30,
               "statusEffect":Status.POISON,
               "statusChance":100,
               "statusDegree":((user as Foe).isHard ? 8 : 4)
            });
            user.sendHit(_loc1_);
         }
         else
         {
            _loc1_ = new DamageObject({
               "damage":45 / 3,
               "element":Element.BIO,
               "elementDegree":30,
               "statusEffect":Status.POISON,
               "statusChance":50,
               "statusDegree":2
            });
            user.sendHit(_loc1_);
         }
      }
      
      public static function arrowrain() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arrowrain.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 65 / 3;
         }
         if(user.isPlayer)
         {
            user.drainableDamage += user.sendHit(_loc1_) / 2;
         }
         else if(user is EvilAnna)
         {
            _loc1_ = new DamageObject({
               "damage":70 / 3,
               "accuracy":80,
               "element":Element.DARK,
               "elementDegree":30,
               "statusEffect":Status.POISON,
               "statusChance":100,
               "statusDegree":((user as Foe).isHard ? 4 : 2)
            });
            user.sendHit(_loc1_);
         }
         else
         {
            _loc1_ = new DamageObject({
               "damage":45 / 3,
               "element":Element.BIO,
               "elementDegree":50,
               "statusEffect":Status.POISON,
               "statusChance":50,
               "statusDegree":((user as Foe).isHard ? 3 : 1)
            });
            user.sendHit(_loc1_);
         }
      }
      
      public static function reflex(param1:int = 30) : *
      {
         var _loc3_:Player = null;
         var _loc4_:Foe = null;
         var _loc2_:DamageObject = new DamageObject(Spells.reflex.getStats());
         if(user.isPlayer)
         {
            for each(_loc3_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc3_)
               {
                  _loc3_.status[Status.SHROUD] = 0;
                  _loc3_.buff(Stats.EVADE,_loc2_.buffDegree + buffBoost());
               }
            }
         }
         else
         {
            for each(_loc4_ in Battle.foes)
            {
               _loc4_.buff(Stats.EVADE,25);
            }
         }
         Battle.menu.updatePlayerBars();
      }
      
      public static function renew() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.renew.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 40;
         }
         undeadEffect(_loc1_);
         if(!user.isPlayer)
         {
            if((user as Foe).isHard)
            {
               _loc1_.damage = 30;
            }
            else
            {
               _loc1_.damage = 20;
            }
         }
         if(!user.isPlayer)
         {
            Battle.selectedTarget.getHeal({
               "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 150,
               "randomness":20
            });
         }
         else
         {
            user.sendHeal(_loc1_);
         }
      }
      
      public static function remedy() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.remedy.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 55;
         }
         undeadEffect(_loc1_);
         if(!user.isPlayer)
         {
            Battle.selectedTarget.getHeal({
               "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 50,
               "randomness":20
            });
         }
         else
         {
            user.sendHeal(_loc1_);
         }
         giveStatus(Battle.selectedTarget,Status.BLESS,_loc1_.statusDegree);
      }
      
      public static function motherearth() : *
      {
         var _loc2_:Foe = null;
         var _loc3_:Player = null;
         var _loc1_:DamageObject = new DamageObject(Spells.motherearth.getStats(100));
         if(!user.isPlayer)
         {
            _loc1_.damage = 160;
            _loc1_.statusChance = 100;
            _loc1_.statusDegree = 9;
            for each(_loc2_ in Battle.foes)
            {
               giveStatus(_loc2_,Status.REGEN,3);
            }
         }
         else
         {
            for each(_loc3_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc3_)
               {
                  giveStatus(_loc3_,Status.BLESS,7);
               }
            }
            Weather.tempWeather = Weather.CLEAR;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
            (user as Player).resetLimit();
         }
         user.sendHit(_loc1_);
      }
      
      public static function oak(param1:int) : *
      {
         var _loc2_:Number = 0;
         if(param1 == 1)
         {
            _loc2_ = 20 / 2;
         }
         if(param1 == 2)
         {
            _loc2_ = 20 / 4;
         }
         if(param1 == 3)
         {
            _loc2_ = 10;
         }
         if(param1 == 4)
         {
            _loc2_ = 40;
         }
         if(param1 == 5)
         {
            _loc2_ = 10;
         }
         var _loc3_:DamageObject = new DamageObject(Spells.mightyoak.getStats(_loc2_));
         user.sendHit(_loc3_);
         if(user.isPlayer)
         {
            (user as Player).resetLimit();
         }
      }
      
      public static function retargetSlash() : *
      {
         try
         {
            if(!(user is Player))
            {
               return;
            }
            if(Battle.selectedTarget.dead)
            {
               Battle.selectedTarget = Battle.randomWeakFoe();
               ++user.graphic.cuts;
            }
            if(Battle.foeCount() == 0)
            {
               user.graphic.cuts = 0;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function ninelives() : *
      {
         var _loc2_:Player = null;
         var _loc3_:Foe = null;
         var _loc1_:DamageObject = new DamageObject(Spells.ninelives.getStats());
         undeadEffect(_loc1_);
         if(user.isPlayer)
         {
            user.sendHeal(_loc1_);
            Medals.unlock(Medals.coolingOff);
            for each(_loc2_ in Battle.players)
            {
               if(_loc2_.dead)
               {
                  if(Flags.battleEvent == Flags.EVIL_NATALIE)
                  {
                     _loc2_.revive(0);
                  }
                  else
                  {
                     _loc2_.revive(33);
                  }
               }
               else
               {
                  giveStatus(_loc2_,Status.AUTOLIFE,_loc1_.statusDegree);
               }
            }
         }
         else
         {
            for each(_loc3_ in Battle.foes)
            {
               if(!_loc3_.dead)
               {
                  _loc3_.getHeal({
                     "damage":_loc3_.maxHP * _loc3_.hit2HP / 180,
                     "randomness":20
                  });
               }
            }
         }
      }
      
      public static function starblast() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.starblast.getStats(100 / 3));
         if(user.isPlayer)
         {
            Medals.unlock(Medals.coolingOff);
         }
         if(user is EvilNoLegs)
         {
            _loc1_ = new DamageObject(EvilNoLegs.starblast.getStats(100 / 3));
         }
         user.sendHit(_loc1_);
      }
      
      public static function darkslash() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.darkslash.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 20;
            _loc1_.type = Stats.MAGIC_ATTACK;
         }
         user.sendHit(_loc1_);
         if(user.isPlayer)
         {
            retargetSlash();
         }
      }
      
      public static function darkslash2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.darkslash2.getStats(100 / 3));
         user.sendHit(_loc1_);
         retargetSlash();
      }
      
      public static function windslash() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.windslash.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 20;
            _loc1_.type = Stats.MAGIC_ATTACK;
         }
         user.sendHit(_loc1_);
         if(user.isPlayer)
         {
            retargetSlash();
         }
      }
      
      public static function windslash2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.windslash2.getStats(100 / 3));
         user.sendHit(_loc1_);
         retargetSlash();
      }
      
      public static function waterslash() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.waterslash.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 20;
            _loc1_.type = Stats.MAGIC_ATTACK;
         }
         user.sendHit(_loc1_);
         if(user.isPlayer)
         {
            retargetSlash();
         }
      }
      
      public static function waterslash2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.waterslash2.getStats(100 / 3));
         user.sendHit(_loc1_);
         retargetSlash();
      }
      
      public static function holyslash() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.holyslash.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 20;
            _loc1_.type = Stats.MAGIC_ATTACK;
         }
         user.sendHit(_loc1_);
         if(user.isPlayer)
         {
            retargetSlash();
         }
      }
      
      public static function holyslash2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.holyslash2.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.type = Stats.MAGIC_ATTACK;
            _loc1_.damage = 60;
         }
         user.sendHit(_loc1_);
         retargetSlash();
      }
      
      public static function lightningslash() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.lightningslash.getStats(100 / 3));
         user.sendHit(_loc1_);
         retargetSlash();
      }
      
      public static function lightningslash2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.lightningslash2.getStats(100 / 3));
         user.sendHit(_loc1_);
         retargetSlash();
      }
      
      public static function berserk() : *
      {
         var _loc1_:DamageObject = null;
         try
         {
            _loc1_ = new DamageObject(Battle.selectedSkill.getStats());
         }
         catch(e:Error)
         {
         }
         if(!user.isPlayer)
         {
            giveStatus(Battle.selectedTarget,Status.BERSERK,3);
         }
         else if(Battle.selectedTarget.isPlayer)
         {
            giveStatus(Battle.selectedTarget,Status.BERSERK,_loc1_.statusDegree);
         }
         else
         {
            user.sendHit(_loc1_);
         }
      }
      
      public static function charm() : *
      {
         var _loc1_:DamageObject = null;
         try
         {
            _loc1_ = new DamageObject(Battle.selectedSkill.getStats());
         }
         catch(e:Error)
         {
         }
         if(!user.isPlayer)
         {
            giveStatus(Battle.selectedTarget,Status.LOVED,3);
         }
         else if(Battle.selectedTarget.isPlayer)
         {
            giveStatus(Battle.selectedTarget,Status.LOVED,_loc1_.statusDegree);
         }
         else
         {
            user.sendHit(_loc1_);
         }
      }
      
      public static function sushicat(param1:int) : *
      {
         var _loc2_:DamageObject = null;
         if(param1 == 2)
         {
            _loc2_ = new DamageObject(Battle.selectedSkill.getStats(100 / 5));
            undeadEffect(_loc2_);
            user.sendHeal(_loc2_);
            if(Battle.selectedSkill == Spells.sushicat2)
            {
               giveStatus(Battle.selectedTarget,Status.GOOD_LUCK,_loc2_.statusDegree);
            }
         }
         else
         {
            _loc2_ = new DamageObject(Battle.selectedSkill.getStats(100 / 3));
            user.sendHit(_loc2_);
         }
      }
      
      public static function thecreator(param1:int) : *
      {
         var _loc3_:Player = null;
         var _loc2_:DamageObject = new DamageObject(Spells.thecreator.getStats(100 / 9));
         if(param1 == 2)
         {
            for each(_loc3_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc3_)
               {
                  giveStatus(_loc3_,Status.GOOD_LUCK,_loc2_.statusDegree);
               }
            }
            Weather.tempWeather = Weather.CLEAR;
            Weather.tempWeatherTime = 5;
            Battle.menu.updateWave();
         }
         else
         {
            (user as Player).resetLimit();
            user.sendHit(_loc2_);
         }
      }
      
      public static function thedestroyer(param1:int) : *
      {
         var _loc2_:DamageObject = null;
         if(param1 == 2)
         {
            _loc2_ = new DamageObject(Spells.thedestroyer.getStats(50));
            user.sendHit(_loc2_);
         }
         else
         {
            (user as Player).resetLimit();
            _loc2_ = new DamageObject(Spells.thedestroyer.getStats(50 / 6));
            user.sendHit(_loc2_);
         }
      }
      
      public static function sawblade() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.sawblade.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 55;
         }
         _loc1_.ignoreBuffs = true;
         user.sendHit(_loc1_);
      }
      
      public static function sawblades() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.sawblades.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 65;
         }
         _loc1_.ignoreBuffs = true;
         user.sendHit(_loc1_);
      }
      
      public static function firespin() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.firespin.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 40;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 55;
            _loc1_.statusChance = 100;
            _loc1_.statusDegree = 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function gaiaglow() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.gaiaglow.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 24;
         }
         user.sendHit(_loc1_);
      }
      
      public static function gaiabloom() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.gaiabloom.getStats());
         if(user is GloopFab || user is ClassicFlowerWhite)
         {
            _loc1_.statusChance = 33;
            _loc1_.statusDegree = 3;
            _loc1_.damage = 40;
         }
         else if(!user.isPlayer)
         {
            _loc1_.statusChance = 100;
            _loc1_.statusDegree = 5;
            _loc1_.damage = 120;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 120;
         }
         user.sendHit(_loc1_);
      }
      
      public static function gaiablossom() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.gaiablossom.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 50;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bulletbob() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bullet.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 42;
            if(user is BossGolemFire)
            {
               _loc1_.damage = 55;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function bigbullet() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bigbullet.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 150;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 150;
         }
         user.sendHit(_loc1_);
      }
      
      public static function laserblade() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.laserblade.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60;
         }
         user.sendHit(_loc1_);
      }
      
      public static function lasersword() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.lasersword.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 180;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 110;
         }
         if(user is BossGigalith)
         {
            _loc1_.damage = 125;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bubbles() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bubbles.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 28 / 3;
            if(user is BossGolemWater)
            {
               _loc1_.damage = 60 / 3;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function whirlpool() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.whirlpool.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 40;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 65;
         }
         user.sendHit(_loc1_);
      }
      
      public static function vortex() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.vortex.getStats(100 / 2));
         if(!user.isPlayer)
         {
            if(user is DragonOmega)
            {
               _loc1_.damage = 45 / 2;
            }
            else
            {
               _loc1_.damage = 80 / 2;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function energy() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.energy.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function energybomb() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.energybomb.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 50;
         }
         user.sendHit(_loc1_);
      }
      
      public static function energybarrage() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.energybarrage.getStats(100 / 2));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 42 / 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function snowbunny() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.snowbunny.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 30;
         }
         user.sendHit(_loc1_);
      }
      
      public static function snowcat() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.snowcat.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 100;
         }
         user.sendHit(_loc1_);
      }
      
      public static function ivy() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.ivy.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 22;
         }
         user.sendHit(_loc1_);
      }
      
      public static function vines() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.vines.getStats(100 / 4));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 90 / 4;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 65 / 4;
         }
         user.sendHit(_loc1_);
      }
      
      public static function air() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.air.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 20;
         }
         user.sendHit(_loc1_);
      }
      
      public static function airwave() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.airwave.getStats(100 / 2));
         if(!user.isPlayer)
         {
            _loc1_.damage = 43 / 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function shockwave() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.shockwave.getStats(100 / 2));
         if(!user.isPlayer)
         {
            _loc1_.damage = 45 / 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function holyfire() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.holyfire.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 50;
         }
         user.sendHit(_loc1_);
      }
      
      public static function screamer() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.screamer.getStats());
         if(!user.isPlayer)
         {
            if(user is EvilAnna)
            {
               _loc1_.damage = 120;
               _loc1_.accuracy = 200;
               _loc1_.statusEffect = Status.BAD_LUCK;
               _loc1_.statusChance = 100;
               _loc1_.statusDegree = 2;
               _loc1_.buffEffect = Stats.DEFENCE;
               _loc1_.buffChance = 100;
               _loc1_.buffDegree = -30;
            }
            else
            {
               _loc1_.damage = 40;
               _loc1_.accuracy = 200;
            }
         }
         user.sendHit(_loc1_);
         if(user.isPlayer)
         {
            Catching.considerSurrender(Catching.SKILL_BOOST);
         }
      }
      
      public static function teradrill() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.teradrill.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 50;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 120;
         }
         _loc1_.damage *= 1 + ((Battle.selectedTarget.buffs[Stats.DEFENCE] - 100) * 3.5 + (Battle.selectedTarget.buffs[Stats.MAGIC_DEFENCE] - 100) * 3.5) / 100;
         if(Battle.selectedTarget.status[Status.DEFEND])
         {
            _loc1_.damage *= 3;
         }
         if(_loc1_.damage < 0)
         {
            _loc1_.damage = 0;
         }
         user.sendHit(_loc1_);
      }
      
      public static function gale() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.gale.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 40;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 40;
         }
         user.sendHit(_loc1_);
      }
      
      public static function tempest() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.tempest.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 180;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 100;
         }
         if(user is EvilAnna)
         {
            _loc1_.damage = 180;
         }
         if(user is BossGigalith)
         {
            _loc1_.damage = 120;
         }
         user.sendHit(_loc1_);
      }
      
      public static function undeadEffect(param1:DamageObject) : *
      {
         if(user.isPlayer && Flags.battleEvent == Flags.EVIL_NATALIE)
         {
            param1.damage = 0;
         }
      }
      
      public static function heal() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.heal.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 40;
         }
         undeadEffect(_loc1_);
         if(!user.isPlayer)
         {
            Battle.selectedTarget.getHeal({
               "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 130,
               "randomness":20
            });
         }
         else
         {
            user.sendHeal(_loc1_);
         }
      }
      
      public static function healmore() : *
      {
         var _loc2_:Foe = null;
         var _loc1_:DamageObject = new DamageObject(Spells.healmore.getStats());
         undeadEffect(_loc1_);
         if(!user.isPlayer)
         {
            for each(_loc2_ in Battle.foes)
            {
               if(!_loc2_.dead)
               {
                  _loc2_.getHeal({
                     "damage":_loc2_.maxHP * _loc2_.hit2HP / 180,
                     "randomness":20
                  });
               }
            }
         }
         else
         {
            user.sendHeal(_loc1_);
         }
      }
      
      public static function revive() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.revive.getStats());
         undeadEffect(_loc1_);
         if(Battle.selectedTarget.dead)
         {
            (Battle.selectedTarget as Player).revive(_loc1_.damage);
         }
         else
         {
            giveStatus(Battle.selectedTarget,Status.AUTOLIFE,_loc1_.statusDegree);
         }
      }
      
      public static function cleanse() : *
      {
         Battle.selectedTarget.dispelBadStatus();
         Battle.selectedTarget.dispelBadBuffs();
         var _loc1_:DamageObject = new DamageObject(Spells.cleanse.getStats());
         if(!user.isPlayer)
         {
            _loc1_.statusDegree = 5;
         }
         giveStatus(Battle.selectedTarget,Status.BLESS,_loc1_.statusDegree);
      }
      
      public static function purify() : *
      {
         var _loc1_:Foe = null;
         var _loc2_:Player = null;
         if(!user.isPlayer)
         {
            for each(_loc1_ in Battle.foes)
            {
               _loc1_.dispelBadStatus();
            }
         }
         else
         {
            if(Battle.bonusSpellFlag || Boolean(user.status[Status.CONFUSE]))
            {
               Battle.selectedSkill.target = Target.ALL_ALLY;
            }
            if(Battle.selectedSkill.target == Target.ALL_ALLY)
            {
               for each(_loc2_ in Battle.players)
               {
                  _loc2_.dispelBadStatus();
               }
            }
            if(Battle.selectedSkill.target == Target.ALL_ENEMY)
            {
               for each(_loc1_ in Battle.foes)
               {
                  _loc1_.dispelBadStatus();
               }
            }
         }
         Spells.purify.target = Target.ALL_ENEMY_OR_ALL_ALLY;
      }
      
      public static function powermetal() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.powermetal.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 35;
         }
         user.sendHit(_loc1_);
         _loc1_ = new DamageObject(Spells.powermetal2.getStats(100,Spells.powermetal.level));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 30;
         }
         undeadEffect(_loc1_);
         user.sendHeal(_loc1_);
      }
      
      public static function firecrackers() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.firecrackers.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function firecrackers2() : *
      {
         var _loc1_:Player = null;
         for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
         {
            if(_loc1_)
            {
               giveStatus(_loc1_,Status.GOOD_LUCK,Spells.firecrackers.level);
            }
         }
         Catching.considerSurrender(Catching.SKILL_BOOST);
      }
      
      public static function lockon() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.lockon.getStats());
         if(!user.isPlayer)
         {
            _loc1_.buffDegree = 50;
         }
         Battle.selectedTarget.buff(Stats.ACCURACY,_loc1_.buffDegree + buffBoost());
         if(!(!user.isPlayer && !(user as Foe).isHard))
         {
            giveStatus(Battle.selectedTarget,Status.GOOD_LUCK,_loc1_.statusDegree);
         }
      }
      
      public static function guardian() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.guardian.getStats());
         if(!user.isPlayer)
         {
            _loc1_.buffDegree = 50;
         }
         Battle.selectedTarget.buff(Stats.DEFENCE,_loc1_.buffDegree + buffBoost());
         Battle.selectedTarget.buff(Stats.MAGIC_DEFENCE,_loc1_.buffDegree + buffBoost());
      }
      
      public static function flare() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.flare.getStats());
         if(!user.isPlayer)
         {
            _loc1_.buffDegree = -50;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bind() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bind.getStats());
         if(!user.isPlayer)
         {
            _loc1_.buffDegree = -50;
         }
         user.sendHit(_loc1_);
      }
      
      public static function barrier() : *
      {
         var _loc2_:Foe = null;
         var _loc3_:Player = null;
         var _loc1_:DamageObject = new DamageObject(Spells.barrier.getStats());
         if(!user.isPlayer)
         {
            for each(_loc2_ in Battle.foes)
            {
               _loc2_.buff(Stats.MAGIC_DEFENCE,(user as Foe).isHard ? 80 : 40);
               if((user as Foe).isHard)
               {
                  giveStatus(_loc2_,Status.MORALE,2);
               }
            }
         }
         else
         {
            for each(_loc3_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc3_)
               {
                  if(Spell.SUMMON)
                  {
                     _loc1_.buffDegree = 60;
                  }
                  _loc3_.buff(Stats.MAGIC_DEFENCE,_loc1_.buffDegree + buffBoost());
               }
            }
         }
      }
      
      public static function protect() : *
      {
         var _loc2_:Foe = null;
         var _loc3_:Player = null;
         var _loc1_:DamageObject = new DamageObject(Spells.protect.getStats());
         if(!user.isPlayer)
         {
            for each(_loc2_ in Battle.foes)
            {
               _loc2_.buff(Stats.DEFENCE,(user as Foe).isHard ? 80 : 40);
               if((user as Foe).isHard)
               {
                  giveStatus(_loc2_,Status.GOOD_LUCK,2);
               }
            }
         }
         else
         {
            for each(_loc3_ in Battle.players.concat(Battle.standbyPlayers))
            {
               if(_loc3_)
               {
                  if(Spell.SUMMON)
                  {
                     _loc1_.buffDegree = 60;
                  }
                  _loc3_.buff(Stats.DEFENCE,_loc1_.buffDegree + buffBoost());
               }
            }
         }
      }
      
      public static function debilitate() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.debilitate.getStats());
         if(!user.isPlayer)
         {
            _loc1_.buffDegree = (user as Foe).isHard ? -60 : -30;
            _loc1_.buffChance = 100;
         }
         user.sendHit(_loc1_);
      }
      
      public static function enfeeble() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.enfeeble.getStats());
         if(!user.isPlayer)
         {
            _loc1_.buffDegree = (user as Foe).isHard ? -60 : -30;
            _loc1_.buffChance = 100;
         }
         user.sendHit(_loc1_);
      }
      
      public static function dispel() : *
      {
         var _loc1_:Foe = null;
         var _loc2_:DamageObject = null;
         var _loc3_:Player = null;
         if(!user.isPlayer)
         {
            if(Battle.selectedSkill.target == Target.ALL_ALLY)
            {
               for each(_loc1_ in Battle.foes)
               {
                  _loc1_.dispelBadBuffs();
               }
            }
            if(Battle.selectedSkill.target == Target.ALL_ENEMY)
            {
               _loc2_ = new DamageObject(Spells.dispel.getStats());
               _loc2_.statusChance = 100;
               user.sendHit(_loc2_);
            }
         }
         else
         {
            if(Battle.bonusSpellFlag || Boolean(user.status[Status.CONFUSE]))
            {
               Battle.selectedSkill.target = Target.ALL_ALLY;
            }
            if(Battle.selectedSkill.target == Target.ALL_ALLY)
            {
               for each(_loc3_ in Battle.players)
               {
                  _loc3_.dispelBadBuffs();
               }
            }
            if(Battle.selectedSkill.target == Target.ALL_ENEMY)
            {
               _loc2_ = new DamageObject(Spells.dispel.getStats());
               user.sendHit(_loc2_);
            }
         }
         Spells.dispel.target = Target.ALL_ENEMY_OR_ALL_ALLY;
      }
      
      public static function partytime() : *
      {
         giveStatus(Battle.selectedTarget,Status.HASTE,1);
      }
      
      public static function buffBoost() : int
      {
         var _loc2_:Equip = null;
         var _loc3_:int = 0;
         if(!(user is Player))
         {
            return 0;
         }
         var _loc1_:int = 0;
         for each(_loc2_ in (user as Player).equips)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.level)
            {
               if(Boolean(_loc2_.specials[_loc3_]) && _loc2_.specials[_loc3_][0] == Equip.BOOST_BUFFS)
               {
                  _loc1_ += 10;
               }
               _loc3_++;
            }
         }
         return _loc1_;
      }
      
      public static function tsunami(param1:int) : *
      {
         var _loc2_:DamageObject = null;
         if(param1 == 1)
         {
            _loc2_ = new DamageObject(Spells.tsunami.getStats(100 / 6));
            if(!user.isPlayer)
            {
               _loc2_.type = Stats.MAGIC_ATTACK;
               Battle.targetType = Target.ALL_ENEMY;
               _loc2_.damage = 220 / 6;
               _loc2_.statusChance = 30;
               if(Options.difficulty == Options.EPIC)
               {
                  _loc2_.statusChance = 80;
               }
               user.sendHit(_loc2_);
               Battle.targetType = Target.ALL_STANDBY;
               _loc2_.statusChance = 0;
               _loc2_.damage = 110 / 6;
               user.sendHit(_loc2_);
            }
            else
            {
               if(user.getStat(Stats.ATTACK) > user.getStat(Stats.MAGIC_ATTACK))
               {
                  _loc2_.type = Stats.ATTACK;
               }
               else
               {
                  _loc2_.type = Stats.MAGIC_ATTACK;
               }
               (user as Player).resetLimit();
               user.sendHit(_loc2_);
            }
         }
         else
         {
            _loc2_ = new DamageObject(Spells.tsunami2.getStats());
            user.sendHit(_loc2_);
         }
      }
      
      public static function deathmetal() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.deathmetal.getStats());
         user.sendHit(_loc1_);
         (user as Player).resetLimit();
      }
      
      public static function deathmetal2() : *
      {
         var _loc2_:Player = null;
         var _loc1_:DamageObject = new DamageObject(Spells.deathmetal2.getStats(100,Spells.deathmetal.level));
         undeadEffect(_loc1_);
         user.sendHeal(_loc1_);
         Battle.targetType = Target.ALL_STANDBY;
         _loc1_ = new DamageObject(Spells.deathmetal2.getStats(100,Spells.deathmetal.level));
         undeadEffect(_loc1_);
         user.sendHeal(_loc1_);
         for each(_loc2_ in Battle.players.concat(Battle.standbyPlayers))
         {
            if(_loc2_)
            {
               giveStatus(_loc2_,Status.MORALE,5);
            }
         }
      }
      
      public static function annihilate() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.annihilate.getStats());
         if(!user.isPlayer)
         {
            _loc1_.statusChance = 100;
            _loc1_.statusDegree = 2;
            _loc1_.statusEffect = Status.DISABLE;
            _loc1_.element = Element.NONE;
            _loc1_.damage = 150;
            _loc1_.accuracy = 150;
            _loc1_.critical = 100;
         }
         user.sendHit(_loc1_);
         if(!user.graphic.zombieMode)
         {
            (user as Player).resetLimit();
         }
      }
      
      public static function ion() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.ion.getStats(100 / 8));
         if(!user.isPlayer)
         {
            _loc1_.damage = 150 / 8;
         }
         if(user is EvilLance)
         {
            _loc1_.damage = 220 / 8;
            _loc1_.statusEffect = Status.STUN;
            _loc1_.statusChance = 100;
            _loc1_.statusDegree = 2;
         }
         user.sendHit(_loc1_);
         if(user.isPlayer)
         {
            if(Battle.finalHit)
            {
               (user as Player).resetLimit();
            }
         }
      }
      
      public static function ion2() : *
      {
         if(!Flags.TANK_DEFEATED.quantity)
         {
            return;
         }
         if(user is Player && Players.player3.inParty() && Players.player3.inBattle())
         {
            giveStatus(Players.player3,Status.CHARGE,5);
         }
      }
      
      public static function abzero() : *
      {
         var _loc2_:Player = null;
         var _loc1_:DamageObject = new DamageObject(Spells.abzero.getStats(100 / 2));
         if(!user.isPlayer)
         {
            _loc1_.damage = 100 / 2;
         }
         else
         {
            (user as Player).resetLimit();
            for each(_loc2_ in Battle.players)
            {
               _loc2_.reduceCooldowns(10);
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function supernova() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.supernova.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 260;
            _loc1_.statusEffect = Status.SCORCHED;
         }
         else
         {
            (user as Player).resetLimit();
         }
         Battle.targetType = Target.ALL_ENEMY;
         Spells.supernova.target = Target.ALL_ENEMY;
         user.sendHit(_loc1_);
         if(!user.isPlayer)
         {
            Battle.targetType = Target.ALL_STANDBY;
            Spells.supernova.target = Target.ALL_STANDBY;
            _loc1_.statusChance = 0;
            _loc1_.damage = 180;
            user.sendHit(_loc1_);
         }
         Battle.targetType = Target.ALL_ENEMY;
         Spells.supernova.target = Target.ALL_ENEMY;
         if(user.isPlayer)
         {
            user = Weather.weatherFoe;
            _loc1_.damage = 60;
            Weather.weatherFoe.sendHit(_loc1_);
         }
         else
         {
            user = Weather.weatherPlayer;
            _loc1_.damage = 100;
            Weather.weatherPlayer.sendHit(_loc1_);
         }
         Spells.supernova.target = Target.ALL;
      }
      
      public static function blackhole(param1:int) : *
      {
         var _loc2_:DamageObject = null;
         if(!user.isPlayer)
         {
            if(param1 == 1)
            {
               _loc2_ = new DamageObject(Spells.blackhole.getStats());
               Battle.selectedSkill = Spells.blackhole;
               _loc2_.statusChance = 50;
               _loc2_.statusEffect = Status.DEATH;
               if(Options.difficulty == Options.HARD || Options.difficulty == Options.EPIC)
               {
                  _loc2_.statusChance = 100;
               }
               _loc2_.damage = 220;
               _loc2_.statusEffect = Status.DEATH;
               _loc2_.statusDegree = 1;
            }
            if(param1 == 2)
            {
               _loc2_ = new DamageObject(Spells.blackhole.getStats());
               Battle.selectedSkill = Spells.blackhole;
               Spells.blackhole.target = Target.ALL_STANDBY;
               Battle.targetType = Target.ALL_STANDBY;
               _loc2_.statusChance = 0;
               _loc2_.damage = 120;
               Spells.blackhole.target = Target.ALL_ENEMY;
            }
            user.sendHit(_loc2_);
         }
         else
         {
            if(param1 == 1)
            {
               _loc2_ = new DamageObject(Spells.blackhole.getStats());
               Battle.selectedSkill = Spells.blackhole;
               user.sendHit(_loc2_);
            }
            if(param1 == 2)
            {
               (user as Player).resetLimit();
               Battle.selectedTarget = user;
               Battle.targetType = Target.ONE_ENEMY;
               Weather.weatherFoe.sendHit(new DamageObject({
                  "accuracy":300,
                  "damage":200,
                  "type":Stats.MAGIC_ATTACK,
                  "statusEffect":Status.DEATH,
                  "statusChance":200,
                  "statusDegree":1
               }));
            }
         }
      }
      
      public static function rapture(param1:int) : *
      {
         var _loc2_:DamageObject = null;
         if(param1 == 1)
         {
            _loc2_ = new DamageObject(Spells.rapture.getStats(10));
         }
         if(param1 == 2)
         {
            _loc2_ = new DamageObject(Spells.rapture.getStats(90 / 9));
         }
         if(user.getStat(Stats.ATTACK) > user.getStat(Stats.MAGIC_ATTACK))
         {
            _loc2_.type = Stats.ATTACK;
         }
         else
         {
            _loc2_.type = Stats.MAGIC_ATTACK;
         }
         user.drainableDamage += user.sendHit(_loc2_) / 2;
         (user as Player).resetLimit();
      }
      
      public static function artattack(param1:int) : *
      {
         var _loc3_:Player = null;
         Battle.targetType = Target.ALL_ALLY;
         var _loc2_:DamageObject = new DamageObject(Spells.artattack.getStats());
         undeadEffect(_loc2_);
         if(param1 == 2)
         {
            user.sendHeal(_loc2_);
         }
         Battle.targetType = Target.ALL_STANDBY;
         _loc2_ = new DamageObject(Spells.artattack.getStats());
         undeadEffect(_loc2_);
         if(param1 == 2)
         {
            user.sendHeal(_loc2_);
         }
         for each(_loc3_ in Battle.players.concat(Battle.standbyPlayers))
         {
            if(_loc3_)
            {
               _loc3_.dispelBadStatus();
               if(param1 == 1)
               {
                  _loc3_.buff(Stats.HP,_loc2_.buffDegree + buffBoost());
               }
               if(param1 == 3)
               {
                  _loc3_.buff(Stats.EVADE,_loc2_.buffDegree + buffBoost());
               }
               if(param1 == 4)
               {
                  _loc3_.buff(Stats.ACCURACY,_loc2_.buffDegree + buffBoost());
               }
            }
         }
         (user as Player).resetLimit();
      }
      
      public static function sevenswords() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.sevenswords.getStats(100 / 12));
         user.sendHit(_loc1_);
         (user as Player).resetLimit();
      }
      
      public static function throwBoost(param1:Number) : Number
      {
         var _loc3_:Equip = null;
         var _loc4_:int = 0;
         var _loc2_:Number = 1;
         if(user is Player)
         {
            for each(_loc3_ in Battle.currentPlayer.equips)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc3_.level)
               {
                  if(Boolean(_loc3_.specials[_loc4_]) && _loc3_.specials[_loc4_][0] == Equip.BOOST_THROWS)
                  {
                     _loc2_ += 1;
                  }
                  _loc4_++;
               }
            }
         }
         return param1 * _loc2_;
      }
      
      public static function shuriken() : *
      {
         var _loc1_:DamageObject = new DamageObject({
            "type":Stats.ATTACK,
            "damage":100,
            "element":Element.BIO,
            "elementDegree":50,
            "statusEffect":Status.POISON,
            "statusChance":100,
            "statusDegree":4,
            "critical":30
         });
         _loc1_.damage = throwBoost(_loc1_.damage);
         _loc1_.statusChance = throwBoost(_loc1_.statusChance);
         if(!user.isPlayer)
         {
            _loc1_ = new DamageObject({
               "type":Stats.ATTACK,
               "damage":40,
               "element":Element.BIO,
               "elementDegree":25,
               "statusEffect":Status.POISON,
               "statusChance":100,
               "statusDegree":3,
               "critical":30
            });
         }
         user.sendHit(_loc1_);
      }
      
      public static function bomb() : *
      {
         var _loc1_:DamageObject = new DamageObject({
            "type":Stats.MAGIC_ATTACK,
            "damage":90,
            "element":Element.BOMB,
            "elementDegree":100,
            "statusEffect":Status.STAGGER,
            "statusChance":100,
            "statusDegree":1
         });
         _loc1_.damage = throwBoost(_loc1_.damage);
         _loc1_.statusChance = throwBoost(_loc1_.statusChance);
         user.sendHit(_loc1_);
      }
      
      public static function brick() : *
      {
         var _loc1_:DamageObject = new DamageObject({
            "type":Stats.ATTACK,
            "damage":80,
            "element":Element.EARTH,
            "elementDegree":50,
            "statusEffect":Status.BERSERK,
            "statusChance":100,
            "statusDegree":2,
            "accuracy":90
         });
         _loc1_.damage = throwBoost(_loc1_.damage);
         giveStatus(user,Status.TARGET,throwBoost(5));
         user.sendHit(_loc1_);
      }
      
      public static function snowball() : *
      {
         var _loc1_:DamageObject = new DamageObject({
            "type":Stats.MAGIC_ATTACK,
            "damage":60,
            "element":Element.ICE,
            "elementDegree":100,
            "statusEffect":Status.CHILL,
            "statusChance":150,
            "statusDegree":3
         });
         _loc1_.damage = throwBoost(_loc1_.damage);
         _loc1_.statusChance = throwBoost(_loc1_.statusChance);
         user.sendHit(_loc1_);
      }
      
      public static function initWeather() : *
      {
         Battle.selectedSkill = Spells.weatherPlaceholder;
         Battle.selectedSkill.target = Target.ALL;
         Battle.finalHit = true;
      }
      
      public static function lowgravity() : *
      {
         initWeather();
         Battle.selectedSkill.target = Target.ALL_ENEMY;
         var _loc1_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.LIGHT,
            "statusChance":100,
            "statusDegree":1
         });
         Weather.weatherPlayer.sendHit(_loc1_);
         Battle.selectedSkill.target = Target.ALL_ALLY;
         _loc1_ = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.LIGHT,
            "statusChance":100,
            "statusDegree":2,
            "noStack":true
         });
         Weather.weatherPlayer.sendHit(_loc1_);
      }
      
      public static function highgravity() : *
      {
         initWeather();
         Battle.selectedSkill.target = Target.ALL_ENEMY;
         var _loc1_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.HEAVY,
            "statusChance":100,
            "statusDegree":1
         });
         Weather.weatherPlayer.sendHit(_loc1_);
         Battle.selectedSkill.target = Target.ALL_ALLY;
         _loc1_ = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.HEAVY,
            "statusChance":100,
            "statusDegree":2,
            "noStack":true
         });
         Weather.weatherPlayer.sendHit(_loc1_);
      }
      
      public static function sandstorm() : *
      {
         initWeather();
         Battle.selectedSkill.target = Target.ALL_ENEMY;
         var _loc1_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.DRY,
            "statusChance":100,
            "statusDegree":1
         });
         Weather.weatherPlayer.sendHit(_loc1_);
         Battle.selectedSkill.target = Target.ALL_ALLY;
         _loc1_ = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.DRY,
            "statusChance":100,
            "statusDegree":2,
            "noStack":true
         });
         Weather.weatherPlayer.sendHit(_loc1_);
      }
      
      public static function wind() : *
      {
         initWeather();
         Battle.targetType = Target.ALL;
         var _loc1_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.DISPEL,
            "statusChance":25,
            "statusDegree":1
         });
         Weather.weatherPlayer.sendHit(_loc1_);
      }
      
      public static function rain() : *
      {
         initWeather();
         var _loc1_:int = 0;
         if(Boolean(user) && !user.isPlayer)
         {
            _loc1_ = 1;
         }
         Battle.selectedSkill.target = Target.ALL_ENEMY;
         var _loc2_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.WET,
            "statusChance":100,
            "statusDegree":1 + _loc1_
         });
         Weather.weatherPlayer.sendHit(_loc2_);
         Battle.selectedSkill.target = Target.ALL_ALLY;
         _loc2_ = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.WET,
            "statusChance":100,
            "statusDegree":2,
            "noStack":(_loc1_ ? false : true)
         });
         Weather.weatherPlayer.sendHit(_loc2_);
      }
      
      public static function hail() : *
      {
         initWeather();
         Battle.selectedSkill.target = Target.ALL_ENEMY;
         var _loc1_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.CHILL,
            "statusChance":100,
            "statusDegree":1
         });
         Weather.weatherPlayer.sendHit(_loc1_);
         Battle.selectedSkill.target = Target.ALL_ALLY;
         _loc1_ = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.CHILL,
            "statusChance":100,
            "statusDegree":2,
            "noStack":true
         });
         Weather.weatherPlayer.sendHit(_loc1_);
      }
      
      public static function neon() : *
      {
         var _loc1_:Player = null;
         var _loc2_:Foe = null;
         initWeather();
         for each(_loc1_ in Battle.players)
         {
            _loc1_.buff([Stats.ATTACK,Stats.MAGIC_ATTACK,Stats.ACCURACY][int(Math.random() * 3)],25);
         }
         for each(_loc2_ in Battle.foes)
         {
            _loc2_.buff([Stats.ATTACK,Stats.MAGIC_ATTACK,Stats.ACCURACY][int(Math.random() * 3)],25);
         }
      }
      
      public static function snow() : *
      {
         initWeather();
         var _loc1_:int = 0;
         if(Boolean(user) && !user.isPlayer)
         {
            _loc1_ = 1;
         }
         Battle.selectedSkill.target = Target.ALL_ENEMY;
         var _loc2_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.FREEZE,
            "statusChance":25,
            "statusDegree":1 + _loc1_
         });
         Weather.weatherPlayer.sendHit(_loc2_);
         Battle.selectedSkill.target = Target.ALL_ALLY;
         _loc2_ = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.FREEZE,
            "statusChance":20,
            "statusDegree":2 + _loc1_,
            "noStack":true
         });
         Weather.weatherPlayer.sendHit(_loc2_);
      }
      
      public static function ash() : *
      {
         initWeather();
         var _loc1_:int = 0;
         if(Boolean(user) && !user.isPlayer)
         {
            _loc1_ = 1;
         }
         Battle.targetType = Target.ALL;
         var _loc2_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.BURN,
            "statusChance":66,
            "statusDegree":1 + _loc1_
         });
         Weather.weatherPlayer.sendHit(_loc2_);
      }
      
      public static function static() : *
      {
         initWeather();
         Battle.targetType = Target.ALL;
         var _loc1_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.STUN,
            "statusChance":20,
            "statusDegree":1
         });
         Weather.weatherPlayer.sendHit(_loc1_);
      }
      
      public static function leaves() : *
      {
         var _loc1_:Player = null;
         var _loc2_:Foe = null;
         initWeather();
         for each(_loc1_ in Battle.players)
         {
            giveStatus(_loc1_,Status.BLESS,1);
         }
         for each(_loc2_ in Battle.foes)
         {
            giveStatus(_loc2_,Status.BLESS,1);
         }
      }
      
      public static function petals() : *
      {
         var _loc1_:Player = null;
         var _loc2_:Foe = null;
         initWeather();
         for each(_loc1_ in Battle.players)
         {
            if(Math.random() < 0.33)
            {
               giveStatus(_loc1_,Status.HASTE,1);
            }
         }
         for each(_loc2_ in Battle.foes)
         {
            if(Math.random() < 0.33)
            {
               giveStatus(_loc2_,Status.HASTE,1);
            }
         }
      }
      
      public static function sunshine() : *
      {
         var _loc1_:Player = null;
         var _loc2_:Foe = null;
         initWeather();
         for each(_loc1_ in Battle.players)
         {
            if(Math.random() < 0.2)
            {
               giveStatus(_loc1_,Status.MORALE,1);
            }
            else if(Math.random() < 0.2)
            {
               giveStatus(_loc1_,Status.BRAVE,1);
            }
         }
         for each(_loc2_ in Battle.foes)
         {
            if(Math.random() < 0.2)
            {
               giveStatus(_loc2_,Status.MORALE,2);
            }
            else if(Math.random() < 0.2)
            {
               giveStatus(_loc2_,Status.BRAVE,2);
            }
         }
      }
      
      public static function holyground() : *
      {
         var _loc1_:Player = null;
         var _loc2_:Foe = null;
         initWeather();
         for each(_loc1_ in Battle.players)
         {
            if(Math.random() < 0.25)
            {
               giveStatus(_loc1_,Status.GOOD_LUCK,1);
            }
            else if(Math.random() < 0.12)
            {
               giveStatus(_loc1_,Status.REGEN,1);
            }
         }
         for each(_loc2_ in Battle.foes)
         {
            if(Math.random() < 0.25)
            {
               giveStatus(_loc2_,Status.GOOD_LUCK,2);
            }
            else if(Math.random() < 0.12)
            {
               giveStatus(_loc2_,Status.REGEN,1);
            }
         }
      }
      
      public static function evilground() : *
      {
         initWeather();
         var _loc1_:int = 0;
         if(Boolean(user) && !user.isPlayer)
         {
            _loc1_ = 1;
         }
         Battle.selectedSkill.target = Target.ALL_ENEMY;
         var _loc2_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.DOOM,
            "statusChance":50,
            "statusDegree":3
         });
         Weather.weatherPlayer.sendHit(_loc2_);
         Battle.selectedSkill.target = Target.ALL_ALLY;
         _loc2_ = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.DOOM,
            "statusChance":50,
            "statusDegree":5
         });
         Weather.weatherPlayer.sendHit(_loc2_);
      }
      
      public static function acidRain() : *
      {
         initWeather();
         Battle.selectedSkill.target = Target.ALL;
         var _loc1_:int = 0;
         if(Boolean(user) && !user.isPlayer)
         {
            _loc1_ = 1;
         }
         Battle.targetType = Target.ALL;
         var _loc2_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.POISON,
            "statusChance":33 + _loc1_ * 33,
            "statusDegree":2 + _loc1_,
            "noStack":(_loc1_ ? false : true)
         });
         Weather.weatherPlayer.sendHit(_loc2_);
      }
      
      public static function earthquake() : *
      {
         initWeather();
         var _loc1_:int = 0;
         if(Boolean(user) && !user.isPlayer)
         {
            _loc1_ = 1;
         }
         Battle.selectedSkill.target = Target.ALL_ENEMY;
         var _loc2_:DamageObject = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.STAGGER,
            "statusChance":50,
            "statusDegree":1 + _loc1_
         });
         Weather.weatherPlayer.sendHit(_loc2_);
         Battle.selectedSkill.target = Target.ALL_ALLY;
         _loc2_ = new DamageObject({
            "accuracy":1000,
            "statusOnly":true,
            "statusEffect":Status.STAGGER,
            "statusChance":50,
            "statusDegree":2,
            "noStack":true
         });
         Weather.weatherPlayer.sendHit(_loc2_);
      }
      
      public static function radiation() : *
      {
         var _loc1_:Player = null;
         var _loc2_:Foe = null;
         initWeather();
         for each(_loc1_ in Battle.players)
         {
            _loc1_.buff([Stats.DEFENCE,Stats.MAGIC_DEFENCE,Stats.HP][int(Math.random() * 3)],-25);
         }
         for each(_loc2_ in Battle.foes)
         {
            _loc2_.buff([Stats.DEFENCE,Stats.MAGIC_DEFENCE][int(Math.random() * 2)],-25);
         }
      }
      
      public static function glitchy() : *
      {
         initWeather();
      }
      
      public static function fog() : *
      {
         var _loc1_:Player = null;
         var _loc2_:Foe = null;
         initWeather();
         for each(_loc1_ in Battle.players)
         {
            if(Math.random() < 0.25)
            {
               giveStatus(_loc1_,Status.SHROUD,2);
            }
         }
         for each(_loc2_ in Battle.foes)
         {
            if(Math.random() < 0.25)
            {
               giveStatus(_loc2_,Status.SHROUD,2);
            }
         }
      }
      
      public static function scan() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in Battle.foes)
         {
            if(!_loc1_.dead)
            {
               Foes.scan(_loc1_);
            }
         }
         Battle.menu.updateFoeBars();
      }
      
      public static function customFoeAttack(param1:Object) : *
      {
         user.sendHit(new DamageObject(param1));
      }
      
      public static function groundPound(param1:Number = 20) : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         user.sendHit(new DamageObject({
            "damage":param1,
            "element":Element.EARTH,
            "elementDegree":50,
            "statusEffect":Status.STAGGER,
            "statusDegree":1,
            "statusChance":10,
            "randomness":20,
            "accuracy":100
         }));
      }
      
      public static function basicFoeAttack(param1:Number = 30, param2:String = "none", param3:int = 0, param4:String = "none", param5:int = 0, param6:int = 0, param7:int = 100, param8:int = 10) : *
      {
         user.sendHit(new DamageObject({
            "damage":param1,
            "element":param2,
            "elementDegree":param3,
            "statusEffect":param4,
            "statusDegree":param5,
            "statusChance":param6,
            "accuracy":param7,
            "critical":param8
         }));
      }
      
      public static function basicFoeMagic(param1:Number = 30, param2:String = "none", param3:int = 0, param4:String = "none", param5:int = 0, param6:int = 0, param7:int = 100) : *
      {
         user.sendHit(new DamageObject({
            "type":Stats.MAGIC_ATTACK,
            "damage":param1,
            "element":param2,
            "elementDegree":param3,
            "statusEffect":param4,
            "statusDegree":param5,
            "statusChance":param6,
            "accuracy":param7
         }));
      }
      
      public static function slimeAttack(param1:int = 10) : *
      {
         if(Options.difficulty == Options.HARD || Options.difficulty == Options.EPIC)
         {
            param1 *= 2;
         }
         user.sendHit(new DamageObject({
            "damage":13,
            "statusEffect":Status.SLIME,
            "statusDegree":2,
            "statusChance":param1
         }));
      }
      
      public static function slimeAttack2(param1:int = 30) : *
      {
         if(Options.difficulty == Options.HARD || Options.difficulty == Options.EPIC)
         {
            param1 *= 2;
         }
         user.sendHit(new DamageObject({
            "damage":36,
            "statusEffect":Status.SLIME,
            "statusDegree":2,
            "statusChance":param1
         }));
      }
      
      public static function firerock() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.firerock.getStats());
         if(!user.isPlayer && user != Weather.weatherFoe)
         {
            _loc1_.damage = 25;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bones() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bones.getStats(100 / 2));
         if(!user.isPlayer && user != Weather.weatherFoe)
         {
            _loc1_.damage = 35 / 2;
         }
         if(user is BossNestNinja)
         {
            _loc1_.damage = 70 / 2;
            _loc1_.statusChance = 100;
            _loc1_.statusDegree = (user as Foe).isHard ? 2 : 5;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50 / 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bonestar() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bonestar.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50;
         }
         if(!user.isPlayer && user != Weather.weatherFoe)
         {
            _loc1_.damage = 33;
         }
         user.sendHit(_loc1_);
      }
      
      public static function groundblade() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.groundblade.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60 / 3;
         }
         if(!user.isPlayer && user != Weather.weatherFoe)
         {
            _loc1_.damage = 48 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function luckystar2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.luckystar2.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function stalactite() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.stalactite.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function stalactite2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.stalactite2.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 90 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function fume() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.fume.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60;
         }
         if(!user.isPlayer && user != Weather.weatherFoe)
         {
            _loc1_.damage = 33;
         }
         if(user is BossGolemFire)
         {
            _loc1_.damage = 60;
         }
         user.sendHit(_loc1_);
      }
      
      public static function scald() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.scald.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function eruption() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.eruption.getStats(180 / 3));
         if(user is EvilNatalie)
         {
            _loc1_.damage = 130 / 3;
         }
         if(!user.isPlayer && (user as Foe).isHard)
         {
            _loc1_.statusEffect = Status.SCORCHED;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 150 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function acid() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.acid.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 35;
         }
         if(user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.acidP.getStats());
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 80;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bamboo() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bamboo.getStats(100 / 2));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 35 / 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bamboo2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bamboo2.getStats(100 / 5));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 120 / 5;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bluebolt() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bluebolt.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 38;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bubblering() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bubblering.getStats());
         if(user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.bubbleringP.getStats());
            if(user.getStat(Stats.ATTACK) > user.getStat(Stats.MAGIC_ATTACK))
            {
               _loc1_.type = Stats.ATTACK;
            }
            else
            {
               _loc1_.type = Stats.MAGIC_ATTACK;
            }
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 90;
         }
         if(!user.isPlayer)
         {
            _loc1_.type = Stats.MAGIC_ATTACK;
            _loc1_.damage = 46;
         }
         user.sendHit(_loc1_);
      }
      
      public static function deepfreeze() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.deepfreeze.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 80;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 60;
            if((user as Foe).isHard)
            {
               _loc1_.statusChance = 200;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function wafer() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.wafer.getStats(100 / 2));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 40;
         }
         user.sendHit(_loc1_);
      }
      
      public static function present() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.present.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 80;
         }
         user.sendHit(_loc1_);
      }
      
      public static function swordswirl() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.swordswirl.getStats());
         if((user as Foe).isHard)
         {
            _loc1_.statusChance = 50;
         }
         user.sendHit(_loc1_);
      }
      
      public static function iceneedle() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.iceneedle.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 50;
         }
         user.sendHit(_loc1_);
      }
      
      public static function plasmacage() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.plasmacage.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50;
         }
         if(!user.isPlayer)
         {
            if(!(user as Foe).isHard)
            {
               _loc1_.statusChance = 50;
               _loc1_.statusDegree = 1;
            }
            _loc1_.damage = 40;
            if(user is TurretLaser)
            {
               _loc1_.damage = 60;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function candycanes() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.candycane.getStats(100 / 2));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 70 / 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function candycanes2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.candycane2.getStats(100 / 5));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 110 / 5;
         }
         user.sendHit(_loc1_);
      }
      
      public static function cactus() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.cactus.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60;
         }
         if(!user.isPlayer && !(user as Foe).isHard)
         {
            _loc1_.statusChance = 10;
         }
         user.sendHit(_loc1_);
      }
      
      public static function cacti() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.cacti.getStats(100 / 3));
         if(!user.isPlayer && !(user as Foe).isHard)
         {
            _loc1_.statusChance = 25;
         }
         user.sendHit(_loc1_);
      }
      
      public static function thunderblast() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.thunderblast.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 65;
         }
         if(user is BitThunder)
         {
            _loc1_.damage = 22;
            _loc1_.statusChance = 10;
         }
         user.sendHit(_loc1_);
      }
      
      public static function pixelfish() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.pixelfish.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 75;
            _loc1_.statusEffect = Status.SYPHON;
         }
         if(!user.isPlayer)
         {
            _loc1_.statusDegree = (user as Foe).isHard ? 2 : 1;
         }
         user.sendHit(_loc1_);
      }
      
      public static function pixelfork() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.pixelfork.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 180 / 3;
            _loc1_.statusEffect = Status.NONE;
         }
         user.sendHit(_loc1_);
      }
      
      public static function pixelriceball() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.pixelriceball.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.statusChance = 0;
            _loc1_.statusEffect = Status.NONE;
            _loc1_.damage = 90 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function pixelswords() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.pixelswords.getStats(100 / 4));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 210 / 4;
            _loc1_.statusEffect = Status.NONE;
         }
         user.sendHit(_loc1_);
      }
      
      public static function sand() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.sand.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 36;
         }
         if(user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.sandP.getStats());
         }
         user.sendHit(_loc1_);
      }
      
      public static function sanddune() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.sanddune.getStats());
         if(user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.sandduneP.getStats());
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 90;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 60;
         }
         user.sendHit(_loc1_);
      }
      
      public static function mushroom() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.mushroom.getStats());
         if(!user.isPlayer && (user as Foe).isHard)
         {
            _loc1_.statusDegree = 2;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50;
         }
         user.sendHit(_loc1_);
      }
      
      public static function lifedrain(param1:int) : *
      {
         var _loc2_:DamageObject = null;
         if(param1 == 1)
         {
            _loc2_ = new DamageObject(Spells.lifedrain.getStats());
            user.drainableDamage = user.sendHit(_loc2_) * 2;
         }
         if(param1 == 2)
         {
            if(user.drainableDamage > 0)
            {
               user.getHeal({
                  "damage":user.maxHP * ((user as Foe).isHard ? 0.2 : 0.1),
                  "randomness":10
               });
            }
            user.drainableDamage = 0;
         }
      }
      
      public static function harden() : *
      {
         giveStatus(Battle.selectedTarget,Status.LOVED,1);
      }
      
      public static function darken() : *
      {
         if(user.isPlayer)
         {
            giveStatus(Battle.selectedTarget,Status.INVISIBLE,2);
         }
         else
         {
            giveStatus(Battle.selectedTarget,Status.INVISIBLE,4);
         }
      }
      
      public static function lighten() : *
      {
         if(user.isPlayer)
         {
            giveStatus(Battle.selectedTarget,Status.ENCHANTED,2);
         }
         else
         {
            giveStatus(Battle.selectedTarget,Status.ENCHANTED,4);
         }
      }
      
      public static function puff() : *
      {
         giveStatus(Battle.selectedTarget,Status.SHROUD,3);
      }
      
      public static function puff2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.puff2.getStats());
         user.sendHit(_loc1_);
         giveStatus(Battle.selectedTarget,Status.SHROUD,(user as Foe).isHard ? 3 : 2);
      }
      
      public static function hellfire() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.hellfire.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 50;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 120;
            _loc1_.statusChance = 100;
         }
         user.sendHit(_loc1_);
      }
      
      public static function slimify() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.slimify.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function ink() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.ink.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function chocolate() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.chocolate.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function tentacles() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.tentacles.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 100 / 3;
         }
         if(user is EvilAnna)
         {
            _loc1_.damage = 130 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function recycle() : *
      {
         var _loc1_:DamageObject = null;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         if(Flags.battleEvent == Flags.EVIL_ANNA)
         {
            return;
         }
         if(Options.onePlayerMode && !user.isPlayer && Battle.selectedTarget && Battle.selectedTarget.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.recycleNerf.getStats());
            user.sendHit(_loc1_);
         }
         else
         {
            for each(_loc2_ in Stats.STATS)
            {
               Battle.selectedTarget.buffs[_loc2_] = 100 - (Battle.selectedTarget.buffs[_loc2_] - 100);
               _loc3_ = Battle.selectedTarget.getResistance("buff",_loc2_) * 100 - 100;
               if(_loc3_ < 0)
               {
                  _loc3_ = 0;
               }
               if(Battle.selectedTarget.buffs[_loc2_] < 20 + _loc3_)
               {
                  Battle.selectedTarget.buffs[_loc2_] = 20 + _loc3_;
               }
               if(Battle.selectedTarget.isPlayer)
               {
                  Battle.selectedTarget.buffHP();
               }
            }
            Battle.selectedTarget.statusDisplay.update(Battle.selectedTarget);
         }
      }
      
      public static function snowblast() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.snowblast.getStats());
         Battle.targetType = Target.CENTER_ENEMY;
         if(!user.isPlayer)
         {
            if(user is BitIce)
            {
               _loc1_.statusChance = 50;
            }
            if(!(user as Foe).isHard)
            {
               _loc1_.statusChance = 30;
            }
            _loc1_.damage = 80;
            if(user is ClassicCrystalBlue)
            {
               _loc1_.damage = 55;
            }
         }
         user.sendHit(_loc1_);
      }
      
      public static function slowdown() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.slowdown.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function speedup() : *
      {
         giveStatus(Battle.selectedTarget,Status.HASTE,1);
      }
      
      public static function rootspike() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.rootspike.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function rootspike2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.rootspike2.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function rootspike3() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.rootspike3.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function rootspike4() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.rootspike4.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function smallfireball() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.smallfireball.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function smallholyball() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.smallholyball.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function blast() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.blast.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 42;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bigblast() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bigblast.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 65;
         }
         user.sendHit(_loc1_);
      }
      
      public static function doomsday() : *
      {
         if(user is BossGigalith && !(user as Foe).isHard)
         {
            return;
         }
         Battle.targetType = Target.ALL_ENEMY;
         var _loc1_:DamageObject = new DamageObject(Spells.doomsday.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function spark() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.spark.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 40;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 55;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bigspark() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bigspark.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 80;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 105;
         }
         user.sendHit(_loc1_);
      }
      
      public static function talisman() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.talisman.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 10;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50;
         }
         user.sendHit(_loc1_);
      }
      
      public static function attackup() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.attackup.getStats());
         Battle.selectedTarget.buff(Stats.ATTACK,_loc1_.buffDegree + buffBoost());
         Battle.selectedTarget.buff(Stats.MAGIC_ATTACK,_loc1_.buffDegree + buffBoost());
      }
      
      public static function settarget() : *
      {
         giveStatus(Battle.selectedTarget,Status.TARGET,6);
      }
      
      public static function electrongun() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.electrongun.getStats(100 / 5));
         if(user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.electrongunP.getStats(100 / 5));
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 120 / 5;
         }
         user.sendHit(_loc1_);
      }
      
      public static function ember() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.ember.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 60;
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 25;
         }
         user.sendHit(_loc1_);
      }
      
      public static function fireblast() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.fireblast.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 38;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 80;
         }
         if(user is EvilNatalie)
         {
            _loc1_.damage = 130;
         }
         user.sendHit(_loc1_);
      }
      
      public static function acid2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.acid2.getStats());
         if(user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.acid2P.getStats());
         }
         if(!user.isPlayer)
         {
            _loc1_.damage = 38;
         }
         user.sendHit(_loc1_);
      }
      
      public static function firecrystals() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.firecrystals.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 45 / 3;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 70 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function lasercrystals() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.lasercrystals.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 48 / 3;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 80 / 3;
            _loc1_.statusChance = 33;
            _loc1_.statusEffect = Status.STUN;
            _loc1_.statusDegree = 1;
         }
         user.sendHit(_loc1_);
      }
      
      public static function frost() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.frost.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 25;
         }
         user.sendHit(_loc1_);
      }
      
      public static function rockfall() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.rockfall.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 50 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function icefall() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.icefall.getStats(100 / 3));
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 40 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bubbleblast() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bubbleblast.getStats());
         if(!user.isPlayer)
         {
            _loc1_.damage = 40;
         }
         user.sendHit(_loc1_);
      }
      
      public static function blackspikes() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.blackspikes.getStats(100 / 3));
         if(!user.isPlayer)
         {
            _loc1_.damage = 44 / 3;
         }
         if(user is EvilAnna)
         {
            _loc1_.damage = 150 / 3;
            _loc1_.statusEffect = Status.TIRED;
            _loc1_.statusChance = (user as Foe).isHard ? 100 : 0;
            _loc1_.statusDegree = 3;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 80 / 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function darkswoop() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.darkswoop.getStats());
         if((user as Foe).isHard)
         {
            _loc1_.statusDegree = 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function stonefist() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.stonefist.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 80;
         }
         user.sendHit(_loc1_);
      }
      
      public static function ritual() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.ritual.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 120;
            _loc1_.buffChance = 0;
            _loc1_.statusDegree = 3;
            _loc1_.statusChance = 50;
         }
         if(user is EvilAnna)
         {
            _loc1_.damage = 140;
         }
         user.sendHit(_loc1_);
      }
      
      public static function spiritbomb() : *
      {
         var _loc1_:DamageObject = new DamageObject(EvilNoLegs.spiritbomb.getStats());
         Battle.targetType = Target.ALL_ENEMY;
         user.sendHit(_loc1_);
         _loc1_ = new DamageObject(EvilNoLegs.spiritbomb2.getStats());
         Battle.targetType = Target.ALL_STANDBY;
         user.sendHit(_loc1_);
      }
      
      public static function spiderweb() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.spiderweb.getStats());
         if(!user.isPlayer && !(user as Foe).isHard)
         {
            _loc1_.statusChance = 0;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 20;
         }
         user.sendHit(_loc1_);
      }
      
      public static function spiders() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.spiders.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function spiders2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.spiderweb2.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function seeds() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.seeds.getStats(100 / 8));
         Battle.selectedTarget = Battle.extraRandomPlayer();
         Battle.targetType = Target.ONE_ENEMY;
         user.sendHit(_loc1_);
      }
      
      public static function geometry() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.geometry.getStats(100 / 4));
         if(!user.isPlayer && !(user as Foe).isHard)
         {
            _loc1_.statusChance = 0;
         }
         if(user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.geometryP.getStats(100 / 4));
            if(user.getStat(Stats.ATTACK) > user.getStat(Stats.MAGIC_ATTACK))
            {
               _loc1_.type = Stats.ATTACK;
            }
            else
            {
               _loc1_.type = Stats.MAGIC_ATTACK;
            }
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 170 / 4;
         }
         user.sendHit(_loc1_);
      }
      
      public static function geometry2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.geometry2.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 180;
            _loc1_.statusDegree = 3;
         }
         if(!user.isPlayer && !(user as Foe).isHard)
         {
            _loc1_.statusChance = 0;
         }
         user.sendHit(_loc1_);
      }
      
      public static function geometry3() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.geometry3.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 120;
            _loc1_.statusDegree = 3;
         }
         user.sendHit(_loc1_);
      }
      
      public static function sacrifice() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.sacrifice.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function razorleaf3() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.razorleaf3.getStats(100 / 3));
         user.sendHit(_loc1_);
      }
      
      public static function razorfeathers() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.razorfeathers.getStats(100 / 16));
         Battle.selectedTarget = Battle.extraRandomPlayer();
         Battle.targetType = Target.ONE_ENEMY;
         user.sendHit(_loc1_);
      }
      
      public static function bigroot() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bigroot.getStats());
         if(user.isPlayer)
         {
            _loc1_.damage = 150;
         }
         user.sendHit(_loc1_);
      }
      
      public static function death() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.death.getStats());
         if(user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.deathP.getStats());
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 100;
         }
         user.sendHit(_loc1_);
      }
      
      public static function seabomb() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.seabomb.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 200;
         }
         user.sendHit(_loc1_);
      }
      
      public static function lasershot() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.lasershot.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function bubbleball() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bubbleball.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function fairybomb() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.fairybomb.getStats());
         if(user.isPlayer)
         {
            Battle.targetType = Target.ONE_ENEMY;
            if(user.isPlayer)
            {
               Battle.selectedSkill.target = Target.ONE_ENEMY;
            }
            _loc1_ = new DamageObject(Spells.fairybombP.getStats());
         }
         user.sendHit(_loc1_);
         if(user.isPlayer)
         {
            Battle.selectedSkill.target = Target.ALL_ENEMY;
         }
      }
      
      public static function flybomb() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.flybomb.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function flybomb2() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.flybomb2.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function plasmaball() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.plasmaball.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function starpow() : *
      {
         if(user is Foe)
         {
            return;
         }
         var _loc1_:DamageObject = new DamageObject(Spells.starpow.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function devIce() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.devIce.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function devWind() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.devWind.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function devTentacle() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.devTentacle.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function gigadoomsday() : *
      {
         var _loc1_:DamageObject = new DamageObject(BossDevourer.gigadoomsday.getStats());
         Battle.targetType = Target.ALL_ENEMY;
         user.sendHit(_loc1_);
         _loc1_ = new DamageObject(BossDevourer.gigadoomsday2.getStats());
         Battle.targetType = Target.ALL_STANDBY;
         user.sendHit(_loc1_);
      }
      
      public static function arcadeblast() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arcadeBlast.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function arcadevines() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arcadeVines.getStats());
         if((user as Foe).isHard)
         {
            _loc1_.buffDegree = -80;
         }
         user.sendHit(_loc1_);
      }
      
      public static function arcaderoots() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arcadeRoots.getStats());
         if((user as Foe).isHard)
         {
            _loc1_.statusChance = 100;
         }
         user.sendHit(_loc1_);
      }
      
      public static function arcadelogs() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arcadeLogs.getStats(100 / 3));
         user.sendHit(_loc1_);
      }
      
      public static function arcadenettle() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arcadeNettle.getStats(100 / 2));
         if(user is Foe && (user as Foe).isHard)
         {
            _loc1_.statusDegree = 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function arcadeflood() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arcadeFlood.getStats());
         if((user as Foe).isHard)
         {
            _loc1_.statusChance = 200;
         }
         if(user is ArcadeMermaid)
         {
            _loc1_.statusEffect = Status.WET;
            _loc1_.statusDegree = 5;
         }
         user.sendHit(_loc1_);
      }
      
      public static function arcadestool() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arcadeStool.getStats());
         if((user as Foe).isHard)
         {
            _loc1_.buffDegree = -40;
         }
         user.sendHit(_loc1_);
      }
      
      public static function arcadepoison() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arcadePoison.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 100;
            _loc1_.buffChance = 0;
         }
         user.sendHit(_loc1_);
      }
      
      public static function arcadefish() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arcadeFish.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function papersword() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.paperSword.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function paperstars() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.paperStars.getStats());
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 200;
         }
         user.sendHit(_loc1_);
      }
      
      public static function bonepillar() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.bonePillar.getStats());
         if(user is Foe && (user as Foe).isHard)
         {
            _loc1_.statusChance = 100;
         }
         if(Battle.bonusSpellFlag)
         {
            _loc1_.damage = 180;
         }
         user.sendHit(_loc1_);
      }
      
      public static function darkswords() : *
      {
         var _loc1_:DamageObject = null;
         if(user.isPlayer)
         {
            _loc1_ = new DamageObject(Spells.retroswordsSingle.getStats(100 / 3));
            user.sendHit(_loc1_);
         }
         else
         {
            user.swords();
         }
      }
      
      public static function darksword() : *
      {
         Battle.targetType = Target.ONE_ENEMY;
         if(user.isPlayer)
         {
            Battle.selectedSkill.target = Target.ONE_ENEMY;
         }
         var _loc1_:DamageObject = new DamageObject(Spells.retroswordsAll.getStats());
         user.sendHit(_loc1_);
         if(user.isPlayer)
         {
            Battle.selectedSkill.target = Target.ALL_ENEMY;
         }
      }
      
      public static function pencilstab(param1:int) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.pencilStab.getStats(100 / 2));
         if((user as Foe).isHard)
         {
            _loc2_.statusChance = 100;
         }
         if(param1 == 1)
         {
            Battle.targetType == Target.CENTER_ENEMY;
         }
         else
         {
            Battle.targetType == Target.ONE_ENEMY;
         }
         Weather.weatherFoe.sendHit(_loc2_);
      }
      
      public static function sketchspear(param1:int) : *
      {
         var _loc2_:DamageObject = new DamageObject(Spells.sketchSpear.getStats());
         if(param1 == 2)
         {
            if((!Battle.standbyPlayers[0] || Battle.standbyPlayers[0].dead) && (!Battle.standbyPlayers[1] || Battle.standbyPlayers[1].dead))
            {
               return;
            }
            _loc2_.damage /= 4;
            Battle.selectedTarget = Battle.randomStandby();
         }
         user.sendHit(_loc2_);
      }
      
      public static function sketchspears() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.sketchSpears.getStats(100 / 3));
         user.sendHit(_loc1_);
      }
      
      public static function sketchbones() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.sketchBones.getStats(100 / 3));
         if((user as Foe).isHard)
         {
            _loc1_.statusChance = 100;
         }
         user.sendHit(_loc1_);
      }
      
      public static function sketchskull() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.sketchSkull.getStats());
         if((user as Foe).isHard)
         {
            _loc1_.statusDegree = 2;
         }
         user.sendHit(_loc1_);
      }
      
      public static function sketchrock() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.sketchRock.getStats());
         user.sendHit(_loc1_);
      }
      
      public static function sharpen() : *
      {
         var _loc2_:Player = null;
         var _loc3_:String = null;
         var _loc4_:Foe = null;
         var _loc1_:DamageObject = new DamageObject(Spells.sharpen.getStats());
         if(Battle.selectedSkill == Spells.sharpenP)
         {
            _loc1_ = new DamageObject(Spells.sharpenP.getStats());
            if(Battle.bonusSpellFlag || Boolean(user.status[Status.CONFUSE]))
            {
               Battle.selectedSkill.target = Target.ALL_ALLY;
            }
            if(Battle.selectedSkill.target == Target.ALL_ALLY)
            {
               for each(_loc2_ in Battle.players.concat(Battle.standbyPlayers))
               {
                  if(_loc2_)
                  {
                     for each(_loc3_ in Status.POSITIVES)
                     {
                        if(!(_loc3_ == Status.DEFEND || _loc3_ == Status.HASTE))
                        {
                           if(_loc2_.status[_loc3_])
                           {
                              _loc2_.status[_loc3_] += Spells.sharpenP.level;
                              if(_loc2_.status[_loc3_] > 9)
                              {
                                 _loc2_.status[_loc3_] = 9;
                              }
                           }
                        }
                     }
                     if(_loc2_.statusDisplay)
                     {
                        _loc2_.statusDisplay.update(_loc2_);
                     }
                  }
               }
            }
            else
            {
               for each(_loc4_ in Battle.foes)
               {
                  for each(_loc3_ in Status.NEGATIVES)
                  {
                     if(_loc3_ != Status.DOOM)
                     {
                        if(_loc4_.status[_loc3_])
                        {
                           _loc4_.status[_loc3_] += Spells.sharpenP.level;
                           if(_loc4_.status[_loc3_] > 9)
                           {
                              _loc4_.status[_loc3_] = 9;
                           }
                        }
                     }
                  }
                  if(_loc4_.statusDisplay)
                  {
                     _loc4_.statusDisplay.update(_loc4_);
                  }
               }
            }
            Spells.sharpenP.target = Target.ALL_ENEMY_OR_ALL_ALLY;
            Battle.menu.updateFoeBars();
            Battle.menu.updatePlayerBars();
         }
         else if(user is Player)
         {
            for each(_loc2_ in Battle.players)
            {
               _loc2_.buff(Stats.ATTACK,_loc1_.buffDegree + buffBoost());
               _loc2_.buff(Stats.ACCURACY,_loc1_.buffDegree + buffBoost());
            }
         }
         if(user is Foe)
         {
            for each(_loc4_ in Battle.foes)
            {
               _loc4_.buff(Stats.ATTACK,_loc1_.buffDegree);
            }
         }
      }
      
      public static function musicalblast() : *
      {
         var _loc2_:Player = null;
         var _loc1_:DamageObject = new DamageObject(Spells.musicalblastP.getStats(100));
         for each(_loc2_ in Battle.players.concat(Battle.standbyPlayers))
         {
            if(_loc2_)
            {
               giveStatus(_loc2_,Status.REGEN,_loc1_.statusDegree);
               _loc2_.buff(Stats.MAGIC_ATTACK,_loc1_.buffDegree + buffBoost());
            }
         }
      }
      
      public static function arcadeteeth() : *
      {
         var _loc1_:DamageObject = new DamageObject(Spells.arcadeTeeth.getStats(100 / 3));
         if(user is Foe)
         {
            user.teeth();
         }
         else
         {
            user.sendHit(_loc1_);
         }
      }
   }
}

