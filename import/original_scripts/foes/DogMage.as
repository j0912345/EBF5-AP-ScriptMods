package foes
{
   public class DogMage extends Foe
   {
      public static var iconInfo:Array = [2,22];
      
      public function DogMage(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Dog";
         graphicScale = 70;
         skin = 3;
         icon = 1136;
         catchRate = Catching.DOG_RATE;
         boxSize = 2;
         HP = 244;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.1;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.8;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = -0.5;
         elementalResistance[Element.DARK] = -0.5;
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
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.ICE] = 0;
            elementalResistance[Element.THUNDER] = 0;
            elementalResistance[Element.WATER] = 0.5;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.BOMB] = 0;
            statusResistance[Status.SYPHON_DISABLE] = 0.5;
         }
         EXP = 62;
         AP = 4;
         SP = 4;
         gold = 40;
         dropList = [[Items.fur,33],[Items.rune2,20],[Items.silk,30],[Items.satin,15],[Items.rune,10]];
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
         var _loc1_:int = Math.random() * 2;
         if(getHpPercent() < 66)
         {
            _loc1_ = Math.random() * 3;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 2 + 3;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2 + 3;
         }
         if(_loc1_ == 0)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.DARK);
            graphic.animate("magic1");
         }
         if(_loc1_ == 1)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.HOLY);
            graphic.animate("magic2");
         }
         if(_loc1_ == 2)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.DARK);
            graphic.animate("magic4");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(18);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(16);
      }
      
      public function magic1() : *
      {
         if(Math.random() > 0.5)
         {
            castSpell("DarkBlast");
         }
         else
         {
            if(Battle.selectedTarget.status[Status.INVISIBLE])
            {
               Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            }
            castSpell("Darken");
         }
      }
      
      public function magic4() : *
      {
         if(Math.random() > 0.5)
         {
            castSpell("DarkFlare");
         }
         else
         {
            castSpell("AntiMatter");
         }
      }
      
      public function magic2() : *
      {
         if(getHpPercent() > 66 || Math.random() < 0.5)
         {
            castSpell("HolyFire");
         }
         else
         {
            Battle.targetType = Target.ALL_ALLY;
            castSpell("HealMore");
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.5);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic2");
      }
   }
}

