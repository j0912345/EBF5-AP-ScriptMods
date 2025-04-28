package foes
{
   public class IdolGem extends Foe
   {
      public static var iconInfo:Array = [5,3];
      
      public function IdolGem(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Idol";
         graphicScale = 73;
         skin = Math.random() * 3 + 10;
         icon = 1028;
         catchRate = Catching.IDOL_RATE;
         boxSize = 1;
         HP = 83;
         attack = 4;
         magicAttack = 5.5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.2;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.8;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = -0.5;
            elementalResistance[Element.ICE] = -0.5;
            elementalResistance[Element.THUNDER] = -0.5;
            elementalResistance[Element.WATER] = -0.5;
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.EARTH] = 0;
            elementalResistance[Element.BIO] = 0;
            elementalResistance[Element.BOMB] = 1;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 2;
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
         AP = 1.1;
         SP = 1.1;
         gold = 10;
         dropList = [[Items.gems,50]];
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
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 3;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack6");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack1");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(16,Element.EARTH,25);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeMagic(22,Element.HOLY,100,Status.DISPEL,1,isHard ? 66 : 33);
      }
      
      public function attack6() : *
      {
         Skills.basicFoeMagic(35,Element.WIND,100,Status.LIGHT,2,isHard ? 50 : 25);
      }
      
      public function specialEffect() : *
      {
         Skills.giveStatus(this,Status.LIGHT,2);
      }
      
      public function magic1() : *
      {
         if(skin == 10)
         {
            castSpell("Air");
         }
         if(skin == 11)
         {
            castSpell("Fire1");
         }
         if(skin == 12)
         {
            castSpell("Ice");
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(1);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("attack3");
      }
   }
}

