package foes
{
   public class SlimeMouse extends Foe
   {
      public static var iconInfo:Array = [2,11];
      
      public function SlimeMouse(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Slime";
         graphicScale = 45;
         skin = Math.random() * 3 + 7;
         icon = 1075;
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
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = -1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
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
         }
         if(Flags.battleEvent == Flags.INFINITE_HP)
         {
            statusResistance[Status.DEATH] = 0;
         }
         EXP = 5;
         AP = 1;
         SP = 1;
         gold = 5;
         dropList = [[Items.banana,15],[Items.apple,10],[Items.blueberries,5],[Items.dragonfruit,3]];
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
         var _loc1_:int = Math.random() * 6;
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
         if(_loc1_ == 2 || _loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("magic2");
         }
         if(_loc1_ == 3 || _loc1_ == 5)
         {
            graphic.setXY();
            graphic.animate("attack3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(13,Element.THUNDER,20,Status.STUN,1,isHard ? 10 : 0);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(13,Element.THUNDER,20,Status.STUN,1,isHard ? 10 : 0);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(20,Element.THUNDER,100,Status.STUN,1,isHard ? 30 : 10);
      }
      
      public function magic2() : *
      {
         castSpell("Thunder");
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
         graphic.animate("magic2");
      }
   }
}

