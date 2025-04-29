package
{
   public class Spell
   {
      public static var NONE:String = "none";
      
      public static var BERSERKABLE:String = "berserkable";
      
      public static var NO_DEF_BUFFS:String = "no def buffs";
      
      public static var NO_ATK_BUFFS:String = "no atk buffs";
      
      public static var STATUS_DAMAGE:String = "status damage";
      
      public static var SUMMON:Boolean = false;
      
      public static var SUMMON2:Boolean = false;
      
      public var temp:int = 0;
      
      public var type:String;
      
      public var target:String;
      
      public var aim:String;
      
      public var MC:String;
      
      public var damage:Array;
      
      public var randomness:int;
      
      public var element:String;
      
      public var elementDegree:int;
      
      public var statusEffect:String;
      
      public var statusChance:Array;
      
      public var statusDegree:Array;
      
      public var buffEffect:String;
      
      public var buffChance:Array;
      
      public var buffDegree:Array;
      
      public var accuracy:int;
      
      public var critical:int;
      
      public var statusOnly:Boolean;
      
      public var bonusChance:Number;
      
      public var bonus:String;
      
      public var jump:String;
      
      public var upgradesInto:Spell;
      
      public var upgradesFrom:Spell;
      
      public var name:String;
      
      public var description:String;
      
      public var icon:int;
      
      public var animation:Array;
      
      public var animation2:Array;
      
      public var dependencies:Array;
      
      public var ID:int;
      
      public var SID:String;
      
      public var uses:int;
      
      public var cost:int = 0;
      
      public var cooldownTime:int = 0;
      
      public var cooldown:int = 0;
      
      public var owned:Boolean;
      
      public var level:int;
      
      public var AP:Array;
      
      public var MP:Array;
      
      public var limit:Boolean = false;
      
      public var multiMC:Boolean;
      
      public var alternative:Spell;
      
      public var unsyphonable:Boolean;
      
      public function Spell(param1:Object)
      {
         super();
         this.uses = 0;
         this.owned = true;
         this.name = param1.name;
         this.aim = param1.aim;
         this.icon = param1.icon;
         this.AP = param1.AP;
         this.MP = param1.MP;
         this.animation = param1.animation;
         this.animation2 = param1.animation2;
         this.dependencies = param1.dependencies;
         this.jump = param1.jump;
         this.unsyphonable = param1.unsyphonable;
         this.level = 0;
         if(param1.SID)
         {
            this.SID = param1.SID;
         }
         if(!this.MP)
         {
            this.MP = [0];
         }
         if(param1.MC)
         {
            this.MC = param1.MC;
         }
         else
         {
            this.MC = "";
         }
         if(param1.type)
         {
            this.type = param1.type;
         }
         else
         {
            this.type = Stats.ATTACK;
         }
         if(param1.target)
         {
            this.target = param1.target;
         }
         else
         {
            this.target = Target.ONE_ENEMY;
         }
         if(param1.damage)
         {
            this.damage = param1.damage;
         }
         else
         {
            this.damage = [0,0,0,0,0,0,0,0];
         }
         if(param1.randomness != undefined)
         {
            this.randomness = param1.randomness;
         }
         else
         {
            this.randomness = 10;
         }
         if(param1.element)
         {
            this.element = param1.element;
         }
         else
         {
            this.element = Element.NONE;
         }
         if(param1.elementDegree)
         {
            this.elementDegree = param1.elementDegree;
         }
         else
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
         if(param1.statusChance)
         {
            this.statusChance = param1.statusChance;
         }
         else
         {
            this.statusChance = [0];
         }
         if(param1.statusDegree)
         {
            this.statusDegree = param1.statusDegree;
         }
         else
         {
            this.statusDegree = [0];
         }
         if(param1.buffEffect)
         {
            this.buffEffect = param1.buffEffect;
         }
         else
         {
            this.buffEffect = Stats.NONE;
         }
         if(param1.buffChance)
         {
            this.buffChance = param1.buffChance;
         }
         else
         {
            this.buffChance = [0];
         }
         if(param1.buffDegree)
         {
            this.buffDegree = param1.buffDegree;
         }
         else
         {
            this.buffDegree = [0];
         }
         if(param1.accuracy)
         {
            this.accuracy = param1.accuracy;
         }
         else
         {
            this.accuracy = 100;
         }
         if(param1.critical != undefined)
         {
            this.critical = param1.critical;
         }
         else
         {
            this.critical = 10;
         }
         if(param1.statusOnly)
         {
            this.statusOnly = param1.statusOnly;
         }
         else
         {
            this.statusOnly = false;
         }
         if(param1.dependencies)
         {
            this.dependencies = param1.dependencies;
         }
         else
         {
            this.dependencies = [];
         }
         if(param1.bonusChance)
         {
            this.bonusChance = param1.bonusChance;
         }
         else
         {
            this.bonusChance = 0;
         }
         if(param1.bonus)
         {
            this.bonus = param1.bonus;
         }
         else
         {
            this.bonus = Spell.NONE;
         }
         if(param1.cooldownTime)
         {
            this.cooldownTime = param1.cooldownTime;
         }
         else
         {
            this.cooldownTime = 0;
         }
         if(param1.limit)
         {
            this.limit = param1.limit;
         }
         else
         {
            this.limit = false;
         }
         if(param1.multiMC)
         {
            this.multiMC = true;
         }
         else
         {
            this.multiMC = false;
         }
         if(param1.alternative)
         {
            this.alternative = param1.alternative;
         }
         if(param1.upgrades)
         {
            this.upgradesInto = param1.upgrades;
         }
      }
      
      public static function getUpgrades(param1:Spell) : Spell
      {
         var _loc2_:Spell = param1;
         if(Boolean(_loc2_.upgradesInto) && _loc2_.upgradesInto.level != 0)
         {
            _loc2_ = _loc2_.upgradesInto;
         }
         if(Boolean(_loc2_.upgradesInto) && _loc2_.upgradesInto.level != 0)
         {
            _loc2_ = _loc2_.upgradesInto;
         }
         return _loc2_;
      }
      
      public function reset() : *
      {
         this.level = 0;
      }
      
      public function getStats(param1:Number = 100, param2:int = -1) : Object
      {
         var _loc3_:int = this.level - 1;
         if(this.level == 0 && param2 == -1)
         {
            _loc3_ = 0;
         }
         if(param2 == 0)
         {
            param2 = 1;
         }
         if(this.upgradesInto && this.upgradesInto.level != 0 && Boolean(this.upgradesInto.alternative))
         {
            _loc3_ = this.level + this.upgradesInto.level - 1;
         }
         if(param2 != -1)
         {
            _loc3_ = param2 - 1;
         }
         if(!Skills.user || !Skills.user.isPlayer || Battle.bonusSpellFlag)
         {
            _loc3_ = 0;
         }
         var _loc4_:Object = {};
         _loc4_.type = this.type;
         _loc4_.damage = this.damage[_loc3_] * param1 / 100;
         _loc4_.randomness = this.randomness;
         _loc4_.element = this.element;
         if(this.elementDegree)
         {
            _loc4_.elementDegree = this.elementDegree;
         }
         else
         {
            this.elementDegree = 100;
         }
         _loc4_.statusEffect = this.statusEffect;
         if(this.statusChance.length == 1)
         {
            _loc4_.statusChance = this.statusChance[0];
         }
         else
         {
            _loc4_.statusChance = this.statusChance[_loc3_];
         }
         if(this.statusDegree.length == 1)
         {
            _loc4_.statusDegree = this.statusDegree[0];
         }
         else
         {
            _loc4_.statusDegree = this.statusDegree[_loc3_];
         }
         _loc4_.buffEffect = this.buffEffect;
         if(this.buffChance.length == 1)
         {
            _loc4_.buffChance = this.buffChance[0];
         }
         else
         {
            _loc4_.buffChance = this.buffChance[_loc3_];
         }
         if(this.buffDegree.length == 1)
         {
            _loc4_.buffDegree = this.buffDegree[0];
         }
         else
         {
            _loc4_.buffDegree = this.buffDegree[_loc3_];
         }
         _loc4_.accuracy = this.accuracy;
         _loc4_.critical = this.critical;
         _loc4_.statusOnly = this.statusOnly;
         _loc4_.MP = this.MP[_loc3_];
         _loc4_.bonus = this.bonus;
         return _loc4_;
      }
      
      public function getDisplayableLevel() : int
      {
         var _loc1_:int = this.level;
         if(this.upgradesFrom)
         {
            _loc1_ += this.upgradesFrom.level;
            if(this.upgradesFrom.upgradesFrom)
            {
               _loc1_ += this.upgradesFrom.upgradesFrom.level;
            }
         }
         return _loc1_;
      }
      
      public function getBase() : Spell
      {
         var _loc1_:Spell = this;
         if(_loc1_.upgradesFrom)
         {
            _loc1_ = _loc1_.upgradesFrom;
         }
         if(_loc1_.upgradesFrom)
         {
            _loc1_ = _loc1_.upgradesFrom;
         }
         return _loc1_;
      }
   }
}

