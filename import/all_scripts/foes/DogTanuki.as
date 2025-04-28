package foes
{
   public class DogTanuki extends Foe
   {
      public static var iconInfo:Array = [2,18];
      
      public function DogTanuki(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Dog";
         graphicScale = 70;
         skin = 4;
         icon = 1133;
         catchRate = Catching.DOG_RATE;
         boxSize = 2;
         HP = 132;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = -0.5;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.WIND] = 0.5;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.HOLY] = -0.5;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0.5;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         EXP = 15;
         AP = 2.1;
         SP = 2.1;
         gold = 12;
         dropList = [[Items.fur,33],[Items.leather,20],[Items.beer,20],[Items.magma,10]];
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
         if(isScared(BEASTS))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         if(!Battle.selectedTarget)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("special4");
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if((Boolean(Battle.selectedTarget.status[Status.BURN]) || Boolean(Battle.selectedTarget.status[Status.SCORCHED])) && Battle.playerCount() > 1)
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         }
         var _loc1_:int = Math.random() * 3;
         if(getHpPercent() < 50 && Math.random() > 0.33)
         {
            _loc1_ = 3;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 2;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special4");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(19);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(16);
      }
      
      public function special4() : *
      {
         getHeal({
            "damage":maxHP / 2,
            "randomness":0
         });
         buff(Stats.ACCURACY,-15,true);
      }
      
      public function special1() : *
      {
         Skills.basicFoeAttack(28,Element.FIRE,100,Status.BURN,3,isHard ? 66 : 33);
      }
      
      public function specialEffect() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.BURN,3);
         }
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
         graphic.animate("attack1");
      }
   }
}

