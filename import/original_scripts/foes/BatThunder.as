package foes
{
   public class BatThunder extends Foe
   {
      public static var iconInfo:Array = [15,4];
      
      public function BatThunder(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Bat";
         graphicScale = 67;
         skin = 10 + Math.random() * 3;
         icon = 1120;
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
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = -1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 0.5;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.DARK] = 0;
            elementalResistance[Element.HOLY] = 0;
            elementalResistance[Element.WIND] = 1;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
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
         dropList = [[Items.butterflywing,20],[Items.banana,10],[Items.pumpkin,5],[Items.pineapple,5]];
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
         var _loc1_:int = Math.random() * 3;
         if(status[Status.SYPHON])
         {
            graphic.animate("evade");
            return;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == -1)
         {
            graphic.animate("evade");
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack6");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic2");
         }
      }
      
      public function attack6() : *
      {
         Skills.basicFoeAttack(25,Element.THUNDER,100,Status.STUN,1,isHard ? 30 : 10);
      }
      
      public function magic2() : *
      {
         castSpell("Thunderbolt");
      }
      
      public function magic3() : *
      {
         graphic.makeMagic(PlasmaBall,graphic.x + 40,graphic.y + 80);
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
         graphic.animate("magic3");
      }
   }
}

