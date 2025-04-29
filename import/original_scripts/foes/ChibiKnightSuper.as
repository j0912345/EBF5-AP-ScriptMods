package foes
{
   public class ChibiKnightSuper extends Foe
   {
      public var c:int = 0;
      
      public var s:int = 1;
      
      public var undefended:Boolean = true;
      
      public function ChibiKnightSuper(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Chibi";
         graphicScale = 80;
         skin = 2;
         icon = 1095;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 1;
         HP = 2000;
         attack = 5;
         magicAttack = 5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.2;
         hit2HP = 9;
         dieAnim = "hit2";
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            HP = 999;
         }
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.8;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.5;
         buffResistance[Stats.MAGIC_ATTACK] = 1.5;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.HOLY] = 0;
            elementalResistance[Element.DARK] = 0;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 600;
         AP = 60;
         SP = 60;
         gold = 500;
         dropList = [[Items.apple,100],[Items.raspberries,100],[Items.cupcake,100],[Items.orangejuice,100],[Items.pizza,100]];
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
         if(this.s)
         {
            turnTaken = false;
            this.s = 0;
         }
         else
         {
            this.s = 1;
         }
         var _loc1_:int = 0;
         if(this.s == 0)
         {
            _loc1_ = 3;
         }
         else
         {
            if(getHpPercent() < 75)
            {
               _loc1_ = Math.random() * 3;
            }
            if(getHpPercent() < 45)
            {
               _loc1_ = 1 + Math.random() * 2;
               if(buffs[Stats.DEFENCE] <= 105 && buffs[Stats.MAGIC_DEFENCE] <= 105 && (this.undefended || Math.random() * 0.25))
               {
                  _loc1_ = 4;
                  this.undefended = false;
               }
            }
            if(Flags.battleEvent != Flags.ARENA_BATTLE && Boolean(Flags.TUNDRA_REACHED.quantity))
            {
               if(Battle.foeCount() == 1 && getHpPercent() < 15)
               {
                  if(isHard)
                  {
                     _loc1_ = 5;
                  }
               }
               if(Battle.foeCount() == 1)
               {
                  ++this.c;
                  if(this.c >= 3)
                  {
                     _loc1_ = 5;
                     this.c = 0;
                  }
               }
            }
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 2;
         }
         if(!Battle.selectedTarget && _loc1_ < 3)
         {
            _loc1_ = 3;
         }
         if(Flags.battleEvent == Flags.ARENA_BATTLE && _loc1_ == 4 && Math.random() < 0.66)
         {
            _loc1_ = 1;
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
            graphic.animate("attack3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic4");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(60 / 3);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(100 / 6);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(150 / 6);
      }
      
      public function attack33() : *
      {
         if(Battle.playerCount() <= 1)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
         else
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         }
      }
      
      public function magic3() : *
      {
         if(MapData.area == MapData.TEMPLE_OF_TRIALS)
         {
            spawnFoe(Options.altFoes ? [GolemTopaz] : [GolemAmethyst],this.level);
         }
         else
         {
            spawnFoe(Options.altFoes ? [MammothWooly] : [GolemPearl],this.level);
         }
      }
      
      public function magic4() : *
      {
         var _loc1_:String = FoeAI.getBestElement([Element.ICE,Element.THUNDER,Element.FIRE]);
         if(_loc1_ == Element.THUNDER)
         {
            castSpell("Thunderstorm");
         }
         else if(_loc1_ == Element.ICE)
         {
            castSpell("Icestorm");
         }
         else if(_loc1_ == Element.FIRE)
         {
            castSpell("Firestorm");
         }
      }
      
      public function magic2() : *
      {
         Battle.selectedTarget = this;
         castSpell("Guardian");
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
         graphic.animate("attack2");
      }
   }
}

