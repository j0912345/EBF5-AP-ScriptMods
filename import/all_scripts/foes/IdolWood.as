package foes
{
   public class IdolWood extends Foe
   {
      public static var iconInfo:Array = [5,1];
      
      public function IdolWood(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Idol";
         graphicScale = 72;
         skin = Math.random() * 3 + 1;
         icon = 1026;
         catchRate = Catching.IDOL_RATE;
         boxSize = 1;
         HP = 65;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.2;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.8;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BIO] = 1;
            elementalResistance[Element.THUNDER] = 1;
            elementalResistance[Element.DARK] = 1;
            elementalResistance[Element.EARTH] = 0;
         }
         statusResistance[Status.BURN_SCORCH] = 2;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 2;
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
         EXP = 6;
         AP = 1;
         SP = 1;
         gold = 7;
         dropList = [[Items.wood,25],[Items.raspberries,10]];
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
         if(!Battle.selectedTarget)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         if(isScared(TREES))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            return;
         }
         var _loc1_:int = Math.random() * (isHard ? 3 : 2);
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
            graphic.setXY();
            graphic.animate("magic1");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(13,Element.EARTH,50);
      }
      
      public function attack5() : *
      {
         Skills.basicFoeAttack(17);
      }
      
      public function magic1() : *
      {
         castSpell("Wood");
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.33);
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

