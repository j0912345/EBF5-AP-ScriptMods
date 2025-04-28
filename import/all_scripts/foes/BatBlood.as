package foes
{
   public class BatBlood extends Foe
   {
      public static var iconInfo:Array = [15,2];
      
      public var drainage:int = 0;
      
      public function BatBlood(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Bat";
         graphicScale = 67;
         skin = 7 + Math.random() * 3;
         icon = 1118;
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
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = -0.5;
            elementalResistance[Element.DARK] = 0.5;
            elementalResistance[Element.BIO] = 0.5;
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
         dropList = [[Items.leather,15],[Items.raspberries,10],[Items.claw,5],[Items.watermelon,5]];
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
         var _loc1_:int = Math.random() * 3;
         if(!Battle.selectedTarget)
         {
            _loc1_ = 2;
         }
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = 1;
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
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(25,Element.WIND,50);
      }
      
      public function attack2() : *
      {
         this.drainage = 0;
         this.drainage = sendHit(new DamageObject({
            "damage":35,
            "element":Element.BIO,
            "elementDegree":50,
            "statusEffect":Status.VIRUS,
            "statusDegree":2,
            "statusChance":(isHard ? 25 : 10)
         }));
      }
      
      public function drain() : *
      {
         if(this.drainage > 0)
         {
            getHeal({
               "damage":maxHP * (isHard ? 0.5 : 0.25),
               "randomness":10
            });
         }
         else
         {
            graphic.k();
         }
         this.drainage = 0;
      }
      
      public function attack3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeAttack(10,Element.WIND,50,Status.CONFUSE,2,isHard ? 10 : 0);
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
         graphic.setXY();
         graphic.animate("attack2");
      }
   }
}

