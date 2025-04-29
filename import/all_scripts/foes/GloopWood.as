package foes
{
   public class GloopWood extends Foe
   {
      public var defended:Boolean = false;
      
      public function GloopWood(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Gloop";
         graphicScale = 86;
         skin = 7 + Math.random() * 2;
         icon = 1009;
         catchRate = Catching.GLOOP_RATE;
         boxSize = 2;
         HP = 158;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 40;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 2;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 2;
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
            elementalResistance[Element.THUNDER] = 1;
            elementalResistance[Element.FIRE] = 1.3;
            elementalResistance[Element.EARTH] = -0.5;
            elementalResistance[Element.BIO] = -0.5;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         }
         EXP = 23;
         AP = 2.2;
         SP = 2.2;
         gold = 16;
         dropList = [[Items.herb,50],[Items.apple,50],[Items.wood,50],[Items.root,25]];
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
         if(isScared(TREES))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            quickFlee();
            return;
         }
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 50)
         {
            _loc1_++;
         }
         if(this.defended && _loc1_ == 2)
         {
            _loc1_ = 1;
         }
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            if(Math.random() < 0.5)
            {
               _loc1_ = 1;
            }
            else
            {
               _loc1_ = 4;
            }
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("defend");
            this.defended = true;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(20,Element.DARK,25,Status.HEAVY,2,isHard ? 20 : 0);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(40 / 4,Element.DARK,25,Status.HEAVY,2,isHard ? 20 : 0);
      }
      
      public function attack5() : *
      {
         graphic.makeMagic(EffectDark);
         Skills.basicFoeAttack(35,Element.DARK,50,Status.HEAVY,2,isHard ? 20 : 0);
      }
      
      public function magic1() : *
      {
         castSpell("Lumber");
      }
      
      public function defend1() : *
      {
         if(isHard)
         {
            buff(Stats.DEFENCE,30);
         }
         buff(Stats.MAGIC_DEFENCE,30);
         Skills.giveStatus(this,Status.BLESS,isHard ? 6 : 4);
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
         if(status[Status.SYPHON])
         {
            graphic.animate("defend");
         }
         else
         {
            graphic.animate("magic1");
         }
      }
   }
}

