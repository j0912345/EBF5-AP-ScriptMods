package foes
{
   public class DogZap extends Foe
   {
      public static var iconInfo:Array = [2,21];
      
      public function DogZap(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Dog";
         graphicScale = 70;
         skin = 5;
         icon = 1135;
         catchRate = Catching.DOG_RATE;
         boxSize = 2;
         HP = 154;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.2;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = -0.5;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = 0.5;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 0.5;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.HOLY] = 1;
            elementalResistance[Element.DARK] = -0.5;
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
         EXP = 30;
         AP = 3;
         SP = 3;
         gold = 25;
         dropList = [[Items.fur,33],[Items.claw,25],[Items.amber,5]];
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
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         if(!Battle.selectedTarget)
         {
            quickFlee();
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         var _loc1_:int = Math.random() * 4;
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(status[Status.CHARGE])
         {
            _loc1_ = 5;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2 + 3;
         }
         if(_loc1_ == 0 || _loc1_ == 1)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special6");
         }
      }
      
      public function attack3() : *
      {
         graphic.makeMagic(EffectThunder);
         Skills.basicFoeAttack(32,Element.THUNDER,75);
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(19);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(22);
      }
      
      public function magic3() : *
      {
         if(isHard)
         {
            buff(Stats.ATTACK,30);
         }
         Skills.giveStatus(this,Status.CHARGE,3);
      }
      
      public function special6() : *
      {
         status[Status.CHARGE] = 0;
         graphic.makeMagic(EffectThunder,0,0,true);
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeAttack(33,Element.THUNDER,100,Status.STAGGER,1,isHard ? 20 : 10);
      }
      
      public function specialEffect() : *
      {
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.25);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("attack3");
      }
   }
}

