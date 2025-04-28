package
{
   public class Equip
   {
      public static var temp:*;
      
      public static var FLAIR:String = "flair";
      
      public static var SWORD:String = "sword";
      
      public static var STAFF:String = "staff";
      
      public static var GUN:String = "gun";
      
      public static var BOW:String = "bow";
      
      public static var TOYS:String = "toys";
      
      public static var HAT_MALE:String = "hatM";
      
      public static var HAT_FEMALE:String = "hatF";
      
      public static var ARMOR_MALE:String = "armorM";
      
      public static var ARMOR_FEMALE:String = "armorF";
      
      public static var SUMMON:Number = 0;
      
      public static var CAST:Number = 1;
      
      public static var BUFF:Number = 2;
      
      public static var BOOST:Number = 3;
      
      public static var COUNTER:Number = 4;
      
      public static var STATUS:Number = 5;
      
      public static var DRAIN_HP:Number = 6;
      
      public static var BOOST_FOOD:Number = 7;
      
      public static var BOOST_THROWS:Number = 8;
      
      public static var BOOST_CATCH:Number = 9;
      
      public static var DEFEND_STATUS:Number = 10;
      
      public static var DEFEND_BUFF:Number = 11;
      
      public static var BOOST_BUFFS:Number = 12;
      
      public static var BOOST_DEBUFFS:Number = 13;
      
      public static var STEAL:Number = 14;
      
      public static var BOOST_STATUS:Number = 15;
      
      public static var MORE_SP:Number = 16;
      
      public static var STRONG_SUMMONS:Number = 17;
      
      public static var SCARE:Number = 18;
      
      public static var IGNORE_BUFFS:Number = 19;
      
      public static var BOOST_HEALING:Number = 20;
      
      public static var INTIMIDATE:Number = 21;
      
      public static var RANDOM_BUFFS:Number = 22;
      
      public static var REVIVE_BUFF:Number = 23;
      
      public static var NO_STACK:Number = 24;
      
      public static var MORE_GOLD:Number = 25;
      
      public static var MORE_ITEMS:Number = 26;
      
      public static var MORE_MAX_SP:Number = 27;
      
      public static var SP_RECOVERY:Number = 28;
      
      public static var TETRIS:Number = 29;
      
      public static var SKIP_HASTE:Number = 30;
      
      public static var DEAL_WITH_IT:Number = 31;
      
      public static var FAST_COOLDOWN:Number = 32;
      
      public static var MORE_UNLEASHES:Number = 33;
      
      public static var MORE_AP:Number = 34;
      
      public static var equipAltStats:Boolean = false;
      
      private var HP:Array;
      
      private var MP:Array;
      
      private var attack:Array;
      
      private var defence:Array;
      
      private var magicAttack:Array;
      
      private var magicDefence:Array;
      
      private var accuracy:Array;
      
      private var evade:Array;
      
      public var temp:int = 0;
      
      public var premium:Boolean = false;
      
      public var cost:int;
      
      public var element:String;
      
      public var elementDegree:Number = 0;
      
      public var statusEffect:String;
      
      public var statusChance:Array;
      
      public var statusDegree:Array;
      
      public var buffEffect:String;
      
      public var buffChance:Array;
      
      public var buffDegree:Array;
      
      public var owned:Boolean;
      
      public var SID:String;
      
      public var ID:int;
      
      public var uses:int;
      
      public var bonusFlag:int = 0;
      
      public var skin:Number;
      
      public var icon:Number;
      
      public var map:Array;
      
      public var name:String;
      
      public var type:String;
      
      public var MAX_LEVEL:Number = 5;
      
      public var level:Number;
      
      public var materials:Array;
      
      public var description:String;
      
      public var shortDescription:String;
      
      public var elementalResistance:Object;
      
      public var statusResistance:Object;
      
      public var buffResistance:Object;
      
      public var specials:Array;
      
      public function Equip(param1:Object)
      {
         var _loc2_:String = null;
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         this.element = Element.NONE;
         super();
         this.owned = false;
         this.uses = 0;
         this.name = param1.name;
         this.type = param1.type;
         this.icon = param1.icon;
         this.skin = param1.skin;
         this.map = param1.map;
         if(param1.cost)
         {
            this.cost = param1.cost;
         }
         else
         {
            this.cost = 123;
         }
         this.specials = param1.specials;
         if(!this.specials)
         {
            this.specials = [];
         }
         if(param1.element)
         {
            this.element = param1.element;
         }
         else
         {
            this.element = Element.NONE;
         }
         if(!param1.elementDegree)
         {
            this.elementDegree = 50;
         }
         else
         {
            this.elementDegree = param1.elementDegree;
         }
         if(this.element == Element.NONE)
         {
            this.elementDegree = 100;
         }
         if(param1.statusEffect)
         {
            this.statusEffect = param1.statusEffect;
         }
         else
         {
            this.statusEffect = Status.NONE;
         }
         this.statusDegree = param1.statusDegree;
         this.statusChance = param1.statusChance;
         if(param1.buffEffect)
         {
            this.buffEffect = param1.buffEffect;
         }
         else
         {
            this.buffEffect = Stats.NONE;
         }
         this.buffDegree = param1.buffDegree;
         this.buffChance = param1.buffChance;
         this.materials = param1.materials;
         this.SID = param1.SID;
         this.shortDescription = param1.description;
         for each(_loc2_ in Stats.STATS)
         {
            this[_loc2_] = param1[_loc2_];
            if(this[_loc2_] == undefined)
            {
               this[_loc2_] = [0];
            }
            _loc3_ = 0;
            while(_loc3_ < this.MAX_LEVEL)
            {
               if(this[_loc2_][_loc3_] == undefined)
               {
                  this[_loc2_][_loc3_] = this[_loc2_][0];
               }
               _loc3_++;
            }
         }
         this.elementalResistance = Element.getElementHolder();
         this.statusResistance = Status.getStatusHolder(100);
         this.buffResistance = Stats.getBuffHolder();
         if(!param1.resistance)
         {
            param1.resistance = {};
         }
         for each(_loc2_ in Element.ELEMENTS)
         {
            if(param1.resistance[_loc2_])
            {
               this.elementalResistance[_loc2_] = param1.resistance[_loc2_];
               if(param1.resistance[_loc2_].length == 1)
               {
                  _loc4_ = 0;
                  while(_loc4_ < 4)
                  {
                     param1.resistance[_loc2_].push(param1.resistance[_loc2_][0]);
                     _loc4_++;
                  }
               }
            }
            else
            {
               this.elementalResistance[_loc2_] = [0,0,0,0,0];
            }
         }
         for each(_loc2_ in Status.RESISTANCE)
         {
            if(param1.resistance[_loc2_])
            {
               this.statusResistance[_loc2_] = param1.resistance[_loc2_];
               if(param1.resistance[_loc2_].length == 1)
               {
                  _loc4_ = 0;
                  while(_loc4_ < 4)
                  {
                     param1.resistance[_loc2_].push(param1.resistance[_loc2_][0]);
                     _loc4_++;
                  }
               }
            }
            else
            {
               this.statusResistance[_loc2_] = [0,0,0,0,0];
            }
         }
         for each(_loc2_ in Stats.STATS)
         {
            if(param1.resistance[_loc2_])
            {
               this.buffResistance[_loc2_] = param1.resistance[_loc2_];
               if(param1.resistance[_loc2_].length == 1)
               {
                  _loc4_ = 0;
                  while(_loc4_ < 4)
                  {
                     param1.resistance[_loc2_].push(param1.resistance[_loc2_][0]);
                     _loc4_++;
                  }
               }
            }
            else
            {
               this.buffResistance[_loc2_] = [0,0,0,0,0];
            }
         }
         if(this.type == FLAIR)
         {
            this.level = 0;
         }
         else
         {
            this.level = 0;
         }
      }
      
      public static function getRandomEquip(param1:String, param2:Boolean = false) : Equip
      {
         var _loc3_:Equip = null;
         var _loc4_:Array = null;
         if(param1 == FLAIR)
         {
            _loc4_ = Equips.FLAIRS_PLUS;
         }
         if(param1 == SWORD)
         {
            _loc4_ = Equips.SWORDS;
         }
         if(param1 == STAFF)
         {
            _loc4_ = Equips.STALVES;
         }
         if(param1 == GUN)
         {
            _loc4_ = Equips.GUNS;
         }
         if(param1 == BOW)
         {
            _loc4_ = Equips.BOWS;
         }
         if(param1 == TOYS)
         {
            _loc4_ = Equips.TOYS;
         }
         if(param1 == HAT_MALE)
         {
            _loc4_ = Equips.MALE_HATS;
         }
         if(param1 == HAT_FEMALE)
         {
            _loc4_ = Equips.FEMALE_HATS;
         }
         if(param1 == ARMOR_MALE)
         {
            _loc4_ = Equips.MALE_ARMOR;
         }
         if(param1 == ARMOR_FEMALE)
         {
            _loc4_ = Equips.FEMALE_ARMOR;
         }
         var _loc5_:int = SaveData.seed + param1.charCodeAt(1) + param1.charCodeAt(2);
         var _loc6_:int = 0;
         var _loc7_:Boolean = true;
         for each(_loc3_ in _loc4_)
         {
            if(!_loc3_.owned && !inStore(_loc3_) && !equipped(_loc3_,param2))
            {
               _loc7_ = false;
            }
         }
         if(_loc7_)
         {
            return null;
         }
         do
         {
            _loc6_ += _loc5_ + 1;
            _loc6_ = _loc6_ % _loc4_.length;
            _loc5_ /= 1.1;
            _loc3_ = _loc4_[_loc6_];
         }
         while(_loc3_.owned && !param2 || inStore(_loc3_) || equipped(_loc3_,param2));
         
         return _loc3_;
      }
      
      public static function inStore(param1:Equip) : Boolean
      {
         var _loc2_:Equip = null;
         for each(_loc2_ in Equips.EQUIP_SHOP_1)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function equipped(param1:Equip, param2:Boolean) : Boolean
      {
         var _loc3_:Player = null;
         if(!Players.PLAYERS || param2)
         {
            return false;
         }
         for each(_loc3_ in Players.PLAYERS)
         {
            if(param1 == _loc3_.weapon || param1 == _loc3_.hat || param1 == _loc3_.armor)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function randomStatus(param1:DamageObject) : *
      {
         var _loc2_:int = Math.random() * 20;
         if(_loc2_ == 0)
         {
            param1.statusEffect = Status.POISON;
            param1.statusDegree = 9;
         }
         if(_loc2_ == 1)
         {
            param1.statusEffect = Status.BURN;
            param1.statusDegree = 9;
         }
         if(_loc2_ == 2)
         {
            param1.statusEffect = Status.FREEZE;
            param1.statusDegree = 3;
         }
         if(_loc2_ == 3)
         {
            param1.statusEffect = Status.STUN;
            param1.statusDegree = 4;
         }
         if(_loc2_ == 4)
         {
            param1.statusEffect = Status.WET;
            param1.statusDegree = 5;
         }
         if(_loc2_ == 5)
         {
            param1.statusEffect = Status.SYPHON;
            param1.statusDegree = 5;
         }
         if(_loc2_ == 6)
         {
            param1.statusEffect = Status.DOOM;
            param1.statusDegree = 3;
         }
         if(_loc2_ == 7)
         {
            param1.statusEffect = Status.DEATH;
            param1.statusDegree = 1;
         }
         if(_loc2_ == 8)
         {
            param1.statusEffect = Status.DISPEL;
            param1.statusDegree = 1;
         }
         if(_loc2_ == 9)
         {
            param1.statusEffect = Status.WEAKEN;
            param1.statusDegree = 9;
         }
         if(_loc2_ == 11)
         {
            param1.statusEffect = Status.CURSE;
            param1.statusDegree = 9;
         }
         if(_loc2_ == 12)
         {
            param1.statusEffect = Status.TIRED;
            param1.statusDegree = 9;
         }
         if(_loc2_ == 13)
         {
            param1.statusEffect = Status.DRY;
            param1.statusDegree = 5;
         }
         if(_loc2_ == 14)
         {
            param1.statusEffect = Status.CHILL;
            param1.statusDegree = 5;
         }
         if(_loc2_ == 15)
         {
            param1.statusEffect = Status.STAGGER;
            param1.statusDegree = 4;
         }
         if(_loc2_ == 16)
         {
            param1.statusEffect = Status.ENCHANTED;
            param1.statusDegree = 1;
         }
         if(_loc2_ == 17)
         {
            param1.statusEffect = Status.INVISIBLE;
            param1.statusDegree = 1;
         }
         if(_loc2_ == 18)
         {
            param1.statusEffect = Status.BAD_LUCK;
            param1.statusDegree = 9;
         }
         if(_loc2_ == 19)
         {
            param1.statusEffect = Status.SCORCHED;
            param1.statusDegree = 3;
         }
      }
      
      public static function switchEquipStats() : *
      {
         var equip:Equip = null;
         var stat:String = null;
         if(Options.altEquipStats == equipAltStats)
         {
            return;
         }
         for each(equip in Equips.ALL_EQUIPS)
         {
            try
            {
               EquipsAlt[equip.SID].HP;
            }
            catch(e:Error)
            {
               continue;
            }
            for each(stat in Stats.STATS.concat(["element","elementDegree","statusEffect","statusDegree","statusChance","buffEffect","buffChance","buffDegree","specials","elementalResistance","statusResistance"]))
            {
               if(!equipAltStats)
               {
                  swapStat(EquipsAlt[equip.SID],equip,stat);
               }
               else
               {
                  swapStat(equip,EquipsAlt[equip.SID],stat);
               }
            }
            if(EquipsAlt[equip.SID].materials)
            {
               if(EquipsAlt[equip.SID].materials[0])
               {
                  swapMaterial(EquipsAlt[equip.SID],equip,0);
               }
               if(EquipsAlt[equip.SID].materials[1])
               {
                  swapMaterial(EquipsAlt[equip.SID],equip,1);
               }
               if(EquipsAlt[equip.SID].materials[2])
               {
                  swapMaterial(EquipsAlt[equip.SID],equip,2);
               }
               if(EquipsAlt[equip.SID].materials[3])
               {
                  swapMaterial(EquipsAlt[equip.SID],equip,3);
               }
            }
         }
         equipAltStats = !equipAltStats;
      }
      
      public static function swapStat(param1:Equip, param2:Equip, param3:String) : *
      {
         temp = param1[param3];
         param1[param3] = param2[param3];
         param2[param3] = temp;
      }
      
      public static function swapMaterial(param1:Equip, param2:Equip, param3:int) : *
      {
         temp = param1.materials[param3];
         param1.materials[param3] = param2.materials[param3];
         param2.materials[param3] = temp;
      }
      
      public function backupStatusResistance() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in Status.RESISTANCE)
         {
            if(this.statusResistance[_loc1_] == Equips.long50)
            {
               this.statusResistance[_loc1_] = Equips._long50;
            }
            if(this.statusResistance[_loc1_] == Equips.long100)
            {
               this.statusResistance[_loc1_] = Equips._long100;
            }
            if(this.statusResistance[_loc1_] == Equips.long150)
            {
               this.statusResistance[_loc1_] = Equips._long150;
            }
            if(this.statusResistance[_loc1_] == Equips.long200)
            {
               this.statusResistance[_loc1_] = Equips._long200;
            }
            if(this.statusResistance[_loc1_] == Equips.short30)
            {
               this.statusResistance[_loc1_] = Equips._short30;
            }
            if(this.statusResistance[_loc1_] == Equips.short50)
            {
               this.statusResistance[_loc1_] = Equips._short50;
            }
            if(this.statusResistance[_loc1_] == Equips.short100)
            {
               this.statusResistance[_loc1_] = Equips._short100;
            }
            if(this.statusResistance[_loc1_] == Equips.down30)
            {
               this.statusResistance[_loc1_] = Equips._down30;
            }
            if(this.statusResistance[_loc1_] == Equips.down50)
            {
               this.statusResistance[_loc1_] = Equips._down50;
            }
         }
      }
      
      public function upgradable() : *
      {
         return !(this.level == 5 || this.level == 3 && this.type == FLAIR);
      }
      
      public function hasMaterials() : Boolean
      {
         if(this.level == 5 || this.type == FLAIR && this.level == 3)
         {
            return true;
         }
         if(this.materials.length == 0)
         {
            return false;
         }
         var _loc1_:Boolean = true;
         var _loc2_:int = this.level - 1;
         var _loc3_:int = 0;
         while(_loc3_ < this.materials[_loc2_].length)
         {
            if(this.materials[_loc2_][_loc3_] is Summon)
            {
               if(Summons.OWNED_SUMMONS.indexOf(this.materials[_loc2_][_loc3_]) == -1)
               {
                  _loc1_ = false;
               }
            }
            else if(this.materials[_loc2_][_loc3_ + 1] > this.materials[_loc2_][_loc3_].quantity)
            {
               _loc1_ = false;
            }
            _loc3_ += 2;
         }
         return _loc1_;
      }
      
      public function equipped(param1:int = 0) : *
      {
         var _loc2_:Player = null;
         var _loc3_:Equip = null;
         if(this == Equips.empty)
         {
            return false;
         }
         for each(_loc2_ in [Players.player1,Players.player2,Players.player3,Players.player4,Players.player5])
         {
            if(!(param1 != 0 && param1 == _loc2_.playerNo))
            {
               for each(_loc3_ in [_loc2_.weapon,_loc2_.hat,_loc2_.armor,_loc2_.flair1,_loc2_.flair2,_loc2_.flair3])
               {
                  if(this == _loc3_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function equipped2(param1:Array, param2:Player) : *
      {
         var _loc3_:Equip = null;
         var _loc4_:Player = null;
         var _loc5_:Boolean = false;
         for each(_loc3_ in param1)
         {
            if(this == _loc3_)
            {
               return true;
            }
         }
         for each(_loc4_ in [Players.player1,Players.player2,Players.player3,Players.player4,Players.player5])
         {
            for each(_loc3_ in [_loc4_.weapon,_loc4_.hat,_loc4_.armor,_loc4_.flair1,_loc4_.flair2,_loc4_.flair3])
            {
               _loc5_ = false;
               if(_loc4_ == param2)
               {
                  if(Boolean(param1[0]) && _loc3_ == _loc4_.weapon)
                  {
                     _loc5_ = true;
                  }
                  if(Boolean(param1[2]) && _loc3_ == _loc4_.hat)
                  {
                     _loc5_ = true;
                  }
                  if(Boolean(param1[4]) && _loc3_ == _loc4_.armor)
                  {
                     _loc5_ = true;
                  }
                  if(Boolean(param1[1]) && _loc3_ == _loc4_.flair1)
                  {
                     _loc5_ = true;
                  }
                  if(Boolean(param1[3]) && _loc3_ == _loc4_.flair2)
                  {
                     _loc5_ = true;
                  }
                  if(Boolean(param1[5]) && _loc3_ == _loc4_.flair3)
                  {
                     _loc5_ = true;
                  }
               }
               if(this == _loc3_ && !_loc5_)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function upgradeCost() : int
      {
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.materials.length)
         {
            _loc3_ = 0;
            while(_loc3_ < this.materials[_loc2_].length)
            {
               _loc1_ += this.materials[_loc2_][_loc3_].cost * this.materials[_loc2_][_loc3_ + 1];
               _loc3_ += 2;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getAttack(param1:Boolean = false) : Number
      {
         if(param1)
         {
            return this.attack[this.level];
         }
         return this.attack[this.level - 1];
      }
      
      public function getDefence(param1:Boolean = false) : Number
      {
         if(param1)
         {
            return this.defence[this.level];
         }
         return this.defence[this.level - 1];
      }
      
      public function getMagicAttack(param1:Boolean = false) : Number
      {
         if(param1)
         {
            return this.magicAttack[this.level];
         }
         return this.magicAttack[this.level - 1];
      }
      
      public function getMagicDefence(param1:Boolean = false) : Number
      {
         if(param1)
         {
            return this.magicDefence[this.level];
         }
         return this.magicDefence[this.level - 1];
      }
      
      public function getAccuracy(param1:Boolean = false) : Number
      {
         if(param1)
         {
            return this.accuracy[this.level];
         }
         return this.accuracy[this.level - 1];
      }
      
      public function getEvade(param1:Boolean = false) : Number
      {
         if(param1)
         {
            return this.evade[this.level];
         }
         return this.evade[this.level - 1];
      }
      
      public function getHP(param1:Boolean = false) : Number
      {
         if(param1)
         {
            return this.HP[this.level];
         }
         return this.HP[this.level - 1];
      }
      
      public function getMP(param1:Boolean = false) : Number
      {
         if(param1)
         {
            return this.MP[this.level];
         }
         return this.MP[this.level - 1];
      }
      
      public function getStat(param1:String) : Number
      {
         if(!this[param1])
         {
            return 0;
         }
         if(this[param1].length == 1 || this[param1].length < this.level)
         {
            return this[param1][0];
         }
         return this[param1][this.level - 1];
      }
      
      public function setStat(param1:*, param2:Array) : *
      {
         this[param1] = param2;
      }
      
      public function toString() : String
      {
         return "\nName: " + this.name + "\nType: " + this.type + "\nLevel: " + this.level + "\nAttack: " + this.getStat("attack") + "\nDefence: " + this.getStat("defence") + "\nMagic Attack: " + this.getStat("magicAttack") + "\nMagic Defence: " + this.getStat("magicDefence") + "\nAccuracy: " + this.getStat("accuracy") + "\nEvade: " + this.getStat("evade") + "\nUpgrades: " + this.materials + "\n" + this.printResistance();
      }
      
      public function printResistance(param1:int = 0) : String
      {
         var _loc3_:String = null;
         var _loc2_:String = "\nResistance: ";
         for each(_loc3_ in Element.ELEMENTS)
         {
            if(this.elementalResistance[_loc3_][this.level - 1 + param1])
            {
               _loc2_ += "\n\t" + this.cap(_loc3_ + ": " + this.elementalResistance[_loc3_][this.level - 1 + param1]);
            }
         }
         for each(_loc3_ in Status.RESISTANCE)
         {
            if(this.statusResistance[_loc3_][this.level - 1 + param1])
            {
               _loc2_ += "\n\t" + this.cap(_loc3_ + ": " + this.statusResistance[_loc3_][this.level - 1 + param1]);
            }
         }
         for each(_loc3_ in Stats.STATS)
         {
            if(this.buffResistance[_loc3_][this.level - 1 + param1])
            {
               _loc2_ += "\n\t" + this.cap(_loc3_ + ": " + this.buffResistance[_loc3_][this.level - 1 + param1]);
            }
         }
         return _loc2_;
      }
      
      public function getResistance(param1:int = 0) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         for each(_loc4_ in Element.ELEMENTS)
         {
            if(this.elementalResistance[_loc4_][this.level - 1 + param1])
            {
               _loc2_[_loc3_] = [_loc4_,this.elementalResistance[_loc4_][this.level - 1 + param1]];
               _loc3_++;
            }
         }
         for each(_loc4_ in Status.RESISTANCE)
         {
            if(this.statusResistance[_loc4_][this.level - 1 + param1])
            {
               _loc2_[_loc3_] = [_loc4_,this.statusResistance[_loc4_][this.level - 1 + param1]];
               _loc3_++;
            }
         }
         for each(_loc4_ in Stats.STATS)
         {
            if(this.buffResistance[_loc4_][this.level - 1 + param1])
            {
               _loc2_[_loc3_] = [_loc4_,this.buffResistance[_loc4_][this.level - 1 + param1]];
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      public function cap(param1:String) : String
      {
         return param1.charAt(0).toUpperCase() + param1.substring(1);
      }
      
      public function exists(param1:*) : Boolean
      {
         return !(param1 == undefined || param1 == 0);
      }
   }
}

