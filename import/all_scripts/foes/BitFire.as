package foes
{
   public class BitFire extends Foe
   {
      public static var iconInfo:Array = [4,5];
      
      public function BitFire(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "RockBit";
         graphicScale = 88;
         skin = 1;
         icon = 1141;
         catchRate = Catching.ROCKBIT_RATE;
         boxSize = 1;
         HP = 101;
         attack = 4;
         magicAttack = 4.5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.BOMB] = 1;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 0;
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
         EXP = 12;
         AP = 1.2;
         SP = 1.2;
         gold = 5;
         dropList = [[Items.magma,25],[Items.gems,5]];
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
         var _loc1_:int = Math.random() * 2;
         if(isHard && Math.random() > 0.3 + FoeAI.getPlayersWeakTo(Element.FIRE,false,true).length / 3)
         {
            _loc1_ = -1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = -1;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = -1;
         }
         if(_loc1_ == -1)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 0)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(32);
      }
      
      public function magic1() : *
      {
         castSpell("FireCrystals");
      }
      
      public function magic2() : *
      {
         castSpell("FireBlast");
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

