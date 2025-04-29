package
{
   import flash.utils.*;
   
   public class Player extends Target
   {
      public var playerNo:int;
      
      public var AP:int = 0;
      
      public var EXP:Number = 100;
      
      public var EXPnext:Number = 100;
      
      public var MP:Number;
      
      public var realMP:int;
      
      public var maxMP:int;
      
      public var summonPower:Number;
      
      public var limit:Number = 0;
      
      public var slime:int = 0;
      
      public var position:int;
      
      public var skillsMain:Array;
      
      public var skillsSub:Array;
      
      public var skillsLimit:Array;
      
      public var berserkSkill:Spell;
      
      public var berserkSkill2:Spell;
      
      public var berserkSkill3:Spell;
      
      public var recentSkills:Array = [];
      
      public var weapon:Equip;
      
      public var armor:Equip;
      
      public var hat:Equip;
      
      public var flair1:Equip;
      
      public var flair2:Equip;
      
      public var flair3:Equip;
      
      public var equips:Array;
      
      public var hasteFlag:Boolean = false;
      
      public function Player()
      {
         super();
      }
      
      public function init() : *
      {
         isPlayer = true;
         this.setEquipGraphics();
         this.setHPMP();
      }
      
      public function initBattle(param1:int, param2:int = -1) : *
      {
         this.position = param1;
         if(scale != 0)
         {
            graphicScale = scale;
         }
         this.equips = [this.weapon,this.armor,this.hat,this.flair1,this.flair2,this.flair3];
         this.positionGraphic(param2);
      }
      
      public function clearBattleVars() : *
      {
         this.hasteFlag = false;
         this.position = null;
         counter = false;
         lastAttacker = null;
         lastTarget = null;
         drainableDamage = 0;
         turnTaken = false;
         if(!Options.noAutoRevive)
         {
            dead = false;
         }
         swapLayers = true;
         graphic = null;
         statusDisplay = null;
         crosshair = null;
         status = Status.getStatusHolder(0);
         buffs = Buff.getBuffHolder();
         this.slime = 0;
      }
      
      public function positionGraphic(param1:*) : *
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.playerNo == 5)
         {
            _loc4_ = -25;
         }
         if(this.position == 0)
         {
            _loc2_ = 270;
            _loc3_ = 220 + _loc4_;
         }
         if(this.position == 1 || Battle.players.length == 1)
         {
            _loc2_ = 190;
            _loc3_ = 305 + _loc4_;
         }
         if(this.position == 2)
         {
            _loc2_ = 110;
            _loc3_ = 380 + _loc4_;
         }
         if(Battle.players.length == 2)
         {
            _loc3_ += Constants.twoPlayerNudge;
         }
         createGraphic(_loc2_,_loc3_,85,param1);
      }
      
      public function inParty() : *
      {
         var _loc1_:Player = null;
         for each(_loc1_ in Game.party)
         {
            if(_loc1_ == this)
            {
               return true;
            }
         }
         return false;
      }
      
      public function inBattle() : *
      {
         var _loc1_:Player = null;
         for each(_loc1_ in Battle.players.concat(Battle.standbyPlayers))
         {
            if(_loc1_ == this)
            {
               return true;
            }
         }
         return false;
      }
      
      public function setStats() : *
      {
      }
      
      public function setHPMP() : *
      {
         if(!dead)
         {
            setHP();
         }
         if(!dead)
         {
            realHP = maxHP;
         }
      }
      
      public function capHPMP() : *
      {
         maxHP = getStat(Stats.HP);
         if(realHP > maxHP)
         {
            realHP = maxHP;
         }
      }
      
      public function triforceEffect() : *
      {
         if(this.flair1 == Equips.triforce || this.flair2 == Equips.triforce || this.flair3 == Equips.triforce)
         {
            this.addLimit(5,true);
         }
      }
      
      public function juicyEffect() : *
      {
         var _loc1_:int = 0;
         if(this.flair1 == Equips.juicybeast || this.flair2 == Equips.juicybeast || this.flair3 == Equips.juicybeast)
         {
            _loc1_ = int(Equips.juicybeast.level * (level / 15));
            if(_loc1_ < Equips.juicybeast.level)
            {
               _loc1_ = Equips.juicybeast.level;
            }
            Battle.SP += _loc1_;
            if(Battle.SP > Battle.maxSP)
            {
               Battle.SP = Battle.maxSP;
            }
         }
      }
      
      public function ramEffect() : *
      {
         if(this.flair1 == Equips.ramchip || this.flair2 == Equips.ramchip || this.flair3 == Equips.ramchip)
         {
            Battle.maxSP *= Equips.ramchip.specials[0][Equips.ramchip.level];
         }
      }
      
      public function hasTetris() : *
      {
         return this.flair1 == Equips.tetromino || this.flair2 == Equips.tetromino || this.flair3 == Equips.tetromino;
      }
      
      public function hasGlasses() : *
      {
         return this.flair1 == Equips.pixelglasses || this.flair2 == Equips.pixelglasses || this.flair3 == Equips.pixelglasses;
      }
      
      public function hasFlair(param1:Equip) : *
      {
         return this.flair1 == param1 || this.flair2 == param1 || this.flair3 == param1;
      }
      
      public function viridianEffect() : *
      {
         if(this.flair1 == Equips.viridian || this.flair2 == Equips.viridian || this.flair3 == Equips.viridian)
         {
            if(turnTaken)
            {
               this.hasteFlag = true;
            }
         }
      }
      
      public function levelUp() : *
      {
         while(this.EXP >= this.EXPnext)
         {
            this.EXP -= this.EXPnext;
            ++level;
            if(level > 50 && Options.alwaysScaleFoes)
            {
               --level;
            }
            this.EXPnext = Math.floor(90 * Math.pow(Constants.expGrowth,level));
         }
         this.setStats();
         HP = Math.floor(HP * Math.pow(Constants.hpGrowth,level));
         this.setHPMP();
         var _loc1_:Number = 0;
         if(this is PlayerWeather)
         {
            _loc1_ = 0.029;
         }
         attack = Math.floor(attack * Math.pow(Constants.attackGrowth + _loc1_,level));
         magicAttack = Math.floor(magicAttack * Math.pow(Constants.attackGrowth + _loc1_,level));
         SaveData.summonPower = Math.floor(Constants.defaultSummonPower * Math.pow(Constants.summonGrowth,Math.floor(level)));
         if(level <= 13)
         {
            SaveData.summonPower *= 0.7;
         }
         if(level == 14)
         {
            SaveData.summonPower *= 0.72;
         }
         if(level == 15)
         {
            SaveData.summonPower *= 0.75;
         }
         if(level == 16)
         {
            SaveData.summonPower *= 0.8;
         }
         if(level == 17)
         {
            SaveData.summonPower *= 0.85;
         }
         if(level == 18)
         {
            SaveData.summonPower *= 0.9;
         }
         if(level == 19)
         {
            SaveData.summonPower *= 0.95;
         }
         if(level == 25)
         {
            SaveData.summonPower *= 1.03;
         }
         if(level == 26)
         {
            SaveData.summonPower *= 1.06;
         }
         if(level == 27)
         {
            SaveData.summonPower *= 1.09;
         }
         if(level == 28)
         {
            SaveData.summonPower *= 1.12;
         }
         if(level == 29)
         {
            SaveData.summonPower *= 1.15;
         }
         if(level == 30)
         {
            SaveData.summonPower *= 1.18;
         }
         if(level == 31)
         {
            SaveData.summonPower *= 1.21;
         }
         if(level == 32)
         {
            SaveData.summonPower *= 1.24;
         }
         if(level >= 33)
         {
            SaveData.summonPower *= 1.25;
         }
         defence = Math.floor(defence * Math.pow(Constants.defenceGrowth,level));
         magicDefence = Math.floor(magicDefence * Math.pow(Constants.defenceGrowth,level));
         evade = Math.floor(evade * Math.pow(Constants.evadeGrowth,level));
         accuracy = Math.floor(accuracy * Math.pow(Constants.evadeGrowth + _loc1_ / 1.5,level));
         Battle.calculateSP();
         if(Game.mode == Game.MAP && Maps.instance && Boolean(Maps.instance.parent))
         {
            (Maps.instance.parent as MapMenu).updatePlayerBars(true);
         }
         evade *= Constants.accMul;
         accuracy *= Constants.accMul;
      }
      
      public function addExp(param1:int) : Array
      {
         var _loc2_:Array = [];
         _loc2_.push(this.getExpPercent());
         this.EXP += param1;
         _loc2_.push(this.getExpPercent());
         if(this.EXP >= this.EXPnext)
         {
            this.levelUp();
         }
         return _loc2_;
      }
      
      public function createSlimeGraphic(param1:int = 0, param2:int = 0, param3:int = 0) : *
      {
         var _loc4_:Object = new Object();
         if(param1)
         {
            _loc4_.x = param1 + 20;
            _loc4_.y = param2;
            _loc4_.l = param3;
         }
         else
         {
            _loc4_.x = graphic.getX(1);
            _loc4_.y = graphic.getY(1);
            _loc4_.l = graphic.parent.getChildIndex(graphic);
            removeGraphic();
         }
         graphic = new Slime();
         Battle.stage.addChild(graphic);
         graphic.self = this;
         graphic.scaleX *= -40 / 100;
         graphic.scaleY *= 40 / 100;
         graphic.x = _loc4_.x - graphic.getX(1);
         graphic.y = _loc4_.y - graphic.getY(1);
         if(_loc4_.l != -1)
         {
            graphic.parent.setChildIndex(graphic,_loc4_.l);
         }
         createStatusDisplay();
         statusDisplay.parent.setChildIndex(statusDisplay,graphic.parent.getChildIndex(graphic) + 1);
      }
      
      public function useSkill(param1:Spell, param2:Boolean = false) : *
      {
         hasAlternative = false;
         Battle.selectedSkill = param1;
         Skills.user = this;
         ++param1.uses;
         if(Boolean(param1.jump) && !param2)
         {
            graphic.animate("jump1");
         }
         else if(param1.animation.length == 1)
         {
            graphic.animate(param1.animation[0]);
         }
         else if(param1.animation2)
         {
            graphic.animate(param1.animation2[this.playerNo - 1]);
         }
         else
         {
            graphic.animate(param1.animation[this.playerNo - 1]);
         }
      }
      
      public function useItem(param1:Object) : *
      {
         Battle.selectedSkill = param1;
         Skills.user = this;
         Global.itemIcon = param1.icon;
         Battle.targetType = Battle.selectedSkill.target;
         if(Battle.selectedTarget == this)
         {
            graphic.animate("itemeat");
            if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
            {
               Text.speech(Text.arcade[7]);
            }
         }
         else if(Boolean(Battle.selectedTarget) && !Battle.selectedTarget.isPlayer)
         {
            graphic.animate("itemthrow");
         }
         else
         {
            graphic.animate("itempass");
            if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
            {
               Text.speech(Text.arcade[7]);
            }
         }
      }
      
      public function reduceCooldowns(param1:int = 1) : *
      {
         var _loc2_:Spell = null;
         for each(_loc2_ in this.skillsMain)
         {
            if(_loc2_)
            {
               _loc2_ = Spell.getUpgrades(_loc2_);
               if(_loc2_.cooldown)
               {
                  _loc2_.cooldown -= param1;
               }
               if(_loc2_.cooldown < 0)
               {
                  _loc2_.cooldown = 0;
               }
            }
         }
      }
      
      public function getMaxCooldown() : int
      {
         var _loc2_:Spell = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.skillsMain)
         {
            if(_loc2_)
            {
               _loc2_ = Spell.getUpgrades(_loc2_);
               if(_loc2_.cooldown > _loc1_)
               {
                  _loc1_ = _loc2_.cooldown;
               }
            }
         }
         return _loc1_;
      }
      
      public function eatItem(param1:Item = null) : Boolean
      {
         var _loc2_:Item = null;
         var _loc6_:Equip = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc3_:Boolean = true;
         if(Game.mode == Game.BATTLE)
         {
            _loc2_ = Battle.selectedSkill as Item;
         }
         if(Game.mode == Game.MAP)
         {
            _loc2_ = param1;
         }
         var _loc4_:int = 1;
         var _loc5_:int = 0;
         if(Game.mode == Game.BATTLE)
         {
            for each(_loc6_ in Battle.currentPlayer.equips)
            {
               _loc7_ = 0;
               while(_loc7_ < _loc6_.level)
               {
                  if(_loc6_.specials && _loc6_.specials[_loc7_] && _loc6_.specials[_loc7_][0] == Equip.BOOST_FOOD)
                  {
                     _loc4_ += 1;
                     _loc5_ += 10;
                  }
                  _loc7_++;
               }
            }
         }
         if(_loc2_.type == Item.HP || _loc2_.type == Item.HP_COOLDOWN)
         {
            if(_loc2_.type == Item.HP_COOLDOWN && getHpPercent() == 101 && this.getMaxCooldown() == 0)
            {
               _loc3_ = false;
            }
            else if(_loc2_.type == Item.HP && getHpPercent() == 101)
            {
               _loc3_ = false;
            }
            _loc8_ = _loc2_.power * _loc4_;
            if(_loc4_ * this.maxHP * _loc2_.subPower / 100 > _loc8_)
            {
               _loc8_ = _loc4_ * maxHP * _loc2_.subPower / 100;
            }
            getHeal({
               "damage":_loc8_,
               "randomness":0
            });
         }
         if(Game.mode == Game.BATTLE && Boolean(_loc2_.stuffing))
         {
            Skills.giveStatus(this,Status.STUFFED,_loc2_.stuffing);
            this.status[Status.HUNGRY] = 0;
         }
         if(_loc2_.icon == 541)
         {
            buff(Stats.ATTACK,_loc2_.power + _loc5_);
            graphic.k();
         }
         if(_loc2_.icon == 542)
         {
            buff(Stats.MAGIC_ATTACK,_loc2_.power + _loc5_);
            graphic.k();
         }
         if(_loc2_.icon == 539)
         {
            buff(Stats.ACCURACY,_loc2_.power + _loc5_);
            graphic.k();
         }
         if(_loc2_.icon == 540)
         {
            buff(Stats.EVADE,_loc2_.power + _loc5_);
            graphic.k();
         }
         if(_loc2_.icon == 544)
         {
            buff(Stats.HP,_loc2_.power + _loc5_);
            getHeal({
               "damage":realHP * 0.5,
               "randomness":0
            });
         }
         if(_loc2_.type == Item.HP_COOLDOWN || _loc2_.type == Item.COOLDOWN)
         {
            if(_loc2_.type == Item.COOLDOWN && this.getMaxCooldown() == 0)
            {
               _loc3_ = false;
            }
            this.reduceCooldowns(_loc2_.subPower);
            if(Game.mode == Game.BATTLE && _loc2_.type == Item.COOLDOWN)
            {
               graphic.k();
            }
         }
         if(_loc2_.icon == 522 || _loc2_.icon == 534)
         {
            dispelBadBuffs();
            graphic.k();
         }
         if(_loc2_.icon == 545)
         {
            dispelBadStatus();
            graphic.k();
         }
         if(_loc2_.icon == 532)
         {
            if(this.limit == 100)
            {
               _loc3_ = false;
            }
            this.limit = 100;
            if(Game.mode == Game.BATTLE)
            {
               DamageNumber.displayDamage(DamageNumber.LIMIT,0,this);
               Battle.menu.updatePlayerBars();
            }
            if(Game.mode == Game.BATTLE)
            {
               Skills.giveStatus(this,Status.SCORCHED,5);
               graphic.k();
            }
         }
         if(_loc2_.icon == 548)
         {
            if(!dead)
            {
               _loc3_ = false;
            }
            else
            {
               this.revive(Items.coffee.power);
            }
         }
         return _loc3_;
      }
      
      public function passItem() : *
      {
         var _loc2_:Player = null;
         var _loc1_:Item = Battle.selectedSkill as Item;
         if(_loc1_.icon == 548)
         {
            (Battle.selectedTarget as Player).revive(Items.coffee.power);
         }
         else if(_loc1_.icon == 549)
         {
            (Battle.selectedTarget as Player).revive(Items.espresso.power,true);
         }
         else if(_loc1_.target == Target.ONE_ALLY)
         {
            Battle.selectedTarget.graphic.animate("itemcatch");
         }
         else if(_loc1_.target == Target.ALL_ALLY)
         {
            for each(_loc2_ in Battle.players)
            {
               if(!_loc2_.dead && _loc2_.status[Status.STUFFED] == 0)
               {
                  _loc2_.graphic.animate("itemcatch");
               }
            }
         }
      }
      
      public function throwItem() : *
      {
         var _loc2_:Class = null;
         var _loc1_:Item = Battle.selectedSkill as Item;
         if(_loc1_.icon == 614)
         {
            _loc2_ = Bomb;
         }
         if(_loc1_.icon == 583)
         {
            _loc2_ = Shuriken;
         }
         if(_loc1_.icon == 619)
         {
            _loc2_ = Brick;
         }
         if(_loc1_.icon == 589)
         {
            _loc2_ = Snowball;
         }
         var _loc3_:SpellMC = new _loc2_();
         _loc3_.caster = this;
         Battle.stage.addChild(_loc3_);
      }
      
      public function revive(param1:int = 33, param2:Boolean = false) : *
      {
         dead = false;
         if(this.hasFlair(Equips.companioncube))
         {
            buff(Stats.HP,Equips.companioncube.specials[0][Equips.companioncube.level],false,false);
            param1 = 120;
         }
         if(param2)
         {
            buff(Stats.HP,Items.espresso.subPower);
         }
         getHeal({
            "damage":maxHP * buffs[Stats.HP] * (param1 / 10000),
            "randomness":10
         });
         if(graphic)
         {
            graphic.animate("revive");
         }
         if(Options.noReviveTurn && !status[Status.AUTOLIFE])
         {
            turnTaken = true;
         }
         status[Status.AUTOLIFE] = 0;
         if(this.hasFlair(Equips.dogtags))
         {
            buff(Stats.ATTACK,Equips.dogtags.specials[0][Equips.dogtags.level],false,false);
            buff(Stats.MAGIC_ATTACK,Equips.dogtags.specials[0][Equips.dogtags.level],false,false);
         }
         if(this.hasFlair(Equips.narutomaki))
         {
            buff(Stats.DEFENCE,Equips.narutomaki.specials[0][Equips.narutomaki.level],false,false);
            buff(Stats.MAGIC_DEFENCE,Equips.narutomaki.specials[0][Equips.narutomaki.level],false,false);
         }
      }
      
      override public function freeze() : *
      {
         graphic.freeze = true;
      }
      
      override public function unfreeze() : *
      {
         status[Status.FREEZE] = 0;
      }
      
      public function startTurn() : *
      {
         var _loc1_:Player = null;
         drainableDamage = 0;
         for each(_loc1_ in Game.party)
         {
            if(_loc1_.hasteFlag && !_loc1_.turnTaken)
            {
               Skills.giveStatus(_loc1_,Status.HASTE,1);
               _loc1_.hasteFlag = false;
            }
         }
      }
      
      public function getHealMP(param1:Object) : *
      {
         var _loc2_:int = randomize(param1.damage,param1.randomness);
         this.realMP += _loc2_;
         if(this.realMP > this.maxMP)
         {
            this.realMP = this.maxMP;
         }
         if(Game.mode == Game.BATTLE)
         {
            if(graphic)
            {
               graphic.animate("heal");
            }
            DamageNumber.displayDamage(DamageNumber.HEAL_MP,_loc2_,this);
            Battle.menu.updatePlayerBars();
         }
      }
      
      public function outsideHeal(param1:int) : *
      {
         realHP += param1;
         if(realHP > maxHP)
         {
            realHP = maxHP;
         }
         Battle.menu.updatePlayerBars();
      }
      
      public function outsideHealMP(param1:int) : *
      {
         this.realMP += param1;
         if(this.realMP > this.maxMP)
         {
            this.realMP = this.maxMP;
         }
         Battle.menu.updatePlayerBars();
      }
      
      public function castSpell(param1:Boolean = false, param2:String = null) : *
      {
         var _loc4_:Class = null;
         var _loc5_:TargetMC = null;
         var _loc3_:String = Battle.selectedSkill.MC;
         Battle.currentFoe = null;
         if(param2)
         {
            _loc3_ = param2;
         }
         if(Spell.SUMMON)
         {
            Skills.user = Weather.weatherPlayer;
         }
         if(Battle.selectedSkill.MC == "" || param1)
         {
            Battle.targetType = Battle.selectedSkill.target;
            sendHit(new DamageObject(Battle.selectedSkill.getStats()));
         }
         else
         {
            if(Battle.selectedSkill.target == Target.ALL_ALLY && Boolean(Battle.selectedSkill.multiMC))
            {
               Battle.multiSpell = -1;
               do
               {
                  ++Battle.multiSpell;
                  Battle.selectedTarget = Battle.players[Battle.multiSpell];
               }
               while(Battle.players[Battle.multiSpell].dead);
               
            }
            if(Battle.selectedSkill.target == Target.ALL_ENEMY && Boolean(Battle.selectedSkill.multiMC))
            {
               Battle.multiSpell = -1;
               do
               {
                  ++Battle.multiSpell;
                  Battle.selectedTarget = Battle.foes[Battle.multiSpell];
               }
               while(Battle.foes[Battle.multiSpell].dead);
               
            }
            if(Battle.selectedSkill.target == Target.RANDOM_ENEMY && Boolean(Battle.selectedSkill.multiMC))
            {
               Battle.selectedTarget = Battle.randomFoe();
               Battle.multiSpell = 1;
               Battle.arrows = Battle.foeCount();
            }
            if(Battle.selectedSkill == Spells.capture)
            {
               _loc3_ = "Box" + Battle.selectedTarget.boxSize;
            }
            _loc4_ = getDefinitionByName(_loc3_);
            _loc5_ = new _loc4_();
            _loc5_.caster = this;
            if(param2)
            {
               _loc5_.isSummon = true;
            }
            Battle.stage.addChild(_loc5_);
            Battle.stage.busyDelay = 2;
            _loc5_.gotoAndPlay(_loc5_.totalFrames);
            _loc5_.gotoAndPlay(1);
            if(Battle.selectedSkill is Summon && Boolean(Summons.info[Battle.selectedSkill.fname]))
            {
               Battle.selectedSkill.skin = Summons.info[Battle.selectedSkill.fname]["skin"];
               _loc5_.skin = Summons.info[Battle.selectedSkill.fname]["skin"];
            }
         }
      }
      
      public function castEffect() : *
      {
      }
      
      override public function addLimit(param1:int, param2:Boolean = false) : *
      {
         var _loc3_:Number = NaN;
         if(this.limit < 100 && this.hasLimitSkill())
         {
            if(!param2)
            {
               if(Global.endlessBattle)
               {
                  _loc3_ = 0.85;
               }
               else
               {
                  if(Options.difficulty == Options.ZERO)
                  {
                     _loc3_ = 4;
                  }
                  if(Options.difficulty == Options.EASY)
                  {
                     _loc3_ = 2;
                  }
                  if(Options.difficulty == Options.NORMAL)
                  {
                     _loc3_ = 1;
                  }
                  if(Options.difficulty == Options.HARD)
                  {
                     _loc3_ = 0.85;
                  }
                  if(Options.difficulty == Options.EPIC)
                  {
                     _loc3_ = 0.7;
                  }
               }
               if(Options.unlimited)
               {
                  _loc3_ *= 1.5;
               }
               if(this.hasLimit())
               {
                  this.limit += param1 / Math.pow(1.15,level) * _loc3_ / 2 / (level / 9 + 1);
               }
            }
            else if(this.hasLimit())
            {
               this.limit += param1;
            }
            if(this.limit >= 100)
            {
               this.limit = 100;
               DamageNumber.displayDamage(DamageNumber.LIMIT,0,this);
            }
         }
      }
      
      public function hasLimit() : Boolean
      {
         return this.skillsLimit.length > 1;
      }
      
      public function bonusSpell(param1:Number = 1) : *
      {
         var _loc2_:Number = 1;
         if(this.hasFlair(Equips.meowmeowbadge))
         {
            _loc2_ = 1 + Equips.meowmeowbadge.level / 3;
         }
         var _loc3_:Number = 1;
         if(Options.extraAttacks)
         {
            _loc3_ = 1.3;
         }
         if(Options.noAutoSpells)
         {
            _loc3_ = 0;
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.weapon.specials.length && _loc4_ < this.weapon.level)
         {
            if(this.weapon.specials[_loc4_])
            {
               if(this.weapon.specials[_loc4_][0] == Equip.CAST && (Math.random() < this.weapon.specials[_loc4_][2] * (this.weapon.level / 5) * 1.2 * param1 * _loc2_ * _loc3_ || this.weapon.bonusFlag && _loc4_ == this.weapon.bonusFlag - 1 || Debug.moreAutoSkills))
               {
                  this.weapon.bonusFlag = 0;
                  Battle.bonusSpellFlag = true;
                  Battle.selectedSkill = this.weapon.specials[_loc4_][1];
                  Battle.multiSpell = -1;
                  this.castSpell();
               }
            }
            _loc4_++;
         }
      }
      
      public function autoSpell() : Boolean
      {
         var _loc2_:Equip = null;
         var _loc3_:int = 0;
         if(Flags.battleEvent == Flags.EVIL_LANCE)
         {
            return false;
         }
         var _loc1_:Number = 1;
         if(Options.extraAttacks)
         {
            _loc1_ = 1.33;
         }
         if(Options.noAutoSpells)
         {
            _loc1_ = 0;
         }
         for each(_loc2_ in this.equips)
         {
            if(Boolean(_loc2_) && Boolean(_loc2_.specials))
            {
               _loc3_ = 0;
               while(_loc3_ < _loc2_.specials.length && _loc3_ < _loc2_.level)
               {
                  if(Boolean(_loc2_.specials[_loc3_]) && _loc2_.specials[_loc3_][0] == Equip.SUMMON)
                  {
                  }
                  if(_loc2_.specials[_loc3_] && _loc2_.specials[_loc3_][0] == Equip.SUMMON && (Debug.moreAutoSkills || _loc2_.bonusFlag && _loc3_ == _loc2_.bonusFlag - 1 || Math.random() < _loc1_ * _loc2_.specials[_loc3_][2] * (0.1 + _loc2_.level / 5 * 0.15)))
                  {
                     Battle.bonusSpellFlag = true;
                     _loc2_.bonusFlag = 0;
                     Battle.selectedSkill = _loc2_.specials[_loc3_][1];
                     Skills.user = this;
                     Battle.standbySwitch = 0;
                     if(Battle.selectedSkill is Summon)
                     {
                        Summons.currentSummon = Battle.selectedSkill;
                        Spell.SUMMON = true;
                        Skills.user = Weather.weatherFoe;
                     }
                     Battle.targetType = Battle.selectedSkill.target;
                     if(Battle.targetType == ONE_ENEMY || Battle.targetType == ALL_ENEMY || Battle.targetType == CENTER_ENEMY)
                     {
                        Battle.selectedTarget = Battle.randomFoeNotSurrendered();
                     }
                     else
                     {
                        Battle.selectedTarget = Battle.mostDamagedPlayer();
                     }
                     if(Battle.selectedTarget)
                     {
                        if(Battle.selectedSkill is Summon)
                        {
                           Battle.summonFlag = true;
                        }
                        this.castSpell();
                        return true;
                     }
                  }
                  _loc3_++;
               }
            }
         }
         return false;
      }
      
      public function autoBuff() : *
      {
         var _loc1_:Equip = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.equips)
         {
            if(_loc1_)
            {
               _loc2_ = 0;
               while(_loc2_ < _loc1_.specials.length)
               {
                  if(_loc1_.specials[_loc2_])
                  {
                     if(_loc1_.specials[_loc2_][0] == Equip.BUFF)
                     {
                        buff(_loc1_.specials[_loc2_][1],5 + _loc1_.level * 5);
                     }
                  }
                  _loc2_++;
               }
            }
         }
      }
      
      public function autoStatus() : *
      {
         var _loc1_:Equip = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.equips)
         {
            if(Boolean(_loc1_) && !this.dead)
            {
               _loc2_ = 0;
               while(_loc2_ < _loc1_.specials.length && _loc2_ < _loc1_.level)
               {
                  if(_loc1_.specials[_loc2_])
                  {
                     if(_loc1_.specials[_loc2_][0] == Equip.STATUS)
                     {
                        if(Math.random() < _loc1_.specials[_loc2_][3] / 3 * _loc1_.level || Debug.moreAutoSkills)
                        {
                           Skills.giveStatus(this,_loc1_.specials[_loc2_][1],_loc1_.specials[_loc2_][2]);
                        }
                     }
                  }
                  _loc2_++;
               }
            }
         }
      }
      
      public function elementalBoost(param1:String) : Number
      {
         var _loc3_:Equip = null;
         var _loc4_:int = 0;
         var _loc2_:Number = 1;
         for each(_loc3_ in this.equips)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.specials.length && _loc4_ < _loc3_.level)
            {
               if(_loc3_.specials[_loc4_])
               {
                  if(_loc3_.specials[_loc4_][0] == Equip.BOOST && _loc3_.specials[_loc4_][1] == param1)
                  {
                     _loc2_ += 0.2 + _loc3_.level / 5 * 0.1;
                  }
               }
               _loc4_++;
            }
         }
         if(_loc2_ != 1)
         {
         }
         return _loc2_;
      }
      
      public function drainHP() : *
      {
         Battle.targetType = Target.ONE_ALLY;
         getHeal({
            "damage":drainableDamage / 3,
            "randomness":0
         });
         drainableDamage = 0;
      }
      
      public function resetLimit() : *
      {
         var _loc2_:int = 0;
         this.limit = 0;
         Medals.unlock(Medals.limitsBroken);
         Battle.menu.updatePlayerBars();
         if(Battle.selectedSkill == Spells.cleaver)
         {
            SaveData.limitsList[0] = true;
         }
         if(Battle.selectedSkill == Spells.ragnarok)
         {
            SaveData.limitsList[1] = true;
         }
         if(Battle.selectedSkill == Spells.kyun)
         {
            SaveData.limitsList[2] = true;
         }
         if(Battle.selectedSkill == Spells.genesis)
         {
            SaveData.limitsList[3] = true;
         }
         if(Battle.selectedSkill == Spells.oblivion)
         {
            SaveData.limitsList[4] = true;
         }
         if(Battle.selectedSkill == Spells.nuke)
         {
            SaveData.limitsList[5] = true;
         }
         if(Battle.selectedSkill == Spells.mightyoak)
         {
            SaveData.limitsList[6] = true;
         }
         if(Battle.selectedSkill == Spells.motherearth)
         {
            SaveData.limitsList[7] = true;
         }
         if(Battle.selectedSkill == Spells.thedestroyer)
         {
            SaveData.limitsList[8] = true;
         }
         if(Battle.selectedSkill == Spells.thecreator)
         {
            SaveData.limitsList[9] = true;
         }
         if(Battle.selectedSkill == Spells.ion)
         {
            SaveData.limitsList[10] = true;
         }
         if(Battle.selectedSkill == Spells.supernova)
         {
            SaveData.limitsList[11] = true;
         }
         if(Battle.selectedSkill == Spells.blackhole)
         {
            SaveData.limitsList[12] = true;
         }
         if(Battle.selectedSkill == Spells.tsunami)
         {
            SaveData.limitsList[13] = true;
         }
         if(Battle.selectedSkill == Spells.deathmetal)
         {
            SaveData.limitsList[14] = true;
         }
         if(Battle.selectedSkill == Spells.annihilate)
         {
            SaveData.limitsList[15] = true;
         }
         if(Battle.selectedSkill == Spells.abzero)
         {
            SaveData.limitsList[16] = true;
         }
         if(Battle.selectedSkill == Spells.rapture)
         {
            SaveData.limitsList[17] = true;
         }
         if(Battle.selectedSkill == Spells.sevenswords)
         {
            SaveData.limitsList[18] = true;
         }
         if(Battle.selectedSkill == Spells.artattack)
         {
            SaveData.limitsList[19] = true;
         }
         var _loc1_:int = 0;
         for each(_loc2_ in SaveData.limitsList)
         {
            if(_loc2_)
            {
               _loc1_++;
            }
         }
         if(_loc1_ == 20)
         {
            Medals.unlock(Medals.nuclearHolocaust);
         }
      }
      
      public function buffMP() : *
      {
         this.maxMP = getStat(Stats.MP);
         if(this.realMP > this.maxMP)
         {
            this.realMP = this.maxMP;
         }
         Battle.menu.updatePlayerBars();
      }
      
      public function getCounterSkill() : Spell
      {
         if(Flags.battleEvent == Flags.FINAL_BOSS && Battle.wave == 1)
         {
            return null;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.weapon.specials.length && _loc1_ < this.weapon.level)
         {
            if(this.weapon.specials[_loc1_])
            {
               if(this.weapon.specials[_loc1_][0] == Equip.COUNTER)
               {
                  return this.weapon.specials[_loc1_][1];
               }
            }
            _loc1_++;
         }
         return null;
      }
      
      public function hasLimitSkill() : *
      {
         var _loc1_:int = 1;
         while(_loc1_ < this.skillsLimit.length)
         {
            if((this.skillsLimit[_loc1_] as Spell).level > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function setEquipGraphics() : *
      {
         if(this is PlayerWeather)
         {
            return;
         }
         this.equips = [this.weapon,this.armor,this.hat,this.flair1,this.flair2,this.flair3];
         Players.equips[this.playerNo][0] = this.weapon.skin;
         Players.equips[this.playerNo][1] = this.hat.skin;
         Players.equips[this.playerNo][2] = this.armor.skin;
         if(this.flair1)
         {
            Players.equips[this.playerNo][3] = this.flair1.skin;
         }
         else
         {
            Players.equips[this.playerNo][3] = 2;
         }
         if(this.flair2)
         {
            Players.equips[this.playerNo][4] = this.flair2.skin;
         }
         else
         {
            Players.equips[this.playerNo][4] = 2;
         }
         if(this.flair3)
         {
            Players.equips[this.playerNo][5] = this.flair3.skin;
         }
         else
         {
            Players.equips[this.playerNo][5] = 2;
         }
         Players["P" + this.playerNo + "equips"] = Players.equips[this.playerNo];
      }
      
      public function combineWeaponEffects(param1:DamageObject) : *
      {
         Global.element = this.weapon.element;
         var _loc2_:Equip = null;
         if(param1.element == Element.WEAPON)
         {
            param1.element = this.weapon.element;
            param1.elementDegree *= this.weapon.elementDegree / 100;
         }
         if(param1.statusEffect == Status.WEAPON)
         {
            if(this.flair1.statusEffect != Status.NONE)
            {
               _loc2_ = this.flair1;
            }
            else if(this.flair2.statusEffect != Status.NONE)
            {
               _loc2_ = this.flair2;
            }
            else if(this.flair3.statusEffect != Status.NONE)
            {
               _loc2_ = this.flair3;
            }
            else if(this.weapon.statusEffect != Status.NONE)
            {
               _loc2_ = this.weapon;
            }
         }
         if(_loc2_)
         {
            param1.statusEffect = _loc2_.statusEffect;
            param1.statusDegree *= _loc2_.getStat("statusDegree") / 100;
            param1.statusChance *= _loc2_.getStat("statusChance") / 100;
         }
         if(param1.buffEffect == Stats.WEAPON && this.weapon.buffEffect != Buff.NONE)
         {
            param1.buffEffect = this.weapon.buffEffect;
            param1.buffDegree *= this.weapon.getStat("buffDegree") / 100;
            param1.buffChance *= this.weapon.getStat("buffChance") / 100;
         }
      }
      
      override public function getEquipsStat(param1:String) : Number
      {
         var _loc2_:int = 100;
         _loc2_ += this.weapon.getStat(param1);
         _loc2_ += this.hat.getStat(param1);
         _loc2_ += this.armor.getStat(param1);
         if(this.flair1)
         {
            _loc2_ += this.flair1.getStat(param1);
         }
         if(this.flair2)
         {
            _loc2_ += this.flair2.getStat(param1);
         }
         if(this.flair3)
         {
            _loc2_ += this.flair3.getStat(param1);
         }
         return _loc2_ / 100;
      }
      
      override public function getResistance(param1:String, param2:String) : Number
      {
         var r:int;
         var type:String = param1;
         var element:String = param2;
         if(type == "buff")
         {
            return 1;
         }
         if(element == Element.NONE)
         {
            return 100;
         }
         if(element == Status.WEAPON)
         {
            return 0;
         }
         if(element == Status.BERSERK)
         {
            return 1;
         }
         if(element == Status.STUFFED)
         {
            return 1;
         }
         if(element == Status.HUNGRY)
         {
            return 1;
         }
         if(element == Status.TARGET)
         {
            return 1;
         }
         if(element == Status.INVISIBLE)
         {
            return 1;
         }
         if(element == Status.ENCHANTED)
         {
            return 1;
         }
         if(element == Status.SHROUD)
         {
            return 1;
         }
         if(element == Status.LOVED)
         {
            return 1;
         }
         if(element == Status.PUSH_OUT)
         {
            return 1;
         }
         r = 100;
         if(element == Status.VIRUS)
         {
            element = Status.POISON_VIRUS;
         }
         if(element == Status.SCORCHED)
         {
            element = Status.BURN_SCORCH;
         }
         if(element == Status.CHILL)
         {
            element = Status.FREEZE_CHILL;
         }
         if(element == Status.DRY)
         {
            element = Status.DRY_WET;
         }
         if(element == Status.LIGHT)
         {
            element = Status.LIGHT_HEAVY;
         }
         if(element == Status.HEAVY)
         {
            element = Status.LIGHT_HEAVY;
         }
         if(element == Status.TIRED)
         {
            element = Status.WEAKENED_TIRED;
         }
         if(element == Status.CONFUSE)
         {
            element = Status.STAGGER_CONFUSE;
         }
         if(element == Status.DISABLE)
         {
            element = Status.SYPHON_DISABLE;
         }
         if(element == Status.BAD_LUCK)
         {
            element = Status.CURSE_BAD_LUCK;
         }
         if(element == Status.DOOM)
         {
            element = Status.DOOM_DEATH;
         }
         try
         {
            r -= this.weapon[type + "Resistance"][element][this.weapon.level - 1];
            r -= this.hat[type + "Resistance"][element][this.hat.level - 1];
            r -= this.armor[type + "Resistance"][element][this.armor.level - 1];
            if(this.flair1)
            {
               r -= this.flair1[type + "Resistance"][element][this.flair1.level - 1];
            }
            if(this.flair2)
            {
               r -= this.flair2[type + "Resistance"][element][this.flair2.level - 1];
            }
            if(this.flair3)
            {
               r -= this.flair3[type + "Resistance"][element][this.flair3.level - 1];
            }
         }
         catch(e:Error)
         {
            return 1;
         }
         if(Flags.battleEvent == Flags.EVIL_NATALIE)
         {
            if(element == Element.FIRE || element == Element.HOLY)
            {
               r += 100;
            }
         }
         return r / 100;
      }
      
      public function getMp() : String
      {
         if(this.maxMP >= 1000)
         {
            return "" + this.realMP;
         }
         return "" + this.realMP + "/" + this.maxMP;
      }
      
      public function getMpPercent() : Number
      {
         return Math.floor(this.realMP / this.maxMP * 100) + 1;
      }
      
      public function getLimitPercent() : Number
      {
         if(Flags.battleEvent == Flags.EVIL_MATT)
         {
            return 1;
         }
         return Math.floor(this.limit + 1);
      }
      
      public function getExp() : String
      {
         return "" + this.EXP + "/" + this.EXPnext;
      }
      
      public function getExpPercent() : Number
      {
         return Math.floor(this.EXP / this.EXPnext * 100) + 1;
      }
      
      public function countTotalSkillAP() : *
      {
         var _loc2_:Spell = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.skillsLimit)
         {
         }
         for each(var _loc5_ in this.skillsLimit)
         {
            _loc2_ = _loc5_;
            _loc5_;
         }
      }
   }
}

