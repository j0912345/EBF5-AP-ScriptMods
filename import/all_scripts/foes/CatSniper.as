package foes
{
   public class CatSniper extends Foe
   {
      public static var iconInfo:Array = [2,24];
      
      public var shieldDropped:Boolean = false;
      
      public var defended:Boolean = false;
      
      public function CatSniper(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Cat";
         graphicScale = 54;
         skin = 3;
         icon = 1107;
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
         elementalResistance[Element.THUNDER] = 1;
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
         dropList = [[Items.wool,25],[Items.powder,10],[Items.bru,33],[Items.plastic,15],[Items.coffee,5]];
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
         FoeAI.targetWeakPlayer(25);
         var _loc1_:int = Math.random() * 4;
         if(this.defended || this.shieldDropped)
         {
            _loc1_ = Math.random() * 3;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 4;
         }
         if(_loc1_ == 0 || _loc1_ == 1)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("defend");
            this.defended = true;
         }
         if(_loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(12);
      }
      
      public function attack4() : *
      {
         castSpell("Snipe");
      }
      
      public function magic3() : *
      {
         var _loc1_:int = Math.random() * 3;
         if(_loc1_ == 0)
         {
            castSpell("AirStrike2");
         }
         if(_loc1_ == 1)
         {
            Battle.selectedTarget = this;
            castSpell("LockOn");
         }
         if(_loc1_ == 2)
         {
            castSpell("SetTarget");
         }
      }
      
      public function defend1() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.REGEN,3);
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
         if(this.shieldDropped)
         {
            FoeAI.targetLastAttackerOf(this);
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("defend");
         }
      }
   }
}

