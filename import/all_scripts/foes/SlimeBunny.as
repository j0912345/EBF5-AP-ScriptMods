package foes
{
   public class SlimeBunny extends Foe
   {
      public static var iconInfo:Array = [2,12];
      
      public var counterSpell:Boolean = false;
      
      public function SlimeBunny(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Slime";
         graphicScale = 45;
         skin = Math.random() * 3 + 16;
         icon = 1073;
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
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.8;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
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
            statusResistance[Status.SYPHON_DISABLE] = 0;
         }
         if(Flags.battleEvent == Flags.INFINITE_HP)
         {
            statusResistance[Status.DEATH] = 0;
         }
         EXP = 5;
         AP = 1;
         SP = 1;
         gold = 5;
         dropList = [[Items.garlic,30],[Items.apple,15],[Items.banana,20]];
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
         var _loc1_:int = Math.random() * 4;
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
         if(_loc1_ == 2 || _loc1_ == 3)
         {
            graphic.setXY();
            graphic.animate("magic3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(-13,Element.NONE);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(-13,Element.NONE);
      }
      
      public function magic3() : *
      {
         Global.circle = 1;
         Global.element = Element.HOLY;
         if(this.counterSpell)
         {
            this.counterSpell = false;
            Battle.selectedSkill = Spells.genesis;
            castSpell("Genesis");
         }
         else
         {
            Battle.selectedTarget = Battle.mostDamagedPlayer(true);
            if(isHard)
            {
               Battle.selectedTarget = Battle.mostDamagedPlayerOrFoe();
            }
            if(Math.random() < 0.5)
            {
               castSpell("Cleanse");
            }
            else
            {
               castSpell("Heal");
            }
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
         this.counterSpell = true;
         graphic.animate("magic3");
      }
   }
}

