package foes
{
   public class ClassicSlingerSword extends Foe
   {
      public function ClassicSlingerSword(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicSlingerMC";
         graphicScale = 83;
         skin = 2;
         icon = 1176;
         catchRate = Catching.SLINGER_RATE;
         boxSize = 2;
         cantFlee = true;
         HP = 271;
         hit2HP = 35;
         attack = 3.5;
         magicAttack = 3.5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.4;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1.3;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         buffResistance[Stats.ACCURACY] = 1.3;
         buffResistance[Stats.EVADE] = 1.3;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WATER] = 0.5;
            elementalResistance[Element.EARTH] = 0;
            statusResistance[Status.STUN] = 0;
         }
         EXP = 18;
         AP = 3.6;
         SP = 3.6;
         gold = 30;
         dropList = [[Items.spring,75],[Items.shuriken,75],[Items.buckle,50],[Items.steel,25],[Items.leather,25]];
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
         var _loc1_:int = Math.random() * 4;
         if(status[Status.BERSERK])
         {
            _loc1_ = 2;
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
            graphic.setXY();
            graphic.animate("attack3");
         }
         if(_loc1_ == 3)
         {
            graphic.setXY();
            graphic.animate("attack4");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(70 / 3);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(85 / 5);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(120,null,null,null,null,null,90);
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(190,null,null,null,null,null,60);
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
         graphic.animate("attack4");
      }
   }
}

