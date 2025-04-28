package foes
{
   public class SlimeWater extends Foe
   {
      public static var iconInfo:Array = [2,8];
      
      public function SlimeWater(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Slime";
         graphicScale = 45;
         skin = Math.random() * 3 + 22;
         icon = 1074;
         catchRate = Catching.SLIME_RATE;
         boxSize = 1;
         textFont = GUI.SLIME_FONT;
         HP = 54;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3;
         elementalResistance[Element.FIRE] = 0;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 0;
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
         statusResistance[Status.DEATH] = 2;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BOMB] = 1;
            elementalResistance[Element.DARK] = 1;
            elementalResistance[Element.EARTH] = 0;
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.THUNDER] = 1.5;
         }
         EXP = 5;
         AP = 1;
         SP = 1;
         gold = 5;
         dropList = [[Items.ice,10],[Items.seashell,10]];
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
         if(isScared(SLIMES))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            quickFlee();
            return;
         }
         var _loc1_:int = Math.random() * 5;
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
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
            graphic.animate("magic1");
         }
         if(_loc1_ == 3 || _loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("special5");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(13,Element.WATER,20,Status.WET,1,isHard ? 50 : 25);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(13,Element.WATER,20,Status.WET,1,isHard ? 50 : 25);
      }
      
      public function magic1() : *
      {
         castSpell("Bubbles");
      }
      
      public function special5() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         graphic.makeMagic(BubbleBall,graphic.x,graphic.y + 50);
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
         graphic.animate("special5");
      }
   }
}

