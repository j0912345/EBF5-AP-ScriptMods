package
{
   public class Card
   {
      public var effect:String;
      
      public var element:String;
      
      public var cost:int;
      
      public var quantity:int;
      
      public var power:int;
      
      public var icon:int;
      
      public var SID:String;
      
      public var name:String;
      
      public var description:String;
      
      public function Card(param1:Object)
      {
         super();
         this.effect = param1.effect;
         this.element = param1.element;
         this.power = param1.power;
         this.quantity = 0;
         if(!param1.cost)
         {
            this.cost = 0;
         }
         else
         {
            this.cost = param1.cost;
         }
      }
   }
}

