package
{
   import flash.utils.*;
   import foes.*;
   import text.*;
   
   public class Foe extends Target
   {
      public static var SLIMES:String = "slimes";
      
      public static var TREES:String = "trees";
      
      public static var BEASTS:String = "beasts";
      
      public static var GHOSTS:String = "ghosts";
      
      public static var spawnedFoe:Boolean = false;
      
      public var fname:String;
      
      public var description:String;
      
      public var AP:int;
      
      public var SP:int;
      
      public var EXP:int;
      
      public var gold:int;
      
      public var dropList:Array;
      
      public var stealList:Array;
      
      public var gone:Boolean = false;
      
      public var unreplacable:Boolean = false;
      
      public var difBonus:int;
      
      public var isHard:Boolean;
      
      public var catchRate:Number = 100;
      
      public var boxSize:int = 1;
      
      public var stolenFrom:Boolean = false;
      
      public var icon:int = 999;
      
      public var temp:int = -1;
      
      public var delayedSpellFlag:int = 0;
      
      public var cantFlee:Boolean = false;
      
      public var p1x:Number;
      
      public var p1y:Number;
      
      public var textFont:String = "Verdana";
      
      public var textColor:int = 16777215;
      
      public var textAnimation:String = "none";
      
      public var position:int = -1;
      
      public var onDeath:Function = null;
      
      public var score:int;
      
      public var aggro:int = 0;
      
      public var finalDrops:Array;
      
      public function Foe()
      {
         super();
      }
      
      public function init(param1:int, param2:int = 0, param3:int = 0, param4:int = 0) : *
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(!Summons)
         {
            return;
         }
         if(Game.mode == Game.BATTLE)
         {
            if(param4 != 0)
            {
               if(param4 * 100 / graphicScale >= 130 && this.boxSize != 3)
               {
                  ++this.boxSize;
               }
               graphicScale = param4;
            }
            createGraphic(param2,param3,param4);
            setHP();
            this.position = Battle.foeCount();
         }
         if(statusResistance[Status.ENCHANTED] == 100)
         {
            statusResistance[Status.ENCHANTED] = 1;
         }
         if(statusResistance[Status.INVISIBLE] == 100)
         {
            statusResistance[Status.INVISIBLE] = 1;
         }
         if(spawnedFoe)
         {
            this.level = param1;
            if((Global.battleMode || Flags.expStyle == Flags.NO_EXP) && !Options.alwaysScaleFoes)
            {
               this.EXP = 0;
               this.gold = 0;
               this.AP = 0;
            }
         }
         else if(Global.battleMode || Options.alwaysScaleFoes)
         {
            this.level = Players.getAverageLevel() + param1;
            if(Flags.expStyle == Flags.NO_EXP && !Options.alwaysScaleFoes)
            {
               this.EXP = 0;
               this.gold = 0;
               this.AP = 0;
            }
            if(Global.endlessBattle)
            {
               this.level += Global.endlessBattleWave / 5;
            }
         }
         else
         {
            _loc5_ = -1;
            if(Options.altFoes)
            {
               _loc6_ = 0;
               while(_loc6_ < BattlesAlt.BATTLE_LIST.length)
               {
                  if(BattlesAlt.BATTLE_LIST[_loc6_] == Game.foes)
                  {
                     _loc5_ = _loc6_;
                  }
                  _loc6_++;
               }
            }
            else
            {
               _loc6_ = 0;
               while(_loc6_ < Battles.BATTLE_LIST.length)
               {
                  if(Battles.BATTLE_LIST[_loc6_] == Game.foes)
                  {
                     _loc5_ = _loc6_;
                  }
                  _loc6_++;
               }
            }
            if(_loc5_ != -1)
            {
               if(Options.altFoes)
               {
                  this.level = BattlesAlt.LEVEL_LIST[_loc5_][Battle.wave][Battle.foeCount()] + param1;
               }
               else
               {
                  this.level = Battles.LEVEL_LIST[_loc5_][Battle.wave][Battle.foeCount()] + param1;
               }
            }
            else
            {
               this.level = Players.getAverageLevel();
            }
         }
         if(Game.mode == Game.MAP)
         {
            this.level = Players.getAverageLevel();
         }
         if(buffResistance[Stats.HP] == 100)
         {
            buffResistance[Stats.HP] = 1;
         }
         if(Game.mode == Game.BATTLE)
         {
            this.p1x = graphic.point1.x;
            this.p1y = graphic.point1.y;
         }
         this.levelUp();
         this.difBonus = 0;
         this.isHard = Options.difficulty == Options.EPIC || Options.difficulty == Options.HARD || Global.endlessBattle;
         if(Options.bulkyFoes)
         {
            if(Flags.battleEvent == Flags.ARENA_BATTLE)
            {
               maxHP *= 1.1;
            }
            else
            {
               maxHP *= 1.2;
            }
            realHP = maxHP;
         }
         if(Options.evasiveFoes)
         {
            evade *= 1.1;
         }
         if(Options.offensiveFoes)
         {
            if(Flags.battleEvent == Flags.ARENA_BATTLE)
            {
               attack *= 1.1;
               magicAttack *= 1.1;
            }
            else
            {
               attack *= 1.3;
               magicAttack *= 1.3;
            }
         }
         if(Options.feebleFoes)
         {
            maxHP *= 0.75;
            realHP = maxHP;
         }
         if(Options.blindFoes)
         {
            accuracy *= 0.8;
         }
         if(Options.cowardlyFoes)
         {
            this.catchRate = Math.floor(this.catchRate * 1.3);
         }
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            maxHP *= 0.5;
            realHP = maxHP;
         }
         this.recalculateElementalResistance();
         HP = maxHP;
         if(Debug.instantKills || Options.oneHP)
         {
            HP = 1;
            maxHP = 1;
            realHP = 1;
         }
         if(Flags.battleEvent == Flags.INFINITE_HP)
         {
            HP = 9999999;
            maxHP = 9999999;
            realHP = 9999999;
            hit2HP = 2;
         }
         if(MapData.area == MapData.BATTLE_ARENA || MapData.area == MapData.THE_SEA)
         {
            BossDevourer.finalBossBuff(this,-4,false);
            BossDevourer.levelBoost(this,32);
         }
         if(MapData.area == MapData.DATA_BUNKER)
         {
            BossDevourer.finalBossBuff(this,-4,false);
            BossDevourer.levelBoost(this,32);
         }
      }
      
      public function recalculateElementalResistance() : *
      {
         var _loc1_:String = null;
         if(Options.superEffective)
         {
            for each(_loc1_ in Element.ELEMENTS)
            {
               if(elementalResistance[_loc1_] == 1.3)
               {
                  elementalResistance[_loc1_] = 1.5;
               }
               else if(elementalResistance[_loc1_] == 1.5)
               {
                  elementalResistance[_loc1_] = 2;
               }
               else if(elementalResistance[_loc1_] == 1.8)
               {
                  elementalResistance[_loc1_] = 2.5;
               }
               else if(elementalResistance[_loc1_] == 4)
               {
                  elementalResistance[_loc1_] = 5;
               }
            }
         }
      }
      
      public function statusAntibody(param1:String) : *
      {
         if(param1 == Status.BURN || param1 == Status.SCORCHED)
         {
            statusResistance[Status.BURN_SCORCH] -= 0.1;
         }
         if(param1 == Status.STUN)
         {
            statusResistance[Status.STUN] -= 0.1;
         }
         if(param1 == Status.CHILL || param1 == Status.FREEZE)
         {
            statusResistance[Status.FREEZE_CHILL] -= 0.1;
         }
         if(param1 == Status.POISON || param1 == Status.VIRUS)
         {
            statusResistance[Status.POISON_VIRUS] -= 0.1;
         }
         if(param1 == Status.SYPHON)
         {
            statusResistance[Status.SYPHON_DISABLE] -= 0.1;
         }
         if(param1 == Status.CURSE || param1 == Status.BAD_LUCK)
         {
            statusResistance[Status.CURSE_BAD_LUCK] -= 0.1;
         }
         if(param1 == Status.STAGGER)
         {
            statusResistance[Status.STAGGER_CONFUSE] -= 0.1;
         }
         if(param1 == Status.DRY || param1 == Status.WET)
         {
            statusResistance[Status.DRY_WET] -= 0.1;
         }
         if(param1 == Status.LIGHT || param1 == Status.HEAVY)
         {
            statusResistance[Status.LIGHT_HEAVY] -= 0.1;
         }
         if(param1 == Status.WEAKEN || param1 == Status.TIRED)
         {
            statusResistance[Status.WEAKENED_TIRED] -= 0.1;
         }
         if(param1 == Status.DISPEL)
         {
            statusResistance[Status.DISPEL] -= 0.1;
         }
         if(param1 == Status.DOOM)
         {
            statusResistance[Status.DEATH] -= 0.1;
         }
      }
      
      public function castMultiSpell(param1:Spell) : *
      {
         if(Battle.playerCount() == 0)
         {
            return;
         }
         Battle.selectedSkill = param1;
         Spells.multiSpell = param1;
         Battle.multiSpell = -1;
         Battle.arrows = 0;
         do
         {
            ++Battle.multiSpell;
            Battle.selectedTarget = Battle.players[Battle.multiSpell];
         }
         while(Battle.players[Battle.multiSpell].dead);
         
         this.castSpell(param1.MC);
      }
      
      public function castAllyMultiSpell(param1:Spell) : *
      {
         Battle.selectedSkill = param1;
         Spells.multiSpell = param1;
         Battle.multiSpell = -1;
         Battle.arrows = 0;
         do
         {
            ++Battle.multiSpell;
            Battle.selectedTarget = Battle.foes[Battle.multiSpell];
         }
         while(Battle.foes[Battle.multiSpell].dead);
         
         this.castSpell(param1.MC);
      }
      
      public function castRandomMultiSpell(param1:Spell, param2:int) : *
      {
         Battle.selectedSkill = param1;
         Spells.multiSpell = param1;
         Battle.selectedTarget = Battle.randomPlayer(true);
         Battle.multiSpell = 1;
         Battle.arrows = param2;
         this.castSpell(param1.MC);
      }
      
      public function setStrings(param1:String = "") : *
      {
         var _loc2_:String = getQualifiedClassName(this);
         if(param1 != "")
         {
            _loc2_ = param1;
         }
         _loc2_ = _loc2_.toLowerCase().substring(6);
         SetStrings.setFoeStrings(this,_loc2_);
      }
      
      public function quickKill() : *
      {
         dead = true;
         graphic.gotoAndStop("null");
         graphic.dead();
      }
      
      public function quickKill2() : *
      {
         dead = true;
         HP = 0;
         graphic.gotoAndPlay("die");
      }
      
      public function startTurn(param1:Boolean = false) : *
      {
         Battle.multiSpell = -1;
         Skills.user = this;
         if(Catching.getCatchScore(this) > 55)
         {
            Battle.selectedTarget = Battle.randomPlayer(false,true);
         }
         else
         {
            Battle.selectedTarget = Battle.randomPlayer(param1,false);
         }
         Battle.targetType = Target.ONE_ENEMY;
         if(status[Status.HASTE])
         {
            status[Status.HASTE] = 0;
         }
         else
         {
            turnTaken = true;
         }
         if(status[Status.SURRENDER])
         {
            turnTaken = true;
            ++SaveData.foesSpared;
            graphic.animate("flee");
            Medals.unlock(Medals.showMercy);
            Text.foeFlee(this.boxSize);
            this.getSP();
            return false;
         }
         graphic.dirtyStatus = true;
         return true;
      }
      
      public function classicFoeStart() : *
      {
         Battle.selectedTarget = Battle.randomPlayer(true,false);
      }
      
      public function quickFlee() : *
      {
         turnTaken = true;
         ++SaveData.foesSpared;
         graphic.animate("flee");
         Text.foeFlee(this.boxSize);
         this.getSP();
      }
      
      public function flee() : *
      {
         this.gone = true;
         realHP = 0;
         dead = true;
         this.giveLoot();
         dispelAll();
         if(this.onDeath != null)
         {
            this.onDeath();
         }
         Battle.menu.updateFoeBars();
      }
      
      public function die() : *
      {
         this.flee();
      }
      
      public function giveLoot() : *
      {
         if(this.finalDrops)
         {
            return;
         }
         Battle.scorePool += this.score;
         Battle.abilityPool += this.AP;
         Battle.experiencePool += this.EXP;
         Battle.goldPool += this.gold;
         this.seasonalItemDrops();
         this.finalDrops = Battle.addDrops(this.dropList);
      }
      
      public function seasonalItemDrops() : *
      {
         var _loc1_:int = 5;
         if(this.boxSize == 2)
         {
            _loc1_ = 20;
         }
         if(this.boxSize == 3)
         {
            _loc1_ = 50;
         }
         if(Flags.HALLOWEEN.quantity)
         {
            this.dropList.push([Items.halloweencandy,_loc1_]);
            if(this.boxSize == 3)
            {
               this.dropList.push([Items.halloweencandy,_loc1_]);
            }
         }
         if(Flags.CHRISTMAS.quantity)
         {
            this.dropList.push([Items.candycane,_loc1_]);
            if(this.boxSize == 3)
            {
               this.dropList.push([Items.candycane,_loc1_]);
            }
         }
         if(Flags.EASTER.quantity)
         {
            this.dropList.push([Items.easteregg,_loc1_ * 1.5]);
            if(this.boxSize == 3)
            {
               this.dropList.push([Items.easteregg,_loc1_ * 1.5]);
            }
         }
         if(Flags.VALENTINES.quantity)
         {
            this.dropList.push([Items.valentine,_loc1_ / 2]);
            if(this.boxSize == 3)
            {
               this.dropList.push([Items.valentine,_loc1_ / 2]);
            }
         }
         if(Flags.LUNAR.quantity)
         {
            this.dropList.push([Items.map2,_loc1_]);
            if(this.boxSize == 3)
            {
               this.dropList.push([Items.map2,_loc1_]);
            }
         }
      }
      
      public function isScared(param1:String) : *
      {
         var _loc2_:Player = null;
         var _loc3_:Equip = null;
         var _loc4_:int = 0;
         for each(_loc2_ in Battle.players)
         {
            if(!_loc2_.dead)
            {
               for each(_loc3_ in _loc2_.equips)
               {
                  _loc4_ = 0;
                  while(_loc4_ < _loc3_.level)
                  {
                     if(_loc3_.specials[_loc4_] && _loc3_.specials[_loc4_][0] == Equip.SCARE && _loc3_.specials[_loc4_][1] == param1)
                     {
                        return true;
                     }
                     _loc4_++;
                  }
               }
            }
         }
         return false;
      }
      
      public function getSP() : *
      {
         var _loc1_:Equip = null;
         var _loc2_:int = 0;
         if(Battle.currentPlayer)
         {
            for each(_loc1_ in Battle.currentPlayer.equips)
            {
               _loc2_ = 0;
               while(_loc2_ < _loc1_.level)
               {
                  if(Boolean(_loc1_.specials[_loc2_]) && _loc1_.specials[_loc2_][0] == Equip.MORE_SP)
                  {
                     this.SP *= 1 + _loc1_.level / 3;
                  }
                  _loc2_++;
               }
            }
         }
         if(Options.summoner)
         {
            this.SP *= 1.3;
         }
         DamageNumber.displayDamage(DamageNumber.SP,this.SP,this);
         Battle.SP += this.SP;
         if(Battle.SP > Battle.maxSP)
         {
            Battle.SP = Battle.maxSP;
         }
      }
      
      public function capture() : *
      {
         realHP = 0;
         dead = true;
         counter = false;
         graphic.stopped = true;
         dispelAll();
         graphic.gotoAndStop("null");
         this.getSP();
         Foes.scan(this,false);
         Battle.menu.updatePlayerBars();
         statusDisplay.visible = false;
         this.gone = true;
         this.giveLoot();
         graphic.busy = true;
         if(this.onDeath != null)
         {
            this.onDeath();
         }
      }
      
      public function counter2() : *
      {
      }
      
      public function levelUp() : *
      {
         var _loc12_:int = 0;
         if(Game.mode != Game.MAP && !Global.battleMode)
         {
         }
         level = Math.floor(level);
         spawnedFoe = false;
         this.score = this.SP;
         var _loc1_:Number = 1;
         var _loc2_:Number = 1;
         var _loc3_:Number = 1;
         if(Global.endlessBattle && !Debug.expoDemo)
         {
            _loc1_ = 1.5;
            _loc2_ = 1;
         }
         else if(Options.difficulty == Options.ZERO)
         {
            _loc1_ = 0.3;
            _loc2_ = 0.5;
         }
         else if(Options.difficulty == Options.EASY)
         {
            _loc1_ = 0.5;
            _loc2_ = 0.7;
         }
         else if(Options.difficulty == Options.NORMAL)
         {
            _loc1_ = 1;
            _loc2_ = 0.9;
         }
         else if(Options.difficulty == Options.HARD)
         {
            _loc1_ = 1.5;
            _loc2_ = 1.15;
         }
         else if(Options.difficulty == Options.EPIC)
         {
            _loc1_ = 2;
            _loc2_ = 1.4;
         }
         if(Debug.expoDemo)
         {
            _loc1_ = 0.9;
            _loc2_ = 0.6;
         }
         var _loc4_:int = 32;
         var _loc5_:int = 36;
         var _loc6_:Number = 1;
         if(level > 24)
         {
            _loc6_ = 1 + (level - 24) / 10;
         }
         if(_loc6_ > 1.6)
         {
            _loc6_ = 1.6;
         }
         HP = Math.floor(HP * Math.pow(Constants.hpGrowthFoe,level) * _loc2_ * 0.85 * _loc3_);
         setHP();
         if(level <= 15)
         {
            _loc3_ *= 0.9;
         }
         if(level == 16)
         {
            _loc3_ *= 0.9;
         }
         if(level == 17)
         {
            _loc3_ *= 0.91;
         }
         if(level == 18)
         {
            _loc3_ *= 0.92;
         }
         if(level == 19)
         {
            _loc3_ *= 0.94;
         }
         if(level == 20)
         {
            _loc3_ *= 0.97;
         }
         attack = attack * Math.pow(Constants.attackGrowthFoe,level) * _loc1_ * _loc6_ * _loc3_;
         magicAttack = magicAttack * Math.pow(Constants.attackGrowthFoe,level) * _loc1_ * _loc6_ * _loc3_;
         var _loc7_:int = level;
         if(_loc7_ > _loc5_)
         {
            _loc7_ = _loc5_;
         }
         defence = Math.floor(defence + defence * (_loc7_ / 25));
         magicDefence = Math.floor(magicDefence + magicDefence * (_loc7_ / 25));
         var _loc8_:Number = 0.84 + level / 200;
         if(_loc8_ >= 1)
         {
            _loc8_ = 1;
         }
         evade = Math.floor(_loc8_ * evade * Math.pow(Constants.evadeGrowthFoe,level));
         if(Global.endlessBattle)
         {
            evade *= 0.9;
         }
         if(Debug.expoDemo)
         {
            evade *= 0.9;
         }
         accuracy = Math.floor(accuracy * Math.pow(Constants.evadeGrowthFoe,level));
         this.gold = Math.floor(this.gold * Math.pow(Constants.goldGrowth,level));
         var _loc9_:Number = 1;
         var _loc10_:* = Players.getAverageLevel();
         if(Game.mode != Game.MAIN_MENU)
         {
            if(_loc10_ < 32 && _loc10_ > 1)
            {
               _loc9_ = 1.3;
            }
            if(_loc10_ < 35 && _loc10_ > 31)
            {
               _loc9_ = 1.2;
            }
            if(_loc10_ < 22 && _loc10_ > 18)
            {
               _loc9_ = 1.4;
            }
         }
         this.EXP = Math.floor(_loc9_ * this.EXP * Math.pow(Constants.expGrowth2,level > _loc4_ ? _loc4_ : level));
         if(level > _loc4_)
         {
            this.EXP = Math.floor(this.EXP * Math.pow(Constants.expGrowth3,level - _loc4_));
         }
         var _loc11_:Number = level;
         if(_loc11_ > 25)
         {
            _loc11_ = 25;
         }
         this.AP = Math.floor(this.AP * Math.pow(Constants.apGrowth,_loc11_));
         if(level < 10)
         {
            this.AP *= 1.25;
         }
         else if(level < 12)
         {
            this.AP *= 1.18;
         }
         else if(level < 14)
         {
            this.AP *= 1.1;
         }
         this.SP = Math.ceil((this.SP + this.SP * ((level > _loc4_ ? _loc4_ : level) / 25)) / 2);
         evade *= Constants.accMul;
         accuracy *= Constants.accMul;
         if(level > _loc5_ && !Options.alwaysScaleFoes)
         {
            _loc12_ = level - _loc5_;
            HP = int(HP * Math.pow(Constants.hpSubFoe,_loc12_));
            attack = int(attack * Math.pow(Constants.attackSubFoe,_loc12_));
            magicAttack = int(magicAttack * Math.pow(Constants.attackSubFoe,_loc12_));
            evade = int(evade * Math.pow(Constants.evadeSubFoe,_loc12_));
            accuracy = int(accuracy * Math.pow(Constants.evadeSubFoe,_loc12_));
            setHP();
         }
         else if(level > _loc5_ && Options.alwaysScaleFoes)
         {
            _loc12_ = level - _loc5_;
            HP = int(HP * Math.pow(Constants.hpSubFoe2,_loc12_));
            attack = int(attack * Math.pow(Constants.attackSubFoe2,_loc12_));
            magicAttack = int(magicAttack * Math.pow(Constants.attackSubFoe2,_loc12_));
            evade = int(evade * Math.pow(Constants.evadeSubFoe2,_loc12_));
            accuracy = int(accuracy * Math.pow(Constants.evadeSubFoe2,_loc12_));
         }
         if(Flags.battleEvent != Flags.ARENA_BATTLE && !Flags.isBunkerBattle())
         {
            if(Options.threePlayerMode)
            {
               HP *= Constants.P3hpNerf;
            }
            if(Options.twoPlayerMode)
            {
               HP *= Constants.P2hpNerf;
            }
            if(Options.onePlayerMode)
            {
               HP *= Constants.P1hpNerf;
            }
         }
         if(Flags.isBunkerBattle())
         {
            if(Options.threePlayerMode)
            {
            }
            if(Options.twoPlayerMode && Flags.isEBF3or4())
            {
               HP *= Constants.P2hpNerf;
            }
            if(Options.onePlayerMode)
            {
               HP *= Constants.P1hpNerf;
            }
         }
         setHP();
         if(Debug.weakFoes)
         {
            maxHP = 1;
            realHP = 1;
            HP = 1;
            evade = 1;
            accuracy = 1;
         }
         if(Debug.stunFoes || Options.stunnedFoes)
         {
            status[Status.STUN] = 9;
            status[Status.SCORCHED] = 9;
         }
      }
      
      public function castSpell(param1:String) : *
      {
         if(param1 == "Log")
         {
            param1 = "Log1";
         }
         var _loc2_:Class = getDefinitionByName(param1);
         var _loc3_:SpellMC = new _loc2_();
         _loc3_.caster = this;
         if(graphic)
         {
            _loc3_.isSummon = graphic.isSummon;
         }
         Battle.stage.addChild(_loc3_);
         _loc3_.gotoAndPlay(_loc3_.totalFrames);
         _loc3_.gotoAndPlay(1);
      }
      
      override public function getResistance(param1:String, param2:String) : Number
      {
         if(param2 == Status.VIRUS)
         {
            param2 = Status.POISON_VIRUS;
         }
         if(param2 == Status.SCORCHED)
         {
            param2 = Status.BURN_SCORCH;
         }
         if(param2 == Status.CHILL)
         {
            param2 = Status.FREEZE_CHILL;
         }
         if(param2 == Status.DRY)
         {
            param2 = Status.DRY_WET;
         }
         if(param2 == Status.LIGHT)
         {
            param2 = Status.LIGHT_HEAVY;
         }
         if(param2 == Status.HEAVY)
         {
            param2 = Status.LIGHT_HEAVY;
         }
         if(param2 == Status.TIRED)
         {
            param2 = Status.WEAKENED_TIRED;
         }
         if(param2 == Status.CONFUSE)
         {
            param2 = Status.STAGGER_CONFUSE;
         }
         if(param2 == Status.DISABLE)
         {
            param2 = Status.SYPHON_DISABLE;
         }
         if(param2 == Status.BAD_LUCK)
         {
            param2 = Status.CURSE_BAD_LUCK;
         }
         if(param2 == Status.DOOM)
         {
            param2 = Status.DOOM_DEATH;
         }
         if(param2 == Status.GOOD_LUCK || param2 == Status.REGEN || param2 == Status.SHROUD || param2 == Status.LOVED)
         {
            return 25;
         }
         if(param2 == Status.HUNGRY || param2 == Status.DISABLE || param2 == Status.STUFFED)
         {
            return 0;
         }
         if(param1 != "elemental")
         {
            return this[param1 + "Resistance"][param2];
         }
         return this[param1 + "Resistance"][param2];
      }
      
      public function makeFoe(param1:int, param2:Class, param3:int, param4:int, param5:Boolean = false) : *
      {
         spawnedFoe = true;
         var _loc6_:Foe = Battle.foes[param1];
         _loc6_.resetPoint1();
         var _loc7_:Foe = new param2(param3,_loc6_.graphic.getX(1),_loc6_.graphic.getY(1),param4);
         Battle.foes[param1] = _loc7_;
         graphic.parent.setChildIndex(_loc7_.graphic,graphic.parent.getChildIndex(_loc6_.graphic));
         graphic.parent.setChildIndex(_loc7_.statusDisplay,graphic.parent.getChildIndex(_loc7_.graphic) + 1);
         _loc7_.turnTaken = !param5;
         if(Options.noGrinding)
         {
            _loc7_.EXP = 0;
            _loc7_.AP = 0;
            _loc7_.gold = 0;
         }
         _loc6_.removeGraphic();
         Battle.menu.updateFoeBars();
      }
      
      public function resetPoint1() : *
      {
         graphic.point1.x = this.p1x;
         graphic.point1.y = this.p1y;
      }
      
      public function spawnFoe(param1:Array, param2:int, param3:int = 0, param4:int = -1, param5:Boolean = false) : Boolean
      {
         var _loc6_:Class = param1[Math.floor(Math.random() * param1.length)];
         if(Options.catSimulator)
         {
            _loc6_ = [CatWarrior,CatWarrior,CatBomber,CatNinja,CatSniper][int(Math.random() * 5)];
         }
         if(param4 == -1)
         {
            if(Battle.foes[2] && (Battle.foes[2] as Foe).gone && !(Battle.foes[2] as Foe).unreplacable)
            {
               this.makeFoe(2,_loc6_,param2,param3,param5);
               return true;
            }
            if(Battle.foes[4] && (Battle.foes[4] as Foe).gone && !(Battle.foes[4] as Foe).unreplacable)
            {
               this.makeFoe(4,_loc6_,param2,param3,param5);
               return true;
            }
            if(Battle.foes[0] && (Battle.foes[0] as Foe).gone && !(Battle.foes[0] as Foe).unreplacable)
            {
               this.makeFoe(0,_loc6_,param2,param3,param5);
               return true;
            }
            if(Battle.foes[3] && (Battle.foes[3] as Foe).gone && !(Battle.foes[3] as Foe).unreplacable)
            {
               this.makeFoe(3,_loc6_,param2,param3,param5);
               return true;
            }
            if(Battle.foes[1] && (Battle.foes[1] as Foe).gone && !(Battle.foes[1] as Foe).unreplacable)
            {
               this.makeFoe(1,_loc6_,param2,param3,param5);
               return true;
            }
         }
         else if(Battle.foes[param4] && (Battle.foes[param4] as Foe).gone && !(Battle.foes[param4] as Foe).unreplacable)
         {
            this.makeFoe(param4,_loc6_,param2,param3,param5);
            return true;
         }
         return false;
      }
      
      public function readyCounterAttack(param1:Number = 0.25) : *
      {
         if(Global.counter)
         {
            return;
         }
         if(!canMove())
         {
            return;
         }
         if(status[Status.SURRENDER])
         {
            return;
         }
         if(status[Status.DEFEND])
         {
            return;
         }
         if(Battle.autoSpellFlag)
         {
            return;
         }
         if(Battle.selectedSkill is Summon)
         {
            return;
         }
         if(lastAttacker == Weather.weatherPlayer)
         {
            return;
         }
         if(!Battle.finalHit)
         {
            return;
         }
         if(!Battle.counterStackEmpty())
         {
            return;
         }
         graphic.dirtyStatus = true;
         if(Battle.counterStack.indexOf(this) == -1 && Math.random() < param1)
         {
            Battle.counterStack.push(this);
         }
      }
   }
}

