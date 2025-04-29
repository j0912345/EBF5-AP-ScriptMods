package
{
   public class DamageObject
   {
      public var type:String;
      
      public var damage:Number;
      
      public var baseDamage:Number;
      
      public var randomness:int;
      
      public var element:String;
      
      public var elementDegree:int;
      
      public var statusEffect:String;
      
      public var statusChance:int;
      
      public var statusDegree:int;
      
      public var buffEffect:String;
      
      public var buffChance:int;
      
      public var buffDegree:int;
      
      public var accuracy:Number;
      
      public var critical:int;
      
      public var statusOnly:Boolean;
      
      public var isCounter:Boolean;
      
      public var sender:Target;
      
      public var bonus:String;
      
      public var noStack:String;
      
      public var ignoreBuffs:Boolean;
      
      public function DamageObject(param1:Object)
      {
         super();
         if(param1.type)
         {
            this.type = param1.type;
         }
         else
         {
            this.type = Stats.ATTACK;
         }
         if(param1.damage)
         {
            this.damage = param1.damage;
         }
         else
         {
            this.damage = 0;
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
            this.elementDegree = 0;
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
            this.statusChance = 0;
         }
         if(param1.statusDegree)
         {
            this.statusDegree = param1.statusDegree;
         }
         else
         {
            this.statusDegree = 0;
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
            this.buffChance = 0;
         }
         if(param1.buffDegree)
         {
            this.buffDegree = param1.buffDegree;
         }
         else
         {
            this.buffDegree = 0;
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
         if(param1.isCounter)
         {
            this.isCounter = param1.isCounter;
         }
         else
         {
            this.isCounter = false;
         }
         if(param1.sender)
         {
            this.sender = param1.sender;
         }
         else
         {
            this.sender = null;
         }
         if(param1.bonus)
         {
            this.bonus = param1.bonus;
         }
         else
         {
            this.bonus = Spell.NONE;
         }
         if(param1.ignoreBuffs)
         {
            this.ignoreBuffs = param1.ignoreBuffs;
         }
         else
         {
            this.ignoreBuffs = false;
         }
         if(this.statusOnly)
         {
            this.critical = 0;
         }
      }
      
      public function toString() : String
      {
         return "Damage Object sent from " + this.sender + ": " + "\nType: " + this.type + "  Damage: " + this.damage + " +- " + this.randomness / 2 + "%" + "\nElement: " + this.elementDegree + "% " + this.element + "\nStatus: " + this.statusEffect + "  Chance: " + this.statusChance + "%" + "  Power: " + this.statusDegree + "\nDebuff: " + this.buffEffect + "  Chance: " + this.buffChance + "%" + "  Power: " + this.buffDegree + "\nAccuracy: " + this.accuracy + "  Critical Hit Chance: " + this.critical + "%" + "\nBonus: " + this.bonus;
      }
   }
}

