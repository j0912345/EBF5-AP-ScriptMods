package
{
   public class Status
   {
      public static const NONE:String = "none";
      
      public static const REGEN:String = "regenerate";
      
      public static const AUTOLIFE:String = "autorevive";
      
      public static const MORALE:String = "morale";
      
      public static const BRAVE:String = "brave";
      
      public static const HASTE:String = "haste";
      
      public static const LOVED:String = "loved";
      
      public static const GOOD_LUCK:String = "goodluck";
      
      public static const WEAPON:String = "weapon";
      
      public static const SURRENDER:String = "surrender";
      
      public static const DOOM:String = "doom";
      
      public static const STAGGER:String = "stagger";
      
      public static const POISON:String = "poison";
      
      public static const VIRUS:String = "virus";
      
      public static const BURN:String = "burn";
      
      public static const SCORCHED:String = "scorched";
      
      public static const FREEZE:String = "freeze";
      
      public static const CURSE:String = "curse";
      
      public static const WEAKEN:String = "weak";
      
      public static const TIRED:String = "tired";
      
      public static const STUN:String = "stun";
      
      public static const SYPHON:String = "syphon";
      
      public static const CONFUSE:String = "confused";
      
      public static const BAD_LUCK:String = "badluck";
      
      public static const RANDOM:String = "random";
      
      public static const CRITICAL:String = "critical";
      
      public static const CRITICAL2:String = "critical2";
      
      public static const CRITICAL3:String = "critical3";
      
      public static const PUSH_OUT:String = "push out";
      
      public static const BLESS:String = "bless";
      
      public static const DEFEND:String = "defend";
      
      public static const CHARGE:String = "charge";
      
      public static const TARGET:String = "target";
      
      public static const HUNGRY:String = "hungry";
      
      public static const STUFFED:String = "stuffed";
      
      public static const DISPEL:String = "dispel";
      
      public static const DISABLE:String = "disable";
      
      public static const DEATH:String = "death";
      
      public static const ENCHANTED:String = "enchanted";
      
      public static const INVISIBLE:String = "invisible";
      
      public static const LIGHT:String = "light";
      
      public static const HEAVY:String = "heavy";
      
      public static const WET:String = "wet";
      
      public static const DRY:String = "dry";
      
      public static const CHILL:String = "chill";
      
      public static const SHROUD:String = "shrouded";
      
      public static const BERSERK:String = "berserk";
      
      public static const POSITIVES:Array = [ENCHANTED,INVISIBLE,DEFEND,CHARGE,REGEN,AUTOLIFE,BLESS,BERSERK,MORALE,BRAVE,LOVED,HASTE,GOOD_LUCK,STUFFED];
      
      public static const NEGATIVES:Array = [DEATH,DOOM,STAGGER,POISON,VIRUS,BURN,SCORCHED,FREEZE,CURSE,WEAKEN,TIRED,STUN,SYPHON,DISPEL,CONFUSE,BAD_LUCK,TARGET,DISABLE,HUNGRY];
      
      public static const NEUTRALS:Array = [DRY,LIGHT,HEAVY,CHILL,WET,SHROUD,SURRENDER,PUSH_OUT];
      
      public static const PURIFYABLE:Array = [POISON,VIRUS,BURN,SCORCHED,CURSE,WEAKEN,TIRED,STUN,SYPHON,BAD_LUCK,STAGGER,CONFUSE,BERSERK,DOOM];
      
      public static const WORMABLE:Array = [DRY,WET,CHILL,LIGHT,HEAVY,ENCHANTED,INVISIBLE];
      
      public static const LIST:Array = [DEFEND,CHARGE,REGEN,HASTE,LOVED,GOOD_LUCK,AUTOLIFE,BLESS,BERSERK,MORALE,BRAVE,POISON,BURN,SYPHON,DOOM,FREEZE,CHILL,DRY,SHROUD,TARGET,CONFUSE,VIRUS,SCORCHED,LIGHT,HEAVY,STUFFED,HUNGRY,INVISIBLE,ENCHANTED,null,BAD_LUCK,DISABLE,STAGGER,WET,CURSE,WEAKEN,TIRED,STUN,DISPEL,SURRENDER,CRITICAL,CRITICAL2,CRITICAL3];
      
      public static const BURN_SCORCH:String = "burn";
      
      public static const FREEZE_CHILL:String = "freeze";
      
      public static const POISON_VIRUS:String = "poison";
      
      public static const DRY_WET:String = "wet";
      
      public static const LIGHT_HEAVY:String = "weight";
      
      public static const WEAKENED_TIRED:String = "weak";
      
      public static const STAGGER_CONFUSE:String = "stagger";
      
      public static const SYPHON_DISABLE:String = "syphon";
      
      public static const DOOM_DEATH:String = "death";
      
      public static const CURSE_BAD_LUCK:String = "curse";
      
      public static const RESISTANCE:Array = [BURN_SCORCH,FREEZE_CHILL,WEAKENED_TIRED,POISON_VIRUS,DRY_WET,LIGHT_HEAVY,STUN,STAGGER_CONFUSE,CURSE_BAD_LUCK,SYPHON_DISABLE,DISPEL,DOOM_DEATH];
      
      public static var resistanceNames:Array = [];
      
      public static var descriptions:Array = [];
      
      public function Status()
      {
         super();
      }
      
      public static function getStatusHolder(param1:int) : Object
      {
         var _loc2_:* = new Object();
         initBadStatus(_loc2_,param1);
         initGoodStatus(_loc2_,param1);
         initNeutralStatus(_loc2_,param1);
         return _loc2_;
      }
      
      public static function initBadStatus(param1:Object, param2:int) : *
      {
         var _loc3_:String = null;
         for each(_loc3_ in NEGATIVES)
         {
            param1[_loc3_] = param2;
         }
      }
      
      public static function initGoodStatus(param1:Object, param2:int) : *
      {
         var _loc3_:String = null;
         for each(_loc3_ in POSITIVES)
         {
            param1[_loc3_] = param2;
         }
      }
      
      public static function initNeutralStatus(param1:Object, param2:int) : *
      {
         var _loc3_:String = null;
         for each(_loc3_ in NEUTRALS)
         {
            param1[_loc3_] = param2;
         }
      }
   }
}

