package foes
{
   public class ClassicSlime extends Foe
   {
      public function ClassicSlime(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicSlimeMC";
         graphicScale = 64;
         skin = 2 + Math.random() * 5;
         icon = 1168;
         catchRate = Catching.FURRY_SLIME_RATE;
         boxSize = 1;
         cantFlee = true;
         HP = 103;
         hit2HP = 50;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 400;
         evade = 0;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         buffResistance[Stats.DEFENCE] = 1.4;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1.4;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 0.8;
            elementalResistance[Element.THUNDER] = 0.8;
            elementalResistance[Element.ICE] = 0.8;
            elementalResistance[Element.EARTH] = 0.8;
            elementalResistance[Element.BIO] = 0.8;
            elementalResistance[Element.BOMB] = 0.8;
            elementalResistance[Element.WATER] = 0.8;
            elementalResistance[Element.WIND] = 0.8;
            elementalResistance[Element.HOLY] = 0.8;
            elementalResistance[Element.DARK] = 0.8;
         }
         EXP = 5;
         AP = 1.5;
         SP = 1.5;
         gold = 8;
         dropList = [[Items.fur,15],[Items.fur,15],[Items.fur,15]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         var _loc1_:int = Math.random() * 2;
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
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(44);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(50);
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.5);
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

