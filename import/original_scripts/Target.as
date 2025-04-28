package
{
   import flash.display.MovieClip;
   import flash.utils.*;
   import foes.*;
   
   public class Target
   {
      public static var ONE_ANY:String = "one any";
      
      public static var ALL_ENEMY:String = "all enemies";
      
      public static var ONE_ENEMY:String = "one enemy";
      
      public static var CAPTURABLE_ENEMY:String = "capturable enemy";
      
      public static var ALL_ALLY:String = "all allies";
      
      public static var ALL_STANDBY:String = "all standby";
      
      public static var ANY_ALLY:String = "any ally";
      
      public static var ONE_ALLY:String = "one ally";
      
      public static var RANDOM_ENEMY:String = "random enemy";
      
      public static var ALL_ENEMY_OR_ALL_ALLY:String = "all enemies or all allies";
      
      public static var DEAD_ALLY:String = "dead ally";
      
      public static var READY_ALLY:String = "ready ally";
      
      public static var SWAPABLE_ALLY:String = "swapable ally";
      
      public static var ALL:String = "all";
      
      public static var AUTO:String = "auto";
      
      public static var CENTER_ENEMY:String = "center";
      
      public static var ONE_ALLY_OR_STANDBY:String = "one ally or stanby";
      
      public static var ONE_ANY_OR_STANDBY:String = "one any or standby";
      
      public var name:String;
      
      public var number:Number;
      
      public var level:Number = 0;
      
      public var isPlayer:Boolean = false;
      
      public var HP:Number;
      
      public var realHP:int;
      
      public var maxHP:int;
      
      public var attack:Number;
      
      public var defence:Number;
      
      public var magicAttack:Number;
      
      public var magicDefence:Number;
      
      public var evade:Number;
      
      public var accuracy:Number;
      
      public var statusResistance:Object;
      
      public var elementalResistance:Object;
      
      public var buffResistance:Object;
      
      public var buffs:Object;
      
      public var bonus:Object;
      
      public var status:Object;
      
      public var counter:Boolean = false;
      
      public var lastAttacker:Target;
      
      public var lastTarget:Target;
      
      public var drainableDamage:int = 0;
      
      public var onHit:Function = null;
      
      public var onHeal:Function = null;
      
      public var lastHit:Object = {};
      
      public var turnTaken:Boolean = false;
      
      public var dead:Boolean = false;
      
      public var swapLayers:Boolean = true;
      
      public var immortal:Boolean = false;
      
      public var zombieAggro:Number = 0;
      
      public var zombieAggroMax:Number = 30;
      
      public var zombieLimit:Boolean = false;
      
      public var zombieMode:Boolean = false;
      
      public var graphicType:String;
      
      public var graphicScale:int;
      
      public var graphic:TargetMC;
      
      public var statusDisplay:StatusDisplay;
      
      public var crosshair:MovieClip;
      
      public var skin:int = 1;
      
      public var scale:Number = 67.7;
      
      public var damageNumber:DamageNumber;
      
      public var hit2HP:int = 50;
      
      public var hit3HP:int = 0;
      
      public var hitAnim:String = "hit1";
      
      public var hit2Anim:String = "hit2";
      
      public var hit3Anim:String = "hit3";
      
      public var dieAnim:String = "die";
      
      public function Target()
      {
         super();
         this.statusResistance = Status.getStatusHolder(100);
         this.status = Status.getStatusHolder(0);
         this.elementalResistance = Element.getElementHolder();
         this.buffResistance = Buff.getBuffHolder();
         this.buffs = Buff.getBuffHolder();
         this.bonus = Buff.getBuffHolder();
      }
      
      public function isDoll() : Boolean
      {
         return this is DollMatt || this is DollNatalie || this is DollLance || this is DollAnna || this is DollNoLegs;
      }
      
      public function isMirror() : Boolean
      {
         return this is MirrorHaunted || this is MirrorAngel || this is MirrorDemon || this is MirrorWise;
      }
      
      public function isFish() : Boolean
      {
         return this is FishSteam || this is FishJet || this is FishGold;
      }
      
      public function canTakeTurn() : Boolean
      {
         return !(this.dead || this.turnTaken || Boolean(this.status[Status.STUN]) || Boolean(this.status[Status.FREEZE]));
      }
      
      public function canMove() : Boolean
      {
         return !(this.dead || Boolean(this.status[Status.STUN]) || Boolean(this.status[Status.FREEZE]));
      }
      
      public function createGraphic(param1:int, param2:int, param3:int, param4:int = -1) : *
      {
         var _loc5_:Class = getDefinitionByName(this.graphicType);
         this.graphic = new _loc5_();
         Battle.stage.addChild(this.graphic);
         this.graphic.self = this;
         this.graphic.scaleX *= this.graphicScale / 100;
         this.graphic.scaleY *= this.graphicScale / 100;
         if(this.zombieMode)
         {
            this.graphic.scaleX *= -1;
         }
         this.graphic.x = param1 - this.graphic.getX(1);
         this.graphic.y = param2 - this.graphic.getY(1);
         if(param4 != -1)
         {
            this.graphic.parent.setChildIndex(this.graphic,param4);
         }
         this.createStatusDisplay(param4);
      }
      
      public function createStatusDisplay(param1:int = -1) : *
      {
         this.statusDisplay = new StatusDisplay();
         Battle.stage.addChild(this.statusDisplay);
         this.statusDisplay.x += this.graphic.getX(4);
         this.statusDisplay.y += this.graphic.getY(4);
         this.statusDisplay.scaleX = 0.6;
         this.statusDisplay.scaleY = 0.6;
         if(param1 != -1)
         {
            this.statusDisplay.parent.setChildIndex(this.statusDisplay,param1 + 1);
         }
      }
      
      public function removeGraphic() : *
      {
         if(!this.graphic)
         {
            return;
         }
         this.graphic.stop();
         if(Battle.stage && Battle.stage.targetMCs && Battle.stage.targetMCs.indexOf(this.graphic) != -1)
         {
            Battle.stage.targetMCs.splice(Battle.stage.targetMCs.indexOf(this.graphic),1);
         }
         if(Boolean(this.graphic) && Boolean(this.graphic.parent))
         {
            this.graphic.parent.removeChild(this.graphic);
         }
         if(Boolean(this.statusDisplay) && Boolean(this.statusDisplay.parent))
         {
            this.statusDisplay.mouseChildren = false;
            this.statusDisplay.parent.removeChild(this.statusDisplay);
         }
         this.statusDisplay = null;
         this.graphic = null;
      }
      
      public function sendHit(param1:DamageObject) : int
      {
         var damageDealt:int;
         var f:Target = null;
         var wep:Equip = null;
         var i:int = 0;
         var e:Equip = null;
         var k:int = 0;
         var p:Target = null;
         var hit:DamageObject = param1;
         if(this is Player && Battle.selectedSkill is Spell && Battle.selectedSkill.element == Element.WEAPON)
         {
            wep = (this as Player).weapon;
            i = 0;
            while(i < wep.level)
            {
               if(Boolean(wep.specials[i]) && wep.specials[i][0] == Equip.IGNORE_BUFFS)
               {
                  hit.ignoreBuffs = true;
               }
               i++;
            }
         }
         if(this.isPlayer)
         {
            hit.damage *= (this as Player).elementalBoost(hit.element);
         }
         hit.baseDamage = hit.damage;
         if(Spell.SUMMON)
         {
            hit.damage *= SaveData.summonPower;
            hit.damage *= 1 + Cards.powerBoost / 100;
            hit.baseDamage = hit.damage;
         }
         else if(Spell.SUMMON2)
         {
            hit.damage *= SaveData.summonPower / 2;
         }
         else if(hit.type == Stats.ATTACK)
         {
            hit.damage *= this.getStat(Stats.ATTACK);
            hit.baseDamage *= this.getStat(Stats.ATTACK,true);
         }
         else if(hit.type == Stats.MAGIC_ATTACK)
         {
            hit.damage *= this.getStat(Stats.MAGIC_ATTACK);
            hit.baseDamage *= this.getStat(Stats.MAGIC_ATTACK,true);
         }
         if(Boolean(this.status[Status.BERSERK]) && hit.bonus == Spell.BERSERKABLE)
         {
            hit.damage *= 2.5;
         }
         if(Boolean(this.status[Status.BERSERK]) && !this.isPlayer)
         {
            hit.damage *= 1.5;
         }
         hit.accuracy *= this.getStat(Stats.ACCURACY);
         if(this.status[Status.GOOD_LUCK])
         {
            hit.accuracy *= 1.25;
         }
         if(this.status[Status.BAD_LUCK])
         {
            hit.accuracy *= 0.8;
         }
         hit.sender = this;
         if(this.isPlayer && (!(Battle.selectedSkill is Spell) || !Battle.selectedSkill.multiMC))
         {
            if(Battle.selectedSkill != Summons.BossCyclopsGlacial && Battle.selectedSkill != Summons.BossCyclopsInfernal)
            {
               Battle.targetType = Battle.selectedSkill.target;
            }
         }
         if(this.isPlayer)
         {
            (this as Player).combineWeaponEffects(hit);
         }
         else if(!this.isPlayer)
         {
            Global.element = hit.element;
         }
         else
         {
            Global.element = "none";
         }
         if(this.status[Status.BRAVE])
         {
            hit.critical = hit.critical * 2 + 20;
         }
         if(this.status[Status.GOOD_LUCK])
         {
            hit.critical *= 1.25;
         }
         if(this.status[Status.BAD_LUCK])
         {
            hit.critical *= 0.8;
         }
         if(this.status[Status.GOOD_LUCK])
         {
            hit.statusChance *= 1.25;
            hit.buffChance *= 1.25;
         }
         if(this.status[Status.BAD_LUCK])
         {
            hit.statusChance *= 0.8;
            hit.buffChance *= 0.8;
         }
         if(this is Player && this != Weather.weatherPlayer)
         {
            for each(e in Battle.currentPlayer.equips)
            {
               k = 0;
               while(k < e.level)
               {
                  if(Boolean(e.specials[k]) && e.specials[k][0] == Equip.BOOST_STATUS)
                  {
                     hit.statusChance *= 1.5;
                  }
                  if(Boolean(e.specials[k]) && e.specials[k][0] == Equip.BOOST_DEBUFFS)
                  {
                     hit.buffDegree -= 10;
                     hit.buffChance *= 1.3;
                  }
                  k++;
               }
            }
         }
         if(Options.politeFoes && !this.isPlayer)
         {
            hit.statusChance *= 0.7;
            hit.buffChance *= 0.7;
         }
         damageDealt = 0;
         if(this is Foe)
         {
            if(Options.threePlayerMode)
            {
               if(Battle.targetType == ONE_ENEMY || Battle.targetType == CENTER_ENEMY)
               {
                  hit.damage *= Constants.P3singleAttackNerf;
               }
               else if(Battle.targetType == ALL_ENEMY)
               {
                  hit.damage *= Constants.P3allAttackNerf;
               }
               if(hit.statusEffect && hit.statusEffect != Status.DOOM && Boolean(hit.statusDegree))
               {
                  hit.statusChance *= Constants.P3statusChanceNerf;
               }
            }
            if(Options.twoPlayerMode)
            {
               if(Battle.targetType == ONE_ENEMY || Battle.targetType == CENTER_ENEMY)
               {
                  hit.damage *= Constants.P2singleAttackNerf;
               }
               else if(Battle.targetType == ALL_ENEMY)
               {
                  hit.damage *= Constants.P2allAttackNerf;
               }
               if(hit.statusEffect && hit.statusEffect != Status.DOOM && Boolean(hit.statusDegree))
               {
                  hit.statusDegree = Math.ceil(hit.statusDegree * Constants.P2statusDegreeNerf);
                  hit.statusChance *= Constants.P2statusChanceNerf;
               }
            }
            if(Options.onePlayerMode)
            {
               if(Battle.targetType == ONE_ENEMY || Battle.targetType == CENTER_ENEMY)
               {
                  hit.damage *= Constants.P1singleAttackNerf;
               }
               else if(Battle.targetType == ALL_ENEMY)
               {
                  hit.damage *= Constants.P1allAttackNerf;
               }
               if(hit.statusEffect && hit.statusEffect != Status.DOOM && Boolean(hit.statusDegree))
               {
                  hit.statusDegree = Math.ceil(hit.statusDegree * Constants.P1statusDegreeNerf);
                  hit.statusChance *= Constants.P1statusChanceNerf;
               }
               if(hit.statusEffect == Status.STUN || hit.statusEffect == Status.CONFUSE || hit.statusEffect == Status.BERSERK || hit.statusEffect == Status.HUNGRY)
               {
                  hit.statusDegree = 1;
               }
            }
         }
         if(Battle.targetType == ONE_ENEMY || Battle.targetType == ONE_ALLY || Battle.targetType == ONE_ANY)
         {
            if(Battle.selectedTarget)
            {
               damageDealt += Battle.selectedTarget.takeHit(hit);
            }
         }
         if(Battle.targetType == CENTER_ENEMY)
         {
            damageDealt += Battle.selectedTarget.takeHit(hit);
            hit.damage /= 3;
            hit.statusChance /= 3;
            hit.buffChance /= 3;
            if(this.isPlayer)
            {
               for each(f in Battle.foes)
               {
                  if(f != Battle.selectedTarget)
                  {
                     damageDealt += f.takeHit(hit);
                  }
               }
            }
            if(!this.isPlayer)
            {
               for each(f in Battle.players)
               {
                  if(f != Battle.selectedTarget)
                  {
                     damageDealt += f.takeHit(hit);
                  }
               }
            }
         }
         if(this.isPlayer && Battle.targetType == ALL_ENEMY || !this.isPlayer && Battle.targetType == ALL_ALLY || Battle.targetType == ALL)
         {
            for each(f in Battle.foes)
            {
               damageDealt += f.takeHit(hit);
            }
         }
         if(!this.isPlayer && Battle.targetType == ALL_ENEMY || this.isPlayer && Battle.targetType == ALL_ALLY || Battle.targetType == ALL)
         {
            for each(p in Battle.players)
            {
               damageDealt += p.takeHit(hit);
            }
         }
         if(Battle.targetType == ALL_STANDBY)
         {
            if(Battle.standbyPlayers[0])
            {
               damageDealt += Battle.standbyPlayers[0].takeHit(hit);
            }
            if(Battle.standbyPlayers[1])
            {
               damageDealt += Battle.standbyPlayers[1].takeHit(hit);
            }
         }
         Text.finalHit = Battle.finalHit;
         Battle.finalHit = true;
         return damageDealt;
      }
      
      public function takeHit(param1:DamageObject) : int
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:int = 0;
         var _loc14_:Boolean = false;
         var _loc15_:* = false;
         var _loc16_:Number = NaN;
         var _loc17_:Boolean = false;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Spell = null;
         var _loc21_:int = 0;
         var _loc22_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.isPlayer && this.realHP > 0 && (this as Player).hasGlasses())
         {
            _loc3_ = true;
         }
         if(param1.statusEffect == Status.RANDOM)
         {
            Equip.randomStatus(param1);
            _loc2_ = true;
         }
         var _loc4_:String = param1.statusEffect;
         var _loc5_:Number = param1.statusChance;
         if(this.isPlayer && !Global.endlessBattle && (_loc4_ == Status.STUN || _loc4_ == Status.DEATH || _loc4_ == Status.CONFUSE || _loc4_ == Status.FREEZE))
         {
            if(Options.difficulty == Options.EASY)
            {
               _loc5_ /= 2;
            }
            if(Options.difficulty == Options.ZERO)
            {
               _loc5_ /= 3;
            }
         }
         var _loc6_:int = param1.statusDegree;
         if(_loc2_)
         {
            param1.statusEffect = Status.RANDOM;
         }
         var _loc7_:String = param1.element;
         if(_loc7_ == Element.RANDOM)
         {
            _loc7_ = Element.ELEMENTS[int(Math.random() * 10)];
         }
         var _loc8_:Boolean = this is Player && (this == Battle.standbyPlayers[0] || this == Battle.standbyPlayers[1]);
         var _loc9_:Number = 1;
         if(!this.dead)
         {
            _loc10_ = param1.damage;
            _loc11_ = param1.baseDamage;
            _loc12_ = false;
            if(!_loc11_ || _loc11_ < 0)
            {
            }
            _loc13_ = DamageNumber.DAMAGE;
            _loc14_ = false;
            this.lastAttacker = param1.sender;
            _loc15_ = this.status[Status.FREEZE] > 0;
            _loc9_ = 1;
            if(this.status[Status.GOOD_LUCK])
            {
               _loc9_ = 0.9;
            }
            if(this.status[Status.BAD_LUCK])
            {
               _loc9_ = 1.1;
            }
            if(Math.random() > param1.accuracy * _loc9_ / this.getStat(Stats.EVADE) / 100 && !this.status[Status.STUN] && !this.status[Status.FREEZE])
            {
               if(this.graphic)
               {
                  if((this is Player5 || this is EvilNoLegs) && !Battle.finalHit)
                  {
                     this.graphic.animate("evade2");
                  }
                  else
                  {
                     this.graphic.animate("evade");
                  }
               }
               _loc13_ = DamageNumber.MISS;
               _loc10_ = 0;
            }
            else
            {
               if(this.immortal)
               {
                  _loc10_ = 0;
               }
               _loc9_ = 1;
               if(this.status[Status.GOOD_LUCK])
               {
                  _loc9_ = 0.7;
               }
               if(this.status[Status.BAD_LUCK])
               {
                  _loc9_ = 1.3;
               }
               _loc16_ = param1.critical * _loc9_;
               if(this.status[Status.STAGGER])
               {
                  _loc16_ += 100;
               }
               if(Math.random() * 100 < _loc16_ && !this.status[Status.BRAVE] && !param1.statusOnly)
               {
                  if(_loc16_ > 200 && Math.random() * 100 < _loc16_ - 200)
                  {
                     _loc10_ *= 2.5;
                     DamageNumber.displayStatus("critical3",this);
                  }
                  else if(_loc16_ > 100 && Math.random() * 100 < _loc16_ - 100)
                  {
                     _loc10_ *= 2;
                     DamageNumber.displayStatus("critical2",this);
                  }
                  else
                  {
                     _loc10_ *= 1.5;
                     DamageNumber.displayStatus("critical",this);
                  }
                  if(Boolean(this.status[Status.STAGGER]) && Battle.finalHit)
                  {
                     --this.status[Status.STAGGER];
                  }
               }
               _loc10_ = this.randomize(_loc10_,param1.randomness);
               if(this.isPlayer && param1.sender && param1.sender.isPlayer)
               {
                  _loc10_ *= param1.sender.level / 22 + 0.2;
               }
               if(!this.isPlayer && param1.sender && !param1.sender.isPlayer)
               {
                  _loc10_ /= param1.sender.level / 22 + 0.2;
               }
               if(param1.type == Stats.ATTACK && param1.bonus != Spell.STATUS_DAMAGE)
               {
                  _loc10_ /= this.getStat(Stats.DEFENCE,param1.ignoreBuffs);
                  _loc11_ /= this.getStat(Stats.DEFENCE,false,true);
               }
               if(param1.type == Stats.MAGIC_ATTACK && param1.bonus != Spell.STATUS_DAMAGE)
               {
                  _loc10_ /= this.getStat(Stats.MAGIC_DEFENCE,param1.ignoreBuffs);
                  _loc11_ /= this.getStat(Stats.MAGIC_DEFENCE,false,true);
               }
               if(Boolean(this.status[Status.DEFEND]) && param1.bonus != Spell.STATUS_DAMAGE)
               {
                  _loc10_ /= 2;
                  _loc11_ /= 2;
               }
               if(Boolean(this.status[Status.FREEZE]) && !param1.statusOnly)
               {
                  if(_loc7_ != Element.FIRE)
                  {
                     _loc10_ *= 2;
                  }
                  if(Battle.finalHit)
                  {
                     this.status[Status.FREEZE] = 0;
                     this.unfreeze();
                  }
               }
               if(Boolean(this.status[Status.BURN]) && (_loc7_ == Element.ICE || _loc7_ == Element.WATER || _loc4_ == Status.WET || _loc4_ == Status.CHILL))
               {
                  this.status[Status.BURN] = 0;
               }
               else if(Boolean(this.status[Status.SCORCHED]) && (_loc7_ == Element.ICE || _loc7_ == Element.WATER || _loc4_ == Status.WET || _loc4_ == Status.CHILL))
               {
                  this.status[Status.SCORCHED] = 0;
               }
               if(Boolean(this.status[Status.BERSERK]) && (_loc7_ == Element.ICE || _loc7_ == Element.WATER || _loc4_ == Status.WET || _loc4_ == Status.CHILL))
               {
                  this.status[Status.BERSERK] = 0;
               }
               if(_loc7_ != Element.NONE)
               {
                  _loc18_ = 1;
                  _loc19_ = 1;
                  if(Boolean(this.status[Status.WET]) && _loc4_ == Status.FREEZE)
                  {
                     _loc5_ *= 2;
                  }
                  if(Boolean(this.status[Status.WET]) && (_loc7_ == Element.ICE || _loc7_ == Element.THUNDER))
                  {
                     _loc18_ = 1.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.WET];
                     }
                  }
                  if(Boolean(this.status[Status.DRY]) && (_loc4_ == Status.BURN || _loc4_ == Status.SCORCHED))
                  {
                     _loc5_ *= 2;
                  }
                  if(Boolean(this.status[Status.DRY]) && (_loc7_ == Element.FIRE || _loc7_ == Element.BOMB))
                  {
                     _loc18_ = 1.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.DRY];
                     }
                  }
                  if(Boolean(this.status[Status.CHILL]) && _loc4_ == Status.FREEZE)
                  {
                     _loc5_ *= 2;
                  }
                  if(Boolean(this.status[Status.CHILL]) && (_loc7_ == Element.ICE || _loc7_ == Element.WATER))
                  {
                     _loc19_ = 1.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.CHILL];
                     }
                  }
                  if(Boolean(this.status[Status.SHROUD]) && (_loc7_ == Element.HOLY || _loc7_ == Element.WIND))
                  {
                     this.status[Status.SHROUD] = 0;
                  }
                  if(Boolean(this.status[Status.LIGHT]) && _loc7_ == Element.WIND)
                  {
                     _loc18_ = 1.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.LIGHT];
                     }
                  }
                  if(Boolean(this.status[Status.HEAVY]) && _loc7_ == Element.EARTH)
                  {
                     _loc18_ = 1.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.HEAVY];
                     }
                  }
                  if(Boolean(this.status[Status.TIRED]) && _loc7_ == Element.BIO)
                  {
                     _loc18_ = 1.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.TIRED];
                     }
                  }
                  if(Boolean(this.status[Status.WEAKEN]) && _loc7_ == Element.DARK)
                  {
                     _loc18_ = 1.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.WEAKEN];
                     }
                  }
                  if(Boolean(this.status[Status.CURSE]) && _loc7_ == Element.HOLY)
                  {
                     _loc18_ = 1.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.CURSE];
                     }
                  }
                  if(Boolean(this.status[Status.WET]) && _loc7_ == Element.FIRE)
                  {
                     _loc18_ = 0.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.WET];
                     }
                  }
                  if(this is NormalNoLegs && _loc7_ == Element.WATER)
                  {
                     Skills.giveStatus(this,Status.SURRENDER,99);
                  }
                  if(Boolean(this.status[Status.DRY]) && _loc7_ == Element.WATER)
                  {
                     this.status[Status.DRY] = 0;
                  }
                  if(Boolean(this.status[Status.DRY]) && (_loc7_ == Element.THUNDER || _loc7_ == Element.ICE))
                  {
                     _loc18_ = 0.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.DRY];
                     }
                  }
                  if(Boolean(this.status[Status.CHILL]) && _loc7_ == Element.FIRE)
                  {
                     this.status[Status.CHILL] = 0;
                  }
                  if(Boolean(this.status[Status.CHILL]) && _loc7_ == Element.BIO)
                  {
                     _loc18_ = 0.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.CHILL];
                     }
                  }
                  if(Boolean(this.status[Status.LIGHT]) && _loc7_ == Element.EARTH)
                  {
                     _loc18_ = 0.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.LIGHT];
                     }
                  }
                  if(Boolean(this.status[Status.HEAVY]) && _loc7_ == Element.WIND)
                  {
                     _loc18_ = 0.5;
                     if(Battle.finalHit)
                     {
                        --this.status[Status.HEAVY];
                     }
                  }
                  if((_loc18_ > 1.1 || _loc19_ > 1.1) && this is Foe)
                  {
                     Medals.unlock(Medals.conductiveStatus);
                  }
                  _loc10_ = _loc10_ * param1.elementDegree / 100 * (this.getResistance("elemental",_loc7_) * _loc18_ * _loc19_) + _loc10_ * (1 - param1.elementDegree / 100);
                  if(Options.comboBreaker)
                  {
                     _loc11_ = _loc11_ * param1.elementDegree / 100 * this.getResistance("elemental",_loc7_) + _loc11_ * (1 - param1.elementDegree / 100);
                  }
                  if(this.getResistance("elemental",_loc7_) < 0 && this.isPlayer)
                  {
                  }
                  if(_loc13_ == DamageNumber.DAMAGE)
                  {
                     if(this.getResistance("elemental",_loc7_) > 1)
                     {
                        _loc13_ = DamageNumber.SUPER_EFFECTIVE;
                     }
                     if(this.getResistance("elemental",_loc7_) < 1)
                     {
                        _loc13_ = DamageNumber.NOT_EFFECTIVE;
                     }
                  }
               }
               if(this.status[Status.INVISIBLE])
               {
                  if(param1.type == Stats.ATTACK)
                  {
                     _loc10_ = 0;
                     if(!param1.statusOnly)
                     {
                        Medals.unlock(Medals.sometimesInvincible);
                     }
                  }
                  if(param1.type == Stats.MAGIC_ATTACK)
                  {
                     _loc10_ *= 2;
                  }
               }
               if(this.status[Status.ENCHANTED])
               {
                  if(param1.type == Stats.ATTACK)
                  {
                     _loc10_ *= 2;
                  }
                  if(param1.type == Stats.MAGIC_ATTACK)
                  {
                     _loc10_ = 0;
                     if(!param1.statusOnly)
                     {
                        Medals.unlock(Medals.sometimesInvincible);
                     }
                  }
               }
               _loc17_ = false;
               if(_loc4_ != Status.NONE && Battle.finalHit)
               {
                  if(_loc4_ == Status.CHILL && this.status[Status.WET] && _loc10_ >= 0)
                  {
                     _loc4_ = Status.FREEZE;
                  }
                  if(_loc4_ == Status.WET && this.status[Status.CHILL] && _loc10_ >= 0)
                  {
                     _loc4_ = Status.FREEZE;
                  }
                  if(_loc4_ == Status.DOOM && Boolean(this.status[Status.BAD_LUCK]))
                  {
                     _loc4_ = Status.DEATH;
                  }
                  if(_loc4_ == Status.DEATH && Boolean(this.status[Status.GOOD_LUCK]))
                  {
                     _loc4_ = Status.STAGGER;
                  }
                  _loc9_ = 1;
                  if(this.status[Status.GOOD_LUCK])
                  {
                     _loc9_ = 0.8;
                  }
                  if(this.status[Status.BAD_LUCK])
                  {
                     _loc9_ = 1.25;
                  }
                  if(Math.random() < _loc9_ * _loc5_ * this.getResistance("status",_loc4_) / 100)
                  {
                     if(this.status[Status.BLESS])
                     {
                        if(_loc4_ == Status.DEATH)
                        {
                           this.status[Status.BLESS] -= 2;
                        }
                        else if(_loc4_ == Status.DISPEL)
                        {
                           this.status[Status.BLESS] -= 3;
                        }
                        else if(_loc4_ == Status.DOOM || _loc4_ == Status.POISON || _loc4_ == Status.VIRUS || _loc4_ == Status.STAGGER || _loc4_ == Status.BURN || _loc4_ == Status.SCORCHED || _loc4_ == Status.FREEZE || _loc4_ == Status.SHROUD || _loc4_ == Status.TIRED || _loc4_ == Status.STUN || _loc4_ == Status.SYPHON || _loc4_ == Status.CONFUSE || _loc4_ == Status.BAD_LUCK || _loc4_ == Status.DISABLE || _loc4_ == Status.CURSE || _loc4_ == Status.WEAKEN || _loc4_ == Status.BERSERK || _loc4_ == Status.HUNGRY || _loc4_ == Status.STUFFED)
                        {
                           this.status[Status.BLESS] = this.status[Status.BLESS] - 1;
                        }
                        if(this.status[Status.BLESS] <= 0)
                        {
                           this.status[Status.BLESS] = 0;
                        }
                     }
                     else
                     {
                        if(Options.statusAntibody && !this.isPlayer)
                        {
                           (this as Foe).statusAntibody(_loc4_);
                        }
                        _loc17_ = true;
                        if(_loc4_ == Status.BAD_LUCK && Boolean(this.status[Status.DOOM]))
                        {
                           this.status[Status.DOOM] = 1;
                        }
                        if(param1.statusOnly && param1.noStack && Boolean(this.status[_loc4_]))
                        {
                           _loc6_ = 1;
                        }
                        if(_loc4_ == Status.FREEZE && _loc10_ >= 0)
                        {
                           this.status[Status.WET] = 0;
                           this.status[Status.CHILL] = 0;
                           this.status[Status.DEFEND] = 0;
                           this.freeze();
                        }
                        if(_loc4_ == Status.HEAVY)
                        {
                           this.status[Status.LIGHT] = 0;
                        }
                        if(_loc4_ == Status.LIGHT)
                        {
                           this.status[Status.HEAVY] = 0;
                        }
                        if(_loc4_ == Status.DRY)
                        {
                           this.status[Status.WET] = 0;
                        }
                        if(_loc4_ == Status.WET)
                        {
                           this.status[Status.DRY] = 0;
                        }
                        if(_loc4_ == Status.GOOD_LUCK)
                        {
                           this.status[Status.BAD_LUCK] = 0;
                        }
                        if(_loc4_ == Status.BAD_LUCK)
                        {
                           this.status[Status.GOOD_LUCK] = 0;
                        }
                        if(_loc4_ == Status.HUNGRY)
                        {
                           this.status[Status.STUFFED] = 0;
                        }
                        if(_loc4_ == Status.DISPEL)
                        {
                           this.dispelGoodStatus();
                           this.dispelGoodBuffs();
                        }
                        if(_loc4_ == Status.DISABLE && this is Player)
                        {
                           for each(_loc20_ in (this as Player).skillsMain)
                           {
                              if(_loc20_ && Math.random() < 0.5 && _loc20_.cooldown < _loc6_)
                              {
                                 _loc20_.cooldown = _loc6_;
                              }
                           }
                        }
                        else if(_loc4_ == Status.DOOM && !this.status[Status.DOOM] && Math.random() < _loc5_ * this.getResistance("status",Status.DEATH) / 100)
                        {
                           this.status[Status.DOOM] = _loc6_;
                           _loc14_ = true;
                        }
                        else if(_loc4_ == Status.DEATH)
                        {
                           _loc10_ = this.maxHP;
                           _loc13_ = DamageNumber.DEATH;
                           _loc12_ = true;
                        }
                        else if(_loc4_ != Status.DOOM)
                        {
                           if(!(_loc4_ == Status.PUSH_OUT && Global.pushedPlayer != Battle.players.indexOf(this)))
                           {
                              this.status[_loc4_] += _loc6_;
                           }
                           if(this.status[_loc4_] > 9)
                           {
                              this.status[_loc4_] = 9;
                           }
                        }
                        if(_loc4_ != Status.DEATH && _loc4_ != Status.DOOM && (_loc4_ != Status.FREEZE || _loc10_ >= 0))
                        {
                           _loc14_ = true;
                        }
                        if(_loc4_ == Status.ENCHANTED)
                        {
                           this.status[Status.INVISIBLE] = false;
                        }
                        if(_loc4_ == Status.INVISIBLE)
                        {
                           this.status[Status.ENCHANTED] = false;
                        }
                     }
                  }
               }
               if(Battle.finalHit && (Battle.targetType == ONE_ENEMY || Battle.targetType == CENTER_ENEMY))
               {
                  if(this.status[Status.TARGET])
                  {
                     --this.status[Status.TARGET];
                  }
               }
               if(Battle.finalHit)
               {
                  if(this.status[Status.ENCHANTED] && _loc4_ != Status.ENCHANTED && !param1.statusOnly)
                  {
                     --this.status[Status.ENCHANTED];
                  }
                  if(this.status[Status.INVISIBLE] && _loc4_ != Status.INVISIBLE && !param1.statusOnly)
                  {
                     --this.status[Status.INVISIBLE];
                  }
               }
               if(param1.buffEffect != Stats.NONE && Battle.finalHit)
               {
                  if(!((param1.buffEffect == Stats.DEFENCE || param1.buffEffect == Stats.MAGIC_DEFENCE) && Boolean(this.status[Status.MORALE])))
                  {
                     if(!((param1.buffEffect == Stats.ATTACK || param1.buffEffect == Stats.MAGIC_ATTACK) && Boolean(this.status[Status.BRAVE])))
                     {
                        if(!(param1.buffEffect == Stats.HP && Boolean(this.status[Status.STUFFED])))
                        {
                           if(Math.random() < param1.buffChance / 100)
                           {
                              _loc21_ = param1.buffDegree;
                              _loc21_ = _loc21_ + (Math.round(this.getResistance("buff",param1.buffEffect) * 100) - 100);
                              if(_loc21_ > 0)
                              {
                                 _loc21_ = 0;
                              }
                              this.buff(param1.buffEffect,_loc21_);
                              this.buffHP();
                           }
                        }
                     }
                  }
               }
               _loc10_ = int(_loc10_);
               if(this.isPlayer && (this as Player).hasTetris())
               {
                  if(_loc10_ > 0 && _loc10_ % 10 == 4)
                  {
                     _loc10_ = 4;
                  }
               }
               if(param1.statusOnly && _loc4_ != Status.DEATH)
               {
                  if(Boolean(this.status[Status.FREEZE]) && _loc4_ == Status.FREEZE)
                  {
                     this.graphic.animate("freeze");
                  }
               }
               else if(_loc10_ < 0)
               {
                  _loc10_ *= -1;
                  this.takeHeal(_loc10_,0,_loc8_);
                  _loc13_ = DamageNumber.HEAL;
               }
               else
               {
                  if(_loc8_)
                  {
                     Medals.unlock(Medals.backAttack);
                  }
                  _loc22_ = false;
                  if(this.getHpPercent() >= 50 && Boolean(this.status[Status.MORALE]))
                  {
                     _loc22_ = true;
                  }
                  _loc11_ *= 6;
                  if(Options.comboBreaker && !this.isPlayer && !_loc12_ && _loc10_ > _loc11_)
                  {
                     _loc10_ = _loc11_;
                  }
                  _loc10_ = int(_loc10_);
                  if(_loc10_ < 0)
                  {
                     _loc10_ = 0;
                  }
                  this.realHP -= _loc10_;
                  if(Boolean(this.onHit) && _loc10_ > 1)
                  {
                     this.onHit();
                     this.lastHit.element = _loc7_;
                     this.lastHit.statusEffect = _loc4_;
                     this.lastHit.statusDegree = _loc6_;
                     this.lastHit.statusChance = 0;
                     this.lastHit.type = param1.type;
                  }
                  if(this.isPlayer)
                  {
                     Battle.foeScore += _loc10_;
                  }
                  if(!this.isPlayer)
                  {
                     Battle.playerScore += _loc10_;
                  }
                  if(Flags.battleEvent != Flags.EVIL_MATT)
                  {
                     this.addLimit(_loc10_);
                  }
                  if(this.getHpPercent() < 33 && Boolean(this.graphic))
                  {
                     this.graphic.lowHP = true;
                  }
                  if(!this.isPlayer && this.zombieMode && !this.zombieLimit)
                  {
                     this.zombieAggro += _loc10_ / this.maxHP * 100;
                     if(this.zombieAggro >= this.zombieAggroMax)
                     {
                        DamageNumber.displayDamage(DamageNumber.LIMIT,0,this);
                        this.zombieLimit = true;
                        this.zombieAggro = 0;
                     }
                  }
                  if(this.realHP <= 0 && (_loc22_ || Global.bowwhack))
                  {
                     this.realHP = 1;
                     if(this.isPlayer)
                     {
                        Medals.unlock(Medals.secondChance);
                     }
                  }
                  if(this.realHP <= 0 && !_loc3_)
                  {
                     if(this.isPlayer)
                     {
                        ++SaveData.playersWounded;
                        if(this.lastAttacker == Weather.weatherFoe && !Spell.SUMMON)
                        {
                           Medals.unlock(Medals.unfavourableWeather);
                        }
                     }
                     else
                     {
                        ++SaveData.foesDefeated;
                        if(SaveData.foesDefeated >= Medals.expPipeline.value)
                        {
                           Medals.unlock(Medals.expPipeline);
                        }
                        if(this.lastAttacker == Weather.weatherPlayer && !Spell.SUMMON)
                        {
                           Medals.unlock(Medals.favourableWeather);
                        }
                     }
                     this.realHP = 0;
                     this.dead = true;
                     this.counter = false;
                     if(this is Player && Battle.playerCountPlusBackup() == 0)
                     {
                        Battle.players[0].graphic.makeMagic(RedFlash);
                     }
                     if(!_loc15_)
                     {
                        this.status[Status.FREEZE] = 0;
                        if(this.graphic)
                        {
                           this.graphic.freeze = false;
                        }
                     }
                     if(this.graphic)
                     {
                        this.graphic.animate(this.dieAnim);
                     }
                     else if(this is Player)
                     {
                        SFX.playSound("bighit");
                        SFX.playSound("p" + (this as Player).playerNo + "death");
                        this.dead = true;
                        this.realHP = 0;
                        if(this.status[Status.AUTOLIFE])
                        {
                           Medals.unlock(Medals.secondChance);
                           if(Flags.battleEvent == Flags.EVIL_NATALIE && this.isPlayer)
                           {
                              (this as Player).revive(0);
                           }
                           else
                           {
                              (this as Player).revive();
                           }
                        }
                     }
                     if(!this.isPlayer && Boolean((this as Foe).SP))
                     {
                        if(this.status[Status.SURRENDER])
                        {
                           ++SaveData.foesExecuted;
                           Medals.unlock(Medals.showCruelty);
                        }
                        (this as Foe).getSP();
                        Battle.menu.updatePlayerBars();
                     }
                     if(!this.status[Status.AUTOLIFE])
                     {
                        this.dispelAll();
                     }
                     this.status[Status.FREEZE] = 0;
                  }
                  else if(Boolean(this.status[Status.FREEZE]) && !_loc8_)
                  {
                     this.applyGi();
                     this.graphic.animate("freeze");
                  }
                  else if(Boolean(this.status[Status.DEFEND]) && (this.isPlayer || this is EvilAnna || this is EvilMatt || this is EvilNatalie || this is EvilNoLegs))
                  {
                     if(this.isPlayer)
                     {
                        this.status[Status.PUSH_OUT] = 0;
                        this.applyGi();
                     }
                     if(!this.isPlayer || !_loc8_)
                     {
                        this.graphic.animate("defhit");
                     }
                     else
                     {
                        SFX.playSound("defhit");
                     }
                  }
                  else if(this.hit3HP != 0 && _loc10_ > this.hit3HP * this.maxHP / 100)
                  {
                     if(!param1.isCounter)
                     {
                        this.prepareCounter(0.75);
                     }
                     this.graphic.animate(this.hit3Anim);
                  }
                  else if((_loc10_ > this.hit2HP * this.maxHP / 100 || this.status[Status.PUSH_OUT]) && !_loc8_ && !(this.isPlayer && !Battle.finalHit))
                  {
                     this.applyGi();
                     if(this is Player1 && Boolean(this.status[Status.PUSH_OUT]))
                     {
                        this.graphic.animate("hit3");
                     }
                     else if(this.status[Status.PUSH_OUT])
                     {
                        this.graphic.animate(this.hit2Anim);
                     }
                     else if(!_loc8_)
                     {
                        if(!param1.isCounter)
                        {
                           this.prepareCounter(0.75);
                        }
                        this.graphic.animate(this.hit2Anim);
                        if(this.isPlayer)
                        {
                           (this as Player).autoBuff();
                        }
                     }
                     else if(_loc8_)
                     {
                        SFX.playSound("bighit");
                     }
                  }
                  else
                  {
                     this.applyGi();
                     if(!_loc8_)
                     {
                        if(!param1.isCounter)
                        {
                           this.prepareCounter(0.25);
                        }
                        this.graphic.animate(this.hitAnim);
                     }
                     else
                     {
                        SFX.playSound("lilhit");
                     }
                  }
                  if(_loc3_ && this.realHP <= 0)
                  {
                     this.realHP = 0;
                  }
               }
            }
            if((!this.dead || this.status[Status.AUTOLIFE] || _loc4_ == Status.DISPEL || _loc4_ == Status.DISABLE || _loc4_ == Status.STUFFED) && _loc14_ && _loc4_ != Status.PUSH_OUT)
            {
               DamageNumber.displayStatus(_loc4_,this);
            }
            if(param1.statusOnly && _loc4_ != Status.DEATH)
            {
               if(this.statusDisplay)
               {
                  this.statusDisplay.update(this);
               }
            }
            else
            {
               DamageNumber.displayDamage(_loc13_,_loc10_,this);
            }
            if(this.dead)
            {
               this.damageNumber = null;
            }
         }
         if(!_loc8_)
         {
            this.graphic.colorEffects();
         }
         if(_loc17_ && this is Player)
         {
            Text.inflictStatus(this,_loc4_);
            Text.hasStatus(this,_loc4_);
         }
         if(this.graphic)
         {
            this.graphic.dirtyStatus = true;
         }
         if(this.isPlayer)
         {
            Battle.menu.updatePlayerBars();
         }
         else
         {
            Battle.menu.updateFoeBars();
         }
         return _loc10_;
      }
      
      public function defend() : *
      {
         var _loc1_:Equip = null;
         var _loc2_:int = 0;
         Skills.giveStatus(this,Status.DEFEND,1);
         if(this is Player)
         {
            if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
            {
               Text.speech(Text.arcade[14]);
            }
            Skills.user = this;
            for each(_loc1_ in (this as Player).equips)
            {
               _loc2_ = 0;
               while(_loc2_ < _loc1_.level)
               {
                  if(Boolean(_loc1_.specials[_loc2_]) && _loc1_.specials[_loc2_][0] == Equip.DEFEND_STATUS)
                  {
                     Skills.giveStatus(this,_loc1_.specials[_loc2_][1],_loc1_.specials[_loc2_][2]);
                  }
                  _loc2_++;
               }
            }
            for each(_loc1_ in (this as Player).equips)
            {
               _loc2_ = 0;
               while(_loc2_ < _loc1_.level)
               {
                  if(Boolean(_loc1_.specials[_loc2_]) && _loc1_.specials[_loc2_][0] == Equip.DEFEND_BUFF)
                  {
                     this.buff(_loc1_.specials[_loc2_][1],_loc1_.specials[_loc2_][2] + Skills.buffBoost());
                  }
                  _loc2_++;
               }
            }
         }
      }
      
      public function applyGi() : *
      {
         if(Game.mode != Game.BATTLE || !(this is Player) || (this as Player).armor != Equips.turtlegi)
         {
            return;
         }
         var _loc1_:int = 90 + (101 - this.getHpPercent()) * (0.6 + Equips.turtlegi.level / 10);
         _loc1_ /= 5;
         _loc1_ *= 5;
         if(_loc1_ > 180)
         {
            _loc1_ = 180;
         }
         if(_loc1_ < 100)
         {
            _loc1_ = 100;
         }
         if(_loc1_ > this.buffs[Stats.ATTACK])
         {
            this.buffs[Stats.ATTACK] = _loc1_;
         }
         if(_loc1_ > this.buffs[Stats.MAGIC_ATTACK])
         {
            this.buffs[Stats.MAGIC_ATTACK] = _loc1_;
         }
         if(_loc1_ > this.buffs[Stats.DEFENCE])
         {
            this.buffs[Stats.DEFENCE] = _loc1_;
         }
         if(_loc1_ > this.buffs[Stats.MAGIC_DEFENCE])
         {
            this.buffs[Stats.MAGIC_DEFENCE] = _loc1_;
         }
      }
      
      public function sendHeal(param1:DamageObject) : *
      {
         var _loc2_:Equip = null;
         var _loc3_:int = 0;
         var _loc4_:Target = null;
         var _loc5_:Target = null;
         if(Spell.SUMMON)
         {
            param1.damage *= SaveData.summonPower / 2;
         }
         else
         {
            param1.damage *= this.getStat(Stats.MAGIC_ATTACK) / 2;
         }
         if(this is Player)
         {
            for each(_loc2_ in (this as Player).equips)
            {
               _loc3_ = 0;
               while(_loc3_ < _loc2_.specials.length && _loc3_ < _loc2_.level)
               {
                  if(_loc2_.specials[_loc3_])
                  {
                     if(_loc2_.specials[_loc3_][0] == Equip.BOOST_HEALING)
                     {
                        param1.damage *= 2;
                     }
                  }
                  _loc3_++;
               }
            }
         }
         if(Battle.targetType == ONE_ENEMY || Battle.targetType == ONE_ALLY)
         {
            Battle.selectedTarget.getHeal(param1);
         }
         else if(Battle.targetType == Target.ALL_STANDBY)
         {
            if(Boolean(Battle.standbyPlayers[0]) && !Battle.standbyPlayers[0].dead)
            {
               Battle.standbyPlayers[0].getHeal(param1,true);
            }
            if(Boolean(Battle.standbyPlayers[1]) && !Battle.standbyPlayers[1].dead)
            {
               Battle.standbyPlayers[1].getHeal(param1,true);
            }
         }
         else if(!this.isPlayer)
         {
            for each(_loc4_ in Battle.foes)
            {
               if(!_loc4_.dead)
               {
                  _loc4_.getHeal(param1);
               }
            }
         }
         else if(this.isPlayer)
         {
            for each(_loc5_ in Battle.players)
            {
               if(!_loc5_.dead)
               {
                  _loc5_.getHeal(param1);
               }
            }
         }
      }
      
      public function getHeal(param1:Object, param2:Boolean = false) : *
      {
         var _loc3_:int = this.randomize(param1.damage,param1.randomness);
         this.takeHeal(_loc3_,0,param2);
         if(Game.mode == Game.BATTLE)
         {
            DamageNumber.displayDamage(DamageNumber.HEAL,_loc3_,this);
            if(this.isPlayer)
            {
               Battle.menu.updatePlayerBars();
            }
            else
            {
               Battle.menu.updateFoeBars();
            }
         }
      }
      
      public function takeHeal(param1:int, param2:int = 0, param3:Boolean = false) : *
      {
         this.realHP += param1;
         if(Boolean(this.graphic) && this.getHpPercent() >= 33)
         {
            this.graphic.lowHP = false;
         }
         if(this.realHP > this.maxHP)
         {
            this.realHP = this.maxHP;
         }
         if(Game.mode == Game.BATTLE && Boolean(this.graphic))
         {
            this.graphic.animate("heal");
            this.graphic.dirtyStatus = true;
         }
         this.applyGi();
         this.status[Status.FREEZE] = 0;
         if(Boolean(this.onHeal) && param1 > 1)
         {
            this.onHeal();
         }
      }
      
      public function addLimit(param1:int, param2:Boolean = false) : *
      {
      }
      
      public function setHP() : *
      {
         this.maxHP = this.getStat(Stats.HP);
         this.realHP = this.maxHP;
      }
      
      public function buffHP() : *
      {
         this.maxHP = this.getStat(Stats.HP);
         if(this.realHP > this.maxHP)
         {
            this.realHP = this.maxHP;
         }
         Battle.menu.updatePlayerBars();
      }
      
      public function buff(param1:String, param2:int, param3:Boolean = false, param4:Boolean = true) : *
      {
         var _loc5_:int = 0;
         if(Flags.battleEvent == Flags.EVIL_ANNA && this.isPlayer && param2 > 0)
         {
            param2 *= -1;
         }
         if(!this.dead)
         {
            if(param3)
            {
               this.buffs[param1] += param2;
            }
            else
            {
               if(param2 > 0 && param2 + 100 > this.buffs[param1])
               {
                  this.buffs[param1] = 100 + param2;
               }
               if(param2 < 0 && param2 + 100 < this.buffs[param1])
               {
                  this.buffs[param1] = 100 + param2;
               }
               if(this.buffs[param1] < 20)
               {
                  this.buffs[param1] = 20;
               }
            }
            if(this.buffs[param1] >= 200)
            {
               this.buffs[param1] = 200;
               Medals.unlock(Medals.over100Percent);
            }
            if(param1 == Stats.HP)
            {
               if(this.buffs[param1] < 20)
               {
                  this.buffs[param1] = 20;
               }
               _loc5_ = this.getResistance("buff",Stats.HP) * 100 - 100;
               if(this.buffs[Stats.HP] < 15 + _loc5_)
               {
                  this.buffs[Stats.HP] = 15 + _loc5_;
               }
               this.buffHP();
            }
            if(this.statusDisplay)
            {
               this.statusDisplay.update(this);
            }
            if(param2 != 0 && param4)
            {
               DamageNumber.displayBuff(param1,this,param2 > 0);
            }
         }
      }
      
      public function dispelBadStatus() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in Status.PURIFYABLE)
         {
            this.status[_loc1_] = 0;
         }
         if(this.statusDisplay)
         {
            this.statusDisplay.update(this);
         }
      }
      
      public function dispelSomeStatus() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in Status.WORMABLE)
         {
            this.status[_loc1_] = 0;
         }
         if(this.statusDisplay)
         {
            this.statusDisplay.update(this);
         }
         if(this.graphic)
         {
            this.graphic.colorEffects();
         }
      }
      
      public function dispelGoodStatus() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in Status.POSITIVES)
         {
            if(_loc1_ != Status.CHARGE && _loc1_ != Status.STUFFED)
            {
               this.status[_loc1_] = 0;
            }
         }
         if(this.statusDisplay)
         {
            this.statusDisplay.update(this);
         }
      }
      
      public function dispelBadBuffs() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in Buff.BUFFS)
         {
            if(this.buffs[_loc1_] < 100)
            {
               this.buffs[_loc1_] = 100;
            }
         }
         if(this.statusDisplay)
         {
            this.statusDisplay.update(this);
         }
         this.buffHP();
      }
      
      public function dispelAllStatus() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in Status.NEUTRALS.concat(Status.NEGATIVES))
         {
            if(_loc1_ != Status.CHARGE && _loc1_ != Status.STUFFED)
            {
               this.status[_loc1_] = 0;
            }
         }
         if(this.statusDisplay)
         {
            this.statusDisplay.update(this);
         }
      }
      
      public function dispelGoodBuffs() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in Buff.BUFFS)
         {
            if(this.buffs[_loc1_] > 100)
            {
               this.buffs[_loc1_] = 100;
            }
         }
         if(this.statusDisplay)
         {
            this.statusDisplay.update(this);
         }
         this.buffHP();
      }
      
      public function dispelAll() : *
      {
         this.dispelBadBuffs();
         this.dispelGoodBuffs();
         this.dispelAllStatus();
         this.dispelBadStatus();
         this.dispelGoodStatus();
      }
      
      public function negativeEffects() : *
      {
         var _loc1_:String = null;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(this.status[Status.WEAKEN] > 0)
         {
            this.buff(Stats.ATTACK,-15,true);
            this.buff(Stats.MAGIC_ATTACK,-15,true);
         }
         if(this.status[Status.CURSE] > 0)
         {
            this.buff(Stats.DEFENCE,-15,true);
            this.buff(Stats.MAGIC_DEFENCE,-15,true);
         }
         if(this.status[Status.TIRED] > 0)
         {
            this.buff(Stats.EVADE,-15,true);
            this.buff(Stats.ACCURACY,-15,true);
         }
         if(this.status[Status.SCORCHED] > 0)
         {
            this.buff(Stats.HP,-10,true);
         }
         for each(_loc1_ in Stats.STATS)
         {
            if(_loc1_ != Stats.HP)
            {
               _loc3_ = this.getResistance("buff",_loc1_) * 100 - 100;
               if(_loc3_ < 0)
               {
                  _loc3_ = 0;
               }
               if(this.buffs[_loc1_] < 15 + _loc3_)
               {
                  this.buffs[_loc1_] = 15 + _loc3_;
               }
            }
         }
         Battle.targetType = Target.ALL_ENEMY;
         _loc2_ = 1;
         if(!Global.endlessBattle)
         {
            if(Options.difficulty == Options.EASY)
            {
               _loc2_ = 0.7;
            }
            if(Options.difficulty == Options.ZERO)
            {
               _loc2_ = 0.35;
            }
         }
         if(Boolean(this.status[Status.BURN]) && !this.status[Status.FREEZE])
         {
            Global.element = Element.FIRE;
            Battle.finalHit = false;
            this.takeHit(new DamageObject({
               "damage":_loc2_ * this.maxHP * 0.035 * (this.hit2HP / 50) * this.status[Status.BURN],
               "critical":0,
               "randomness":10,
               "accuracy":99999,
               "elementDegree":100,
               "element":Element.FIRE,
               "type":Stats.MAGIC_ATTACK,
               "bonus":Spell.STATUS_DAMAGE
            }));
         }
         if(Boolean(this.status[Status.SCORCHED]) && !this.status[Status.FREEZE])
         {
            Global.element = Element.FIRE;
            Battle.finalHit = false;
            this.takeHit(new DamageObject({
               "damage":_loc2_ * this.maxHP * 0.07 * (this.hit2HP / 50) * this.status[Status.SCORCHED],
               "critical":0,
               "randomness":10,
               "accuracy":99999,
               "elementDegree":100,
               "element":Element.FIRE,
               "type":Stats.MAGIC_ATTACK,
               "bonus":Spell.STATUS_DAMAGE
            }));
         }
         if(Boolean(this.status[Status.POISON]) && !this.status[Status.FREEZE])
         {
            Global.element = Element.BIO;
            Battle.finalHit = false;
            this.takeHit(new DamageObject({
               "damage":_loc2_ * this.maxHP * 0.03 * (this.hit2HP / 50) * this.status[Status.POISON],
               "critical":0,
               "randomness":10,
               "accuracy":99999,
               "elementDegree":100,
               "element":Element.BIO,
               "type":Stats.MAGIC_ATTACK,
               "bonus":Spell.STATUS_DAMAGE
            }));
         }
         if(Boolean(Flags.deleting) && this.isPlayer)
         {
            Global.element = Element.NONE;
            Battle.finalHit = false;
            this.takeHit(new DamageObject({
               "damage":_loc2_ * this.maxHP * 0.015 * (this.hit2HP / 50) * Flags.deleting,
               "critical":0,
               "randomness":0,
               "accuracy":99999,
               "elementDegree":100,
               "element":Element.NONE,
               "type":Stats.MAGIC_ATTACK,
               "bonus":Spell.STATUS_DAMAGE
            }));
         }
         if(Boolean(this.status[Status.VIRUS]) && !this.status[Status.FREEZE])
         {
            Global.element = Element.BIO;
            Battle.finalHit = false;
            this.takeHit(new DamageObject({
               "damage":_loc2_ * this.maxHP * 0.06 * (this.hit2HP / 50) * this.status[Status.VIRUS],
               "critical":0,
               "randomness":10,
               "accuracy":99999,
               "elementDegree":100,
               "element":Element.BIO,
               "type":Stats.MAGIC_ATTACK,
               "bonus":Spell.STATUS_DAMAGE
            }));
         }
         if(this.status[Status.DOOM] == 1)
         {
            Global.element = Element.DARK;
            Battle.finalHit = true;
            this.takeHit(new DamageObject({
               "damage":this.maxHP * 0.25 * (this.hit2HP / 50),
               "critical":0,
               "randomness":0,
               "accuracy":99999,
               "statusEffect":Status.DEATH,
               "statusChance":9999,
               "statusDegree":1,
               "bonus":Spell.STATUS_DAMAGE
            }));
         }
         if(this.isPlayer && Flags.battleEvent == Flags.EVIL_MATT && Flags.stonedTimer == -1)
         {
            Battle.finalHit = true;
            this.status[Status.ENCHANTED] = 0;
            this.status[Status.INVISIBLE] = 0;
            this.status[Status.AUTOLIFE] = 0;
            this.status[Status.MORALE] = 0;
            this.takeHit(new DamageObject({
               "damage":this.maxHP * 10,
               "critical":0,
               "randomness":0,
               "accuracy":99999,
               "statusEffect":Status.DEATH,
               "statusChance":9999,
               "statusDegree":1,
               "bonus":Spell.STATUS_DAMAGE
            }));
         }
         Battle.finalHit = true;
         this.negativeEffectsFade();
         this.neutralEffectsFade();
         if(this.statusDisplay)
         {
            this.statusDisplay.update(this);
         }
      }
      
      public function negativeEffectsFade() : *
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:Foe = null;
         var _loc5_:Player = null;
         for each(_loc1_ in Stats.STATS)
         {
            if(!(_loc1_ == Stats.HP && Boolean(this.status[Status.SCORCHED])))
            {
               if(this.buffs[_loc1_] < 100)
               {
                  this.buffs[_loc1_] += 5;
               }
            }
         }
         for each(_loc2_ in Status.NEGATIVES)
         {
            if(_loc2_ != Status.TARGET)
            {
               if(_loc2_ != Status.VIRUS)
               {
                  if(this.status[_loc2_] > 0)
                  {
                     --this.status[_loc2_];
                  }
               }
            }
         }
         if(this.status[Status.VIRUS])
         {
            if(this is Foe)
            {
               _loc3_ = 1;
               if((this as Foe).catchRate <= 4)
               {
                  _loc3_ = 3;
               }
               for each(_loc4_ in Battle.foes)
               {
                  if(Math.random() < 0.3 * _loc3_)
                  {
                     _loc4_.takeHit(new DamageObject({
                        "damage":0,
                        "accuracy":99999,
                        "statusDegree":1,
                        "statusEffect":Status.VIRUS,
                        "statusChance":9999,
                        "statusOnly":true
                     }));
                  }
               }
               for each(_loc5_ in Battle.players)
               {
                  if(Math.random() < 0.1 * _loc3_)
                  {
                     if(_loc5_.status[Status.TARGET])
                     {
                        ++_loc5_.status[Status.TARGET];
                     }
                     _loc5_.takeHit(new DamageObject({
                        "damage":0,
                        "accuracy":99999,
                        "statusDegree":1,
                        "statusEffect":Status.VIRUS,
                        "statusChance":9999,
                        "statusOnly":true
                     }));
                  }
               }
            }
            if(this is Player)
            {
               for each(_loc4_ in Battle.foes)
               {
                  if(Math.random() < 0.2)
                  {
                     _loc4_.takeHit(new DamageObject({
                        "damage":0,
                        "accuracy":99999,
                        "statusDegree":1,
                        "statusEffect":Status.VIRUS,
                        "statusChance":9999,
                        "statusOnly":true
                     }));
                  }
               }
               for each(_loc5_ in Battle.players)
               {
                  if(Math.random() < 0.4)
                  {
                     if(_loc5_.status[Status.TARGET])
                     {
                        ++_loc5_.status[Status.TARGET];
                     }
                     _loc5_.takeHit(new DamageObject({
                        "damage":0,
                        "accuracy":99999,
                        "statusDegree":1,
                        "statusEffect":Status.VIRUS,
                        "statusChance":9999,
                        "statusOnly":true
                     }));
                  }
               }
            }
            this.virusMedal();
         }
         this.buffHP();
      }
      
      private function virusMedal() : *
      {
         var _loc1_:Player = null;
         var _loc2_:Foe = null;
         for each(_loc1_ in Battle.players)
         {
            if(_loc1_ && !_loc1_.dead && !_loc1_.status[Status.VIRUS])
            {
               return;
            }
         }
         for each(_loc2_ in Battle.foes)
         {
            if(_loc2_ && !_loc2_.dead && !_loc2_.status[Status.VIRUS])
            {
               return;
            }
         }
         Medals.unlock(Medals.epidemic);
      }
      
      public function neutralEffectsFade() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in Status.NEUTRALS)
         {
            if(this.status[_loc1_] > 0)
            {
               --this.status[_loc1_];
            }
         }
         this.status[Status.PUSH_OUT] = 0;
         this.buffHP();
         if(this.graphic)
         {
            this.graphic.colorEffects();
         }
      }
      
      public function positiveEffects() : *
      {
         var _loc1_:int = 0;
         Global.pumpkus = false;
         Global.stealcount = 0;
         if(this is Player)
         {
            (this as Player).triforceEffect();
            (this as Player).juicyEffect();
         }
         if(this.status[Status.REGEN])
         {
            if(!(Flags.battleEvent == Flags.EVIL_NATALIE && this.isPlayer))
            {
               Battle.targetType = Target.ALL_ALLY;
               this.getHeal({
                  "damage":this.maxHP / 3 * (this.hit2HP / 100) * 2,
                  "randomness":10
               });
            }
         }
         if(Flags.battleEvent == Flags.EVIL_NOLEGS && this.isPlayer)
         {
            _loc1_ = 25;
            this.buff(Stats.ATTACK,_loc1_,true,false);
            this.buff(Stats.MAGIC_ATTACK,_loc1_,true,false);
            this.buff(Stats.DEFENCE,_loc1_,true,false);
            this.buff(Stats.MAGIC_DEFENCE,_loc1_,true,false);
            this.buff(Stats.EVADE,_loc1_,true,false);
            this.buff(Stats.ACCURACY,_loc1_,true,false);
            this.buff(Stats.HP,_loc1_,true,false);
         }
         this.positiveEffectsFade();
         if(this.graphic)
         {
            this.graphic.colorEffects();
         }
         if(this.statusDisplay)
         {
            this.statusDisplay.update(this);
         }
      }
      
      public function positiveEffectsFade() : *
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this == Battle.standbyPlayers[0] || this == Battle.standbyPlayers[1])
         {
            this.status[Status.HASTE] = 0;
         }
         for each(_loc1_ in Stats.STATS)
         {
            if(this.buffs[_loc1_] > 100)
            {
               this.buffs[_loc1_] -= 5;
            }
         }
         for each(_loc2_ in Status.POSITIVES)
         {
            if(_loc2_ != Status.HASTE)
            {
               if(this.status[_loc2_] > 0)
               {
                  --this.status[_loc2_];
               }
            }
         }
         if(this.status[Status.TARGET] > 0)
         {
            --this.status[Status.TARGET];
         }
         if(this.status[Status.DEFEND] > 0)
         {
            this.status[Status.DEFEND] = 0;
         }
         this.buffHP();
      }
      
      public function randomize(param1:Number, param2:Number = 10) : Number
      {
         if(param2 == undefined)
         {
            param2 = 10;
         }
         return param1 - param1 * param2 / 200 + Math.random() * param1 * param2 / 100;
      }
      
      public function prepareCounter(param1:Number) : *
      {
         if(Debug.alwaysCounter)
         {
            param1 = 1;
         }
         if(Options.extraAttacks)
         {
            param1 *= 1.3;
         }
         if(Options.noAutoSpells)
         {
            param1 = 0;
         }
         if(this.canMove() && !this.dead && this.isPlayer && this.lastAttacker && !this.lastAttacker.dead && this.lastAttacker != Weather.weatherFoe && Global.counterEnabled && !this.lastAttacker.isPlayer && (this as Player).getCounterSkill() && (this as Player).getCounterSkill().level && Math.random() < param1 * (0.3 + (this as Player).weapon.level / 5 * 0.7))
         {
            if(Battle.counterStack.indexOf(this) == -1)
            {
               this.counter = true;
               Battle.counterStack.push(this);
            }
         }
      }
      
      public function freeze() : *
      {
         this.graphic.freeze = true;
      }
      
      public function unfreeze() : *
      {
         this.status[Status.FREEZE] = 0;
      }
      
      public function getStat(param1:String, param2:Boolean = false, param3:Boolean = false) : Number
      {
         if(param1 == Stats.NONE)
         {
            return 0;
         }
         if(param2 && this.buffs[param1] / 100 > 1)
         {
            return this[param1] * this.bonus[param1] / 100 * this.getEquipsStat(param1);
         }
         if(param3 && this.buffs[param1] / 100 < 1)
         {
            return this[param1] * this.bonus[param1] / 100 * this.getEquipsStat(param1);
         }
         return this[param1] * this.buffs[param1] / 100 * this.bonus[param1] / 100 * this.getEquipsStat(param1);
      }
      
      public function getEquipsStat(param1:String) : Number
      {
         return 1;
      }
      
      public function getResistance(param1:String, param2:String) : Number
      {
         return 2;
      }
      
      public function getHpPercent() : Number
      {
         return Math.floor(this.realHP / this.maxHP * 100) + 1;
      }
      
      public function getHp() : String
      {
         if(Game.mode != Game.MAP && this.isPlayer && (this == Battle.standbyPlayers[0] || this == Battle.standbyPlayers[1]))
         {
            return "" + this.realHP;
         }
         return "" + this.realHP + "/" + this.maxHP;
      }
   }
}

