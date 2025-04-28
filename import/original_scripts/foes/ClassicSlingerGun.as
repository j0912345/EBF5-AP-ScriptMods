package foes
{
   public class ClassicSlingerGun extends Foe
   {
      public function ClassicSlingerGun(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicSlingerMC";
         graphicScale = 83;
         skin = 1;
         icon = 1175;
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
         dropList = [[Items.spring,75],[Items.pipe,75],[Items.powder,50],[Items.bomb,25],[Items.leather,25]];
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
         if(status[Status.SYPHON])
         {
            graphic.animate("evade");
            return;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack6");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack7");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack8");
         }
      }
      
      public function attack5() : *
      {
         Skills.basicFoeAttack(110 / 6,Element.BOMB,100);
         Battle.selectedTarget = Battle.randomPlayer();
      }
      
      public function attack6() : *
      {
         castSpell("ClassicHandBomb");
      }
      
      public function handbomb() : *
      {
         Skills.basicFoeMagic(70,Element.BOMB,100,null,null,null,150);
      }
      
      public function attack7() : *
      {
         Skills.basicFoeAttack(150,Element.BOMB,100,Status.DEATH,1,isHard ? 100 : 60,40);
      }
      
      public function attack8() : *
      {
         Skills.basicFoeAttack(180 / 5,Element.BOMB,100,null,null,null,80);
         Battle.selectedTarget = Battle.randomPlayer();
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
         graphic.animate("attack5");
      }
   }
}

