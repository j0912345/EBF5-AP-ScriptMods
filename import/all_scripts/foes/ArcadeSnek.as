package foes
{
   public class ArcadeSnek extends Foe
   {
      public static var iconInfo:Array = [30,4];
      
      private var berserked:Boolean = false;
      
      public function ArcadeSnek(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 100;
         skin = 4;
         icon = 1203;
         catchRate = Catching.SNEK_RATE;
         boxSize = 1;
         HP = 1839;
         attack = 3;
         magicAttack = 3;
         defence = 3.7;
         magicDefence = 4.4;
         accuracy = 4.4;
         evade = 5.66;
         hit2HP = 10;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.2;
         statusResistance[Status.FREEZE_CHILL] = 0.2;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 0.5;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.2;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.2;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.6;
         buffResistance[Stats.EVADE] = 1.6;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BIO] = 1;
            elementalResistance[Element.FIRE] = -1;
            statusResistance[Status.STUN] = 0;
            statusResistance[Status.FREEZE_CHILL] = 0;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         }
         EXP = 130;
         AP = 10;
         SP = 16;
         gold = 66;
         dropList = [[Items.claw,75],[Items.leather,75],[Items.amber,75],[Items.raspberries,75],[Items.scales,25]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(Game.mode == Game.BATTLE)
         {
            statusDisplay.y += 30;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,31);
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.SNEK,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(getHpPercent() < 25 && !this.berserked)
         {
            Skills.giveStatus(this,Status.BERSERK,isHard ? 5 : 3);
            this.berserked = true;
         }
         var _loc1_:int = Math.random() * 3;
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 2;
         }
         if(getHpPercent() < 50)
         {
            Text.speech(Text.snek[4]);
         }
         if(_loc1_ == 0)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.FIRE);
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
         if(Battle.foeCount() < 3)
         {
            Text.speech(Text.snek[5]);
         }
         spawnFoe([ArcadeSnek],this.level);
      }
      
      public function attack1(param1:int) : *
      {
         if(param1 == 1)
         {
            Skills.customFoeAttack({
               "type":Stats.ATTACK,
               "accuracy":150,
               "damage":105 / 2,
               "element":Element.NONE,
               "statusEffect":Status.SCORCHED,
               "statusDegree":5,
               "statusChance":100
            });
         }
         if(param1 == 2)
         {
            Skills.customFoeAttack({
               "type":Stats.ATTACK,
               "accuracy":150,
               "damage":105 / 2,
               "element":Element.NONE,
               "statusEffect":(Math.random() < 0.5 ? Status.CONFUSE : Status.DOOM),
               "statusDegree":3,
               "statusChance":(isHard ? 100 : 0)
            });
         }
      }
      
      public function attack2() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "accuracy":100,
            "damage":75,
            "element":Element.NONE,
            "statusEffect":Status.DISABLE,
            "statusDegree":(isHard ? 3 : 2),
            "statusChance":(isHard ? 100 : 66)
         });
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
      }
      
      public function magic2() : *
      {
         if(Math.random() < 0.5)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.EARTH);
            castSpell("TotomWood");
         }
         else
         {
            FoeAI.targetRandomPlayerWeakTo(Element.BIO);
            castSpell("MermaidPoison");
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
         graphic.animate("attack2");
      }
   }
}

