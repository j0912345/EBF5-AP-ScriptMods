package
{
   public class Buff
   {
      public static var BUFFS:Array = [Stats.HP,Stats.ATTACK,Stats.MAGIC_ATTACK,Stats.ACCURACY,Stats.DEFENCE,Stats.MAGIC_DEFENCE,Stats.EVADE,Stats.MP];
      
      public static var BUFFS_SHORT:Array = [Stats.ATTACK,Stats.MAGIC_ATTACK,Stats.ACCURACY,Stats.DEFENCE,Stats.MAGIC_DEFENCE,Stats.EVADE];
      
      public static var descriptions:Array = [];
      
      public function Buff()
      {
         super();
      }
      
      public static function getBuffHolder() : Object
      {
         var _loc2_:String = null;
         var _loc1_:* = new Object();
         for each(_loc2_ in BUFFS)
         {
            _loc1_[_loc2_] = 100;
         }
         return _loc1_;
      }
   }
}

