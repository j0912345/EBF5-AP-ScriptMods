package foes
{
   public class GloopStone extends Foe
   {
      public var defended:Boolean = false;
      
      public function GloopStone(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Gloop";
         graphicScale = 81;
         skin = 1 + Math.random() * 2;
         icon = 1010;
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
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 2;
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
            elementalResistance[Element.BOMB] = 1;
            elementalResistance[Element.ICE] = 1.3;
            elementalResistance[Element.THUNDER] = -0.5;
            elementalResistance[Element.EARTH] = -0.5;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         }
         EXP = 23;
         AP = 2.2;
         SP = 2.2;
         gold = 16;
         dropList = [[Items.brick,50],[Items.leather,25],[Items.geode,15]];
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
         var _loc1_:int = Math.random() * 5;
         if(getHpPercent() < 50)
         {
            _loc1_++;
         }
         if(this.defended && _loc1_ == 2)
         {
            _loc1_ = 1;
         }
         if(!isHard && _loc1_ == 3)
         {
            _loc1_ = 0;
         }
         if(Boolean(Battle.selectedTarget) && Boolean(Battle.selectedTarget.status[Status.INVISIBLE]))
         {
            _loc1_ = 3;
         }
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            if(Math.random() < 0.5)
            {
               _loc1_ = 1;
            }
            else
            {
               _loc1_ = 5;
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
            graphic.animate("attack2");
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
            graphic.animate("attack4");
         }
         if(_loc1_ == 5)
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
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(31,Element.EARTH,25);
      }
      
      public function magic1() : *
      {
         if(Battle.selectedTarget.status[Status.INVISIBLE])
         {
            castSpell("GaiaGlow");
         }
         else
         {
            castSpell("Darken");
         }
      }
      
      public function defend1() : *
      {
         buff(Stats.MAGIC_DEFENCE,isHard ? 50 : 30);
         if(isHard)
         {
            Skills.giveStatus(this,Status.INVISIBLE,5);
         }
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(60 / 3,Element.EARTH,50);
         if(Battle.playerCount() > 1)
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         }
         else
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
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
            graphic.animate("attack2");
         }
         else
         {
            graphic.animate("magic1");
         }
      }
   }
}

