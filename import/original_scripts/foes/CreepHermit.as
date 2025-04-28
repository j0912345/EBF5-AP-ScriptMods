package foes
{
   public class CreepHermit extends Foe
   {
      public static var iconInfo:Array = [3,6];
      
      public var defended:Boolean = false;
      
      public function CreepHermit(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Creep";
         graphicScale = 86;
         skin = 6;
         icon = 1123;
         catchRate = Catching.CREEP_RATE;
         boxSize = 2;
         HP = 230;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.6;
         hit2HP = 33;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.EARTH] = 1;
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.HOLY] = 1;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.5;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
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
         EXP = 38;
         AP = 3.7;
         SP = 3.7;
         gold = 22;
         dropList = [[Items.seashell,100],[Items.ice,50],[Items.claw,30],[Items.spike,5]];
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
         var _loc1_:int = Math.random() * 5;
         if(getHpPercent() < 25)
         {
            _loc1_ = 4;
         }
         if(this.defended)
         {
            _loc1_ = Math.random() * 4;
         }
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget)
         {
            if(status[Status.SYPHON])
            {
               Skills.giveStatus(this,Status.SURRENDER,99);
               graphic.animate("evade");
               return;
            }
            _loc1_ = 3 + Math.random() * 2;
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
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("defend");
            this.defended = true;
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(35,Element.WATER,25,Status.WET,1,isHard ? 33 : 0);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(38);
      }
      
      public function magic2() : *
      {
         castMultiSpell(Spells.geysergush);
      }
      
      public function magic1() : *
      {
         castSpell("Whirlpool");
      }
      
      public function defend1() : *
      {
         if(isHard)
         {
            buff(Stats.DEFENCE,30);
         }
         if(isHard)
         {
            buff(Stats.MAGIC_DEFENCE,30);
         }
         Skills.giveStatus(this,Status.DEFEND,1);
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
         if(Math.random() < 0.5)
         {
            graphic.animate("magic1");
         }
         else
         {
            graphic.animate("magic2");
         }
      }
   }
}

