package foes
{
   public class ArcadePumpkus extends Foe
   {
      public static var iconInfo:Array = [30,10];
      
      public var angry:Boolean = false;
      
      public function ArcadePumpkus(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 100;
         skin = 10;
         icon = 1204;
         catchRate = Catching.PUMPKUS_RATE;
         boxSize = 1;
         hit2HP = 10;
         HP = 456;
         attack = 1;
         magicAttack = 1;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.5;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.2;
         statusResistance[Status.FREEZE_CHILL] = 0.2;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.2;
         buffResistance[Stats.DEFENCE] = 1.6;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.6;
         buffResistance[Stats.ACCURACY] = 1.2;
         buffResistance[Stats.EVADE] = 1.2;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.DARK] = 1;
            statusResistance[Status.POISON_VIRUS] = 0;
            statusResistance[Status.STUN] = 0;
            statusResistance[Status.FREEZE_CHILL] = 0;
            buffResistance[Stats.ACCURACY] = 1.4;
            buffResistance[Stats.EVADE] = 1.4;
         }
         EXP = 156;
         AP = 12;
         SP = 16;
         gold = 16;
         dropList = [[Items.pumpkin,75],[Items.pumpkin,75],[Items.pumpkin,75],[Items.pumpkin,75],[Items.watermelon,25]];
         init(param1,param2,param3,param4);
         onHit = this.onHitFunction;
         if(isHard)
         {
            status[Status.MORALE] = 1;
         }
         if(Game.mode == Game.BATTLE)
         {
            statusDisplay.y += 40;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,25);
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.PUMPKUS,true);
         }
      }
      
      public function getAngry() : *
      {
         if(!this.angry)
         {
            Text.speech(Text.pumpkus[1]);
            skin = 11;
            graphic.skin = 11;
            this.angry = true;
            attack *= 20;
            magicAttack *= 20;
            defence *= 4;
            magicDefence *= 4;
            accuracy *= 2;
            evade *= 2;
         }
      }
      
      public function getCalm() : *
      {
         if(this.angry)
         {
            Text.speech(Text.pumpkus[3]);
            Text.speech(Text.pumpkus[8]);
            skin = 10;
            graphic.skin = 10;
            this.angry = false;
            attack /= 20;
            magicAttack /= 20;
            defence /= 4;
            magicDefence /= 4;
            accuracy /= 2;
            evade /= 2;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(isHard)
         {
            Skills.giveStatus(this,Status.MORALE,1);
         }
         var _loc1_:int = Math.random() * 3;
         if(!Battle.selectedTarget)
         {
            _loc1_ = 2;
         }
         if(this.angry)
         {
            _loc1_ = Math.random() * 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic3");
         }
      }
      
      public function attack2() : *
      {
         if(skin == 11)
         {
            Text.speech(Text.pumpkus[2]);
         }
         if(skin == 11)
         {
            Text.speech(Text.pumpkus[7]);
         }
         Skills.basicFoeAttack(35);
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
      }
      
      public function magic2() : *
      {
         if(status[Status.SYPHON])
         {
            return;
         }
         if(skin == 11)
         {
            Text.speech(Text.pumpkus[2]);
         }
         if(skin == 11)
         {
            Text.speech(Text.pumpkus[7]);
         }
         if(this.angry)
         {
            castMultiSpell(Spells.arcadeRoots);
         }
         else
         {
            castMultiSpell(Spells.arcadeVines);
         }
      }
      
      public function magic3() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.BLESS,3);
         }
         Skills.giveStatus(this,Status.LOVED,1);
      }
      
      public function onHitFunction() : *
      {
         if(getHpPercent() < 1 || Options.counterAttacks)
         {
            readyCounterAttack(1);
         }
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic2");
      }
   }
}

