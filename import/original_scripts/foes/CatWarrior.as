package foes
{
   public class CatWarrior extends Foe
   {
      public static var iconInfo:Array = [2,23];
      
      public var shieldDropped:Boolean = false;
      
      public var defended:Boolean = false;
      
      public function CatWarrior(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Cat";
         graphicScale = 54;
         skin = 1;
         icon = 1105;
         catchRate = Catching.CAT_RATE;
         boxSize = 1;
         hit2HP = 20;
         HP = 60;
         attack = 4;
         magicAttack = 4;
         defence = 8;
         magicDefence = 8;
         accuracy = 4;
         evade = 4.1;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.8;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 1;
            elementalResistance[Element.THUNDER] = 1;
            elementalResistance[Element.BIO] = 1.3;
            elementalResistance[Element.WATER] = 1.3;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
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
         EXP = 10;
         AP = 1.2;
         SP = 1.2;
         gold = 9;
         dropList = [[Items.wool,50],[Items.iron,15],[Items.beer,33],[Items.steel,15]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function dropShield() : *
      {
         this.shieldDropped = true;
         hit2HP = 50;
         defence /= 2;
         magicDefence /= 2;
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
         FoeAI.targetWeakPlayer(50);
         var _loc1_:int = Math.random() * 3;
         if(status[Status.BERSERK] || this.defended || this.shieldDropped)
         {
            _loc1_ = Math.random() * 2;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("defend");
            this.defended = true;
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(24 / 3);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(32 / 3);
         Battle.selectedTarget = Battle.randomPlayer();
      }
      
      public function defend1() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.BRAVE,3);
         }
         Skills.giveStatus(this,Status.DEFEND,1);
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(1);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("attack3");
      }
   }
}

