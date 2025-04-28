package foes
{
   public class ChibiKnight extends Foe
   {
      public var c:int = 0;
      
      public function ChibiKnight(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Chibi";
         graphicScale = 80;
         skin = 1;
         icon = 1094;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 1;
         HP = 1200;
         attack = 4.8;
         magicAttack = 4;
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
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
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
         buffResistance[Stats.ATTACK] = 1.5;
         buffResistance[Stats.MAGIC_ATTACK] = 1.5;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 1;
            elementalResistance[Element.THUNDER] = 1;
            elementalResistance[Element.ICE] = 1;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 600;
         AP = 60;
         SP = 60;
         gold = 500;
         dropList = [[Items.pumpkin,100],[Items.crisps,100],[Items.burger,100]];
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
            quickFlee();
            return;
         }
         var _loc1_:int = 0;
         if(getHpPercent() < 75)
         {
            _loc1_ = Math.random() * 3;
         }
         if(getHpPercent() < 45)
         {
            _loc1_ = 1 + Math.random() * 2;
         }
         if(Flags.battleEvent != Flags.ARENA_BATTLE && Game.party.length >= 4)
         {
            if(Battle.foeCount() == 1 && getHpPercent() < 25)
            {
               if(isHard)
               {
                  _loc1_ = 3;
               }
            }
            if(Battle.foeCount() == 1)
            {
               ++this.c;
               if(this.c >= 3)
               {
                  _loc1_ = 3;
                  this.c = 0;
               }
            }
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
            graphic.animate("magic3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(90 / 3);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(150 / 6);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(180 / 6);
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
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.players[0];
         }
      }
      
      public function magic3() : *
      {
         if(MapData.area == MapData.TEMPLE_OF_TRIALS)
         {
            spawnFoe(Options.altFoes ? [ChomperLeafy] : [BearBrown],this.level);
         }
         else
         {
            spawnFoe([BearPanda],this.level);
         }
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
         graphic.animate("attack1");
      }
   }
}

