package foes
{
   public class ArcadeGuoye extends Foe
   {
      public static var iconInfo:Array = [30,7];
      
      public var berserked:Boolean = false;
      
      public var spell:int = 0;
      
      public var counterSpell:Boolean = false;
      
      public function ArcadeGuoye(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 100;
         skin = 7;
         icon = 1205;
         catchRate = Catching.GUOYE_RATE;
         boxSize = 1;
         HP = 1543;
         attack = 5;
         magicAttack = 5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.4;
         evade = 4.4;
         hit2HP = 6;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = -0.5;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = -0.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 0.5;
         statusResistance[Status.DRY_WET] = 2;
         statusResistance[Status.LIGHT_HEAVY] = 2;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.2;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.6;
         buffResistance[Stats.EVADE] = 1.6;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.HOLY] = 1;
            statusResistance[Status.BURN_SCORCH] = 0.2;
            statusResistance[Status.SYPHON_DISABLE] = 0;
            statusResistance[Status.STAGGER_CONFUSE] = 0;
            statusResistance[Status.DISPEL] = 0.5;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         }
         EXP = 222;
         AP = 18;
         SP = 22;
         gold = 88;
         dropList = [[Items.butterflywing,75],[Items.butterflywing,75],[Items.butterflywing,75],[Items.moonpearl,20],[Items.starfragment,20]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,29);
         if(Game.mode == Game.BATTLE)
         {
            statusDisplay.x += 20;
            statusDisplay.y -= 15;
            graphic.point3.x += 20;
            graphic.point3.y -= 20;
            graphic.point4.x += 35;
            graphic.point4.y -= 20;
         }
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.GUOYE,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(Battle.foeCount() == 1 && !this.berserked)
         {
            Skills.giveStatus(this,Status.BERSERK,3);
            this.berserked = true;
         }
         else if(Battle.foeCount() == 1 && getHpPercent() < 50 && !status[Status.BERSERK])
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("flee");
            return;
         }
         var _loc1_:int = Math.random() * 4;
         if(status[Status.BERSERK])
         {
            _loc1_ = 3;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic2");
            this.spell = 0;
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic2");
            this.spell = 1;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
            this.spell = 2;
         }
      }
      
      public function magic1() : *
      {
         if(this.counterSpell)
         {
            castSpell("SlimeHand");
         }
         else
         {
            castMultiSpell(Spells.arcadeHands);
         }
      }
      
      public function hand() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":35,
            "element":Element.NONE,
            "statusEffect":Status.ENCHANTED,
            "statusDegree":4,
            "statusChance":20,
            "buffEffect":Stats.EVADE,
            "buffDegree":-25,
            "buffChance":(isHard ? 40 : 20)
         });
      }
      
      public function magic2(param1:int) : *
      {
         Text.speech(Text.guoye[1]);
         Text.speech(Text.guoye[6]);
         if(getHpPercent() < 50)
         {
            Text.speech(Text.guoye[3]);
         }
         if(getHpPercent() < 70)
         {
            Text.speech(Text.guoye[7]);
         }
         if(getHpPercent() < 50)
         {
            Text.speech(Text.guoye[8]);
         }
         if(getHpPercent() < 50)
         {
            Text.speech(Text.guoye[9]);
         }
         graphic.setXY();
         if(this.spell == 0 && param1 == 1)
         {
            if(Boolean(Battle.selectedTarget) && Boolean(Battle.selectedTarget.status[Status.INVISIBLE]))
            {
               Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            }
            if(Boolean(Battle.selectedTarget) && Boolean(Battle.selectedTarget.status[Status.INVISIBLE]))
            {
               Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            }
            castSpell("SlimeSwords");
         }
         if(this.spell == 1)
         {
            Battle.selectedTarget = Battle.randomPlayer();
            if(Boolean(Battle.selectedTarget) && Boolean(Battle.selectedTarget.status[Status.ENCHANTED]))
            {
               Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            }
            if(Boolean(Battle.selectedTarget) && Boolean(Battle.selectedTarget.status[Status.ENCHANTED]))
            {
               Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            }
            castSpell("SlimeSlash");
         }
         if(this.spell == 2)
         {
            Battle.selectedTarget = Battle.randomPlayer();
            if(Boolean(Battle.selectedTarget) && Boolean(Battle.selectedTarget.status[Status.ENCHANTED]))
            {
               Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            }
            if(Boolean(Battle.selectedTarget) && Boolean(Battle.selectedTarget.status[Status.ENCHANTED]))
            {
               Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            }
            graphic.makeMagic(BlackBall,graphic.x - 20 - Math.random() * 25,graphic.y - 70 - Math.random() * 60);
         }
      }
      
      public function ball() : *
      {
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":15,
            "element":Element.DARK,
            "elementDegree":25,
            "statusEffect":Status.INVISIBLE,
            "statusDegree":4,
            "statusChance":8,
            "buffEffect":Stats.DEFENCE,
            "buffDegree":-25,
            "buffChance":(isHard ? 22 : 11)
         });
      }
      
      public function swords() : *
      {
         if(getHpPercent() < 60)
         {
            Text.speech(Text.guoye[2]);
         }
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":110 / 3,
            "element":Element.ICE,
            "elementDegree":25,
            "statusEffect":Status.FREEZE,
            "statusDegree":2,
            "statusChance":(isHard ? 300 : 100)
         });
      }
      
      public function slash() : *
      {
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":20,
            "element":Element.WIND,
            "elementDegree":25,
            "statusEffect":Status.DISABLE,
            "statusDegree":1,
            "statusChance":(isHard ? 30 : 15),
            "buffEffect":Stats.MAGIC_DEFENCE,
            "buffDegree":-25,
            "buffChance":(isHard ? 22 : 11)
         });
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
         this.counterSpell = true;
         graphic.animate("magic1");
      }
   }
}

