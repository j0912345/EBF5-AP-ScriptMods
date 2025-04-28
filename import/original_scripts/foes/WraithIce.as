package foes
{
   public class WraithIce extends Foe
   {
      public static var iconInfo:Array = [6,7];
      
      public function WraithIce(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Wraith";
         graphicScale = 68;
         skin = 2;
         icon = 1070;
         catchRate = Catching.WRAITH_RATE;
         boxSize = 2;
         HP = 185;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = -1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.8;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0;
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
            elementalResistance[Element.FIRE] = 1.5;
            elementalResistance[Element.WIND] = 1.5;
            elementalResistance[Element.DARK] = 1.5;
            elementalResistance[Element.WATER] = -1;
            buffResistance[Stats.ATTACK] = 1.3;
            buffResistance[Stats.MAGIC_ATTACK] = 1.3;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         }
         EXP = 31;
         AP = 3.5;
         SP = 3.5;
         gold = 25;
         dropList = [[Items.water,50],[Items.silk,10],[Items.satin,5]];
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
         if(isScared(GHOSTS))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            quickFlee();
            return;
         }
         var _loc1_:int = Math.random() * 4;
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 2;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 3;
         }
         if(_loc1_ == 0)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.ICE);
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.ICE);
            graphic.animate("magic1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack3");
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(28,Element.ICE,50,Status.CHILL,2,isHard ? 50 : 10);
      }
      
      public function attack3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":22 / 2,
            "element":Element.ICE,
            "elementDegree":100
         });
      }
      
      public function magic1() : *
      {
         castSpell("IceNeedle");
      }
      
      public function magic2() : *
      {
         castSpell("DarkSwoop");
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
         graphic.animate("magic1");
      }
   }
}

