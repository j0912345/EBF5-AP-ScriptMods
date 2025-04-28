package foes
{
   public class CatNinja extends Foe
   {
      public static var iconInfo:Array = [2,27];
      
      public var shieldDropped:Boolean = false;
      
      public var defended:Boolean = false;
      
      public function CatNinja(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Cat";
         graphicScale = 54;
         skin = 5;
         icon = 1109;
         catchRate = Catching.CAT_RATE;
         boxSize = 1;
         hit2HP = 50;
         HP = 60;
         attack = 3.6;
         magicAttack = 3.6;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 5.5;
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
         dropList = [[Items.wool,50],[Items.shuriken,50],[Items.energy,33],[Items.virus,5]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function dropShield() : *
      {
         this.shieldDropped = true;
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
         FoeAI.targetWeakPlayer(75);
         var _loc1_:int = Math.random() * 2 + 2;
         if(this.defended)
         {
            _loc1_ = 2;
         }
         if(this.shieldDropped)
         {
            _loc1_ = Math.random() * 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(Boolean(status[Status.SYPHON]) && _loc1_ == 1)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack6");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("defend");
            this.defended = true;
         }
      }
      
      public function attack6() : *
      {
         Skills.basicFoeAttack(26,Element.NONE,0,Status.STAGGER,1,isHard ? 33 : 0,9999);
      }
      
      public function attack5() : *
      {
         graphic.makeMagic(EffectPoison,0,0);
         graphic.makeMagic(Shuriken,0,0);
      }
      
      public function magic3() : *
      {
         var _loc1_:int = Math.random() * 3;
         if(_loc1_ == 0)
         {
            castSpell("Bamboo");
         }
         if(_loc1_ == 1)
         {
            castSpell("Wood");
         }
         if(_loc1_ == 2)
         {
            castSpell("Puff");
         }
      }
      
      public function defend1() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.BRAVE,2);
         }
         Skills.giveStatus(this,Status.MORALE,2);
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
         graphic.animate("attack6");
      }
   }
}

