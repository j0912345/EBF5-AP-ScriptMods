package
{
   public class NPC
   {
      public static var SKIN:int = 0;
      
      public static var DYE:int = 1;
      
      public static var HAIR:int = 2;
      
      public static var FACE:int = 3;
      
      public static var SPECS:int = 4;
      
      public static var BEARD:int = 5;
      
      public static var HAT:int = 6;
      
      public static var BODY:int = 7;
      
      public static var BACK:int = 8;
      
      public static var SHOES:int = 9;
      
      public static var ITEM1:int = 10;
      
      public static var ITEM2:int = 11;
      
      public static var COLORS:Array = [13421772,8882055,7368302,4473924,16764057,16763955,16750848,16724736,16737792,11170363,8736814,6493204,9306626,15682379,16745861,14574495,13369344,7129900,6534731,8164156,13434828,3068626,52479,4023424,39423,4475784,6697830,16703386];
      
      public var name:String;
      
      public var nameID:String;
      
      public var skin:Array;
      
      public var dialogue:Array;
      
      public var dialogue2:Array;
      
      public var quest:Array;
      
      public var dialogueID:String;
      
      public var dialogue2ID:String;
      
      public var event:Object;
      
      public var event2:Object;
      
      public var rewards:Array;
      
      public var facing:String;
      
      public var flag:Boolean;
      
      public var flag2:Boolean;
      
      public var flag3:int;
      
      public var location:String;
      
      public var sound:String;
      
      public function NPC(param1:String, param2:String, param3:Array, param4:String, param5:String = null, param6:String = null, param7:Object = null, param8:Array = null, param9:Array = null, param10:Object = null, param11:int = -1)
      {
         super();
         if(param1 == "")
         {
            this.name = "";
         }
         else
         {
            this.nameID = param1;
         }
         this.skin = param3;
         this.facing = param4;
         this.dialogueID = param5;
         this.dialogue2ID = param6;
         this.event = param7;
         this.quest = param8;
         this.rewards = param9;
         this.event2 = param10;
         this.flag3 = param11;
         this.sound = param2;
         this.init();
      }
      
      public function checkQuest(param1:Boolean = true) : Boolean
      {
         if(this.quest.length == 0)
         {
            return false;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.quest.length)
         {
            if(this.quest[_loc2_] is Summon)
            {
               if(Summons.OWNED_SUMMONS.indexOf(this.quest[_loc2_]) == -1)
               {
                  return false;
               }
            }
            else if((this.quest[_loc2_] as Item).quantity < this.quest[_loc2_ + 1])
            {
               return false;
            }
            _loc2_ += 2;
         }
         if(!param1)
         {
            return true;
         }
         _loc2_ = 0;
         while(_loc2_ < this.quest.length)
         {
            if(this.quest[_loc2_] is Summon)
            {
               Summons.loseSummon(this.quest[_loc2_]);
            }
            else
            {
               (this.quest[_loc2_] as Item).quantity -= this.quest[_loc2_ + 1];
            }
            _loc2_ += 2;
         }
         return true;
      }
      
      public function init() : *
      {
         this.flag = true;
         this.flag2 = false;
      }
   }
}

