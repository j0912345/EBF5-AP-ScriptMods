package foes
{
   public class ArcadeChair extends Foe
   {
      public static var iconInfo:Array = [30,5];
      
      public function ArcadeChair(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 100;
         skin = 5;
         icon = 1211;
         catchRate = Catching.CHAIR_RATE;
         boxSize = 1;
         hit2HP = 8;
         HP = 965;
         attack = 2;
         magicAttack = 2;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.2;
         evade = 4.4;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.2;
         statusResistance[Status.FREEZE_CHILL] = 0.2;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.6;
         buffResistance[Stats.MAGIC_ATTACK] = 1.6;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.2;
         buffResistance[Stats.EVADE] = 1.2;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.HOLY] = 1;
            elementalResistance[Element.DARK] = -1;
            statusResistance[Status.SYPHON_DISABLE] = 0.2;
            statusResistance[Status.CURSE_BAD_LUCK] = 0;
            statusResistance[Status.STUN] = 0;
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         }
         EXP = 111;
         AP = 15;
         SP = 15;
         gold = 130;
         dropList = [[Items.wood,75],[Items.claw,75],[Items.wood,75],[Items.claw,75],[Items.satin,25]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(Game.mode == Game.BATTLE)
         {
            statusDisplay.y += 15;
            statusDisplay.x += 20;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,11);
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.CHAIR,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(Battle.foeCount() < 2)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("flee");
            return;
         }
         var _loc1_:int = Math.random() * 3;
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(getHpPercent() < 50)
         {
            Text.speech(Text.chair[5]);
         }
         if(getHpPercent() < 30)
         {
            Text.speech(Text.chair[6]);
         }
         if(!Battle.selectedTarget)
         {
            if(status[Status.SYPHON])
            {
               Skills.giveStatus(this,Status.SURRENDER,99);
               graphic.animate("flee");
               return;
            }
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            Battle.selectedTarget = FoeAI.targetStrongestPlayer();
            if(!Battle.selectedTarget)
            {
               Battle.selectedTarget = Battle.randomPlayer();
            }
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
            graphic.animate("magic2");
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(35);
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(75 / 3,null,null,null,Status.HUNGRY,isHard ? 100 : 33);
      }
      
      public function magic2() : *
      {
         Text.speech(Text.chair[2]);
         castMultiSpell(Spells.arcadeStool);
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
         graphic.animate("magic2");
      }
   }
}

