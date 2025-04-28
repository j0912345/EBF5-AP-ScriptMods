package foes
{
   public class BatSnow extends Foe
   {
      public static var iconInfo:Array = [15,3];
      
      public function BatSnow(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Bat";
         graphicScale = 67;
         skin = 4 + Math.random() * 3;
         icon = 1119;
         catchRate = Catching.BAT_RATE;
         boxSize = 1;
         HP = 90;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.6;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 0;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 0.5;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = -1;
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.HOLY] = 0;
            elementalResistance[Element.WIND] = 0.5;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1.5;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 2;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         EXP = 11;
         AP = 1.2;
         SP = 1.2;
         gold = 9;
         dropList = [[Items.snowball,25],[Items.leather,15],[Items.glass,5],[Items.water,10]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 4;
         if(!Battle.selectedTarget)
         {
            _loc1_ = 2;
         }
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = Math.random() * 2;
            if(!Battle.selectedTarget)
            {
               _loc1_ = -1;
            }
         }
         if(_loc1_ == -1)
         {
            graphic.animate("evade");
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("attack5");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(25,Element.WIND,50);
      }
      
      public function attack5() : *
      {
         Skills.basicFoeAttack(35,Element.ICE,100);
      }
      
      public function attack4() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeAttack(10,Element.ICE,50,Status.CONFUSE,2,isHard ? 10 : 0);
      }
      
      public function magic1() : *
      {
         castSpell("Whirlwind");
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.25);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("attack5");
      }
   }
}

