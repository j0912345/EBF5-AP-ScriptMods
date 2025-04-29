package
{
   public class Item
   {
      public static var HP:String = "HP";
      
      public static var COOLDOWN:String = "cooldown";
      
      public static var HP_COOLDOWN:String = "HP & cooldown";
      
      public static var MISC:String = "Misc";
      
      public var name:String;
      
      public var description:String;
      
      public var icon:int;
      
      public var count:int;
      
      public var type:String;
      
      public var subType:String;
      
      public var target:String;
      
      public var stuffing:int = 0;
      
      public var cost:int;
      
      public var power:int;
      
      public var subPower:int;
      
      public var quantity:int;
      
      public var purchased:int;
      
      public var alternative:Spell;
      
      public var SID:String;
      
      public function Item(param1:Object)
      {
         super();
         if(param1.stuffing)
         {
            this.stuffing = param1.stuffing;
         }
         this.SID = param1.SID;
         this.name = param1.name;
         this.description = param1.description;
         this.type = param1.type;
         this.subType = param1.subType;
         this.target = param1.target;
         this.power = param1.power;
         this.subPower = param1.subPower;
         this.cost = param1.cost;
         this.icon = param1.icon;
         this.quantity = 0;
         this.count = 0;
      }
      
      public function toString() : String
      {
         return "" + "" + "\n" + "\nType: " + this.type + "\nSubType: " + this.subType + "\nPower: " + this.power + "\nCost: " + this.cost + "\nIcon: " + this.icon + "\nQuantity: " + this.quantity;
      }
   }
}

