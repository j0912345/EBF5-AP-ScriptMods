package foes
{
   public class SpriteRock extends Foe
   {
      public function SpriteRock(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Sprite";
         graphicScale = 68;
         skin = 3;
         icon = 1036;
         catchRate = Catching.SPRITE_RATE;
         boxSize = 1;
         HP = 166;
         attack = 5;
         magicAttack = 5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1.8;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1.5;
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
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.DARK] = 0.5;
            elementalResistance[Element.BIO] = 0.5;
            elementalResistance[Element.BOMB] = 1.5;
            statusResistance[Status.DEATH] = 0.5;
            statusResistance[Status.STUN] = 0.5;
            statusResistance[Status.SYPHON] = 0.5;
         }
         EXP = 21;
         AP = 3;
         SP = 2.2;
         gold = 20;
         dropList = [[Items.brick,25],[Items.pretzel,10]];
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
         var _loc1_:int = Math.random() * 4;
         if(Boolean(status[Status.BERSERK]) || Boolean(status[Status.SYPHON]))
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 3;
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            quickFlee();
            return;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(18,Element.EARTH,25);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(32,Element.EARTH,50);
      }
      
      public function magic3() : *
      {
         if(Math.random() < 0.4 || !Battle.selectedTarget)
         {
            castSpell("Earthquake");
         }
         else
         {
            castSpell("StoneFist");
         }
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

