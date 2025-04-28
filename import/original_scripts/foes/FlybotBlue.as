package foes
{
   public class FlybotBlue extends Foe
   {
      public static var iconInfo:Array = [4,3];
      
      internal var spell:int = 1;
      
      public function FlybotBlue(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Flybot";
         graphicScale = 68;
         skin = 3;
         icon = 1099;
         catchRate = Catching.FLYBOT_RATE;
         boxSize = 2;
         HP = 201;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.1;
         hit2HP = 40;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.5;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.5;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BOMB] = 1;
            elementalResistance[Element.BIO] = 0;
            elementalResistance[Element.FIRE] = 0.5;
            elementalResistance[Element.ICE] = 0.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
            buffResistance[Stats.EVADE] = 1.3;
         }
         EXP = 37;
         AP = 2.8;
         SP = 2.8;
         gold = 16;
         dropList = [[Items.gear,50],[Items.plastic,50],[Items.ice,50],[Items.floppy,50],[Items.cpu,5]];
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
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            quickFlee();
            return;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 3;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomFoe();
            _loc1_ = 4;
         }
         if(Math.random() < 0.2 && FoeAI.getBestRecycleTarget() != null && !status[Status.BERSERK] && !status[Status.SYPHON])
         {
            Battle.selectedTarget = FoeAI.getBestRecycleTarget();
            _loc1_ = 4;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 1)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.WATER);
            graphic.animate("attack5");
         }
         if(_loc1_ == 2)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.ICE);
            graphic.animate("attack4");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
            this.spell = 2;
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
            this.spell = 1;
         }
      }
      
      public function attack3() : *
      {
         Skills.basicFoeMagic(30,Element.WIND,100);
      }
      
      public function attack5() : *
      {
         Skills.basicFoeMagic(33,Element.WATER,100,Status.WET,3,100);
      }
      
      public function attack4() : *
      {
         Skills.basicFoeMagic(28,Element.ICE,100,Status.CHILL,3,100);
      }
      
      public function magic1() : *
      {
         if(this.spell == 1)
         {
            castSpell("Recycle");
         }
         if(this.spell == 2)
         {
            castSpell("BubbleRing");
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.33);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if(status[Status.SYPHON])
         {
            graphic.animate("attack3");
         }
         else
         {
            graphic.animate("attack4");
         }
      }
   }
}

