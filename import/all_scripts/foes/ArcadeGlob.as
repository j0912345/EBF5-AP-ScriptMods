package foes
{
   public class ArcadeGlob extends Foe
   {
      public static var iconInfo:Array = [30,1];
      
      public function ArcadeGlob(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 100;
         skin = 1;
         icon = 1201;
         catchRate = Catching.GLOB_RATE;
         boxSize = 1;
         HP = 3134;
         attack = 2.5;
         magicAttack = 2.5;
         defence = 2;
         magicDefence = 2;
         accuracy = 4.2;
         evade = 4.2;
         hit2HP = 8;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = -0.5;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = 0.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.2;
         statusResistance[Status.FREEZE_CHILL] = 0.2;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.6;
         buffResistance[Stats.MAGIC_ATTACK] = 1.2;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.6;
         buffResistance[Stats.EVADE] = 1.2;
         buffResistance[Stats.HP] = 1.5;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 1;
            elementalResistance[Element.DARK] = -0.5;
            elementalResistance[Element.BIO] = -1;
            statusResistance[Status.STUN] = 0;
            statusResistance[Status.FREEZE] = 0;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
            buffResistance[Stats.DEFENCE] = 1.4;
         }
         EXP = 211;
         AP = 17;
         SP = 17;
         gold = 12;
         dropList = [[Items.turd,75],[Items.root,75],[Items.amber,75],[Items.virus,75],[Items.garlic,25]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(Game.mode == Game.BATTLE)
         {
            statusDisplay.y += 40;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,23);
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.GLOB,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 3;
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 2;
         }
         if(Battle.selectedTarget && Battle.selectedTarget.status[Status.SHROUD] && Battle.playerCount() > 1)
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         }
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
         if(!Battle.selectedTarget)
         {
            graphic.animate("evade");
            Skills.giveStatus(this,Status.BERSERK,2);
            return;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special3");
         }
      }
      
      public function special3(param1:int) : *
      {
         if(param1 == 1)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "accuracy":125,
               "damage":70 / 5,
               "element":Element.WIND,
               "elementDegree":25,
               "statusEffect":Status.DISPEL,
               "statusDegree":1,
               "statusChance":100,
               "randomness":60
            });
         }
         if(param1 == 2)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "accuracy":125,
               "damage":70 / 5,
               "element":Element.WIND,
               "elementDegree":25,
               "statusEffect":(Math.random() < 0.5 ? Status.STAGGER : Status.SYPHON),
               "statusDegree":3,
               "statusChance":(isHard ? 150 : 66),
               "randomness":60
            });
         }
         if(param1 == 3)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "accuracy":125,
               "damage":70 / 5,
               "element":Element.WIND,
               "elementDegree":25,
               "statusEffect":(Math.random() < 0.5 ? Status.STUFFED : Status.DOOM),
               "statusDegree":4,
               "statusChance":(isHard ? 100 : 33),
               "randomness":60
            });
         }
         if(param1 == 4)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "accuracy":125,
               "damage":70 / 5,
               "element":Element.WIND,
               "elementDegree":25,
               "statusEffect":(Math.random() < 0.5 ? Status.WEAKEN : Status.TIRED),
               "statusDegree":6,
               "statusChance":(isHard ? 150 : 66),
               "randomness":60
            });
         }
         if(param1 == 5)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "accuracy":125,
               "damage":70 / 5,
               "element":Element.WIND,
               "elementDegree":25,
               "statusEffect":(Math.random() < 0.75 ? Status.CONFUSE : Status.STUN),
               "statusDegree":2,
               "statusChance":(isHard ? 100 : 33),
               "randomness":60
            });
         }
         if(param1 == 6)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "accuracy":150,
               "damage":70 / 5,
               "element":Element.WIND,
               "elementDegree":25,
               "statusEffect":Status.SHROUD,
               "statusDegree":5,
               "statusChance":100,
               "randomness":60
            });
         }
      }
      
      public function magic2() : *
      {
         if(getHpPercent() < 50)
         {
            Text.speech(Text.glob[2]);
         }
         var _loc1_:int = Math.random() * 2;
         if(_loc1_ == 0)
         {
            castRandomMultiSpell(Spells.arcadeRoots,3);
         }
         if(_loc1_ == 1)
         {
            castMultiSpell(Spells.arcadeVines);
            Skills.giveStatus(this,isHard ? Status.VIRUS : Status.POISON,isHard ? 1 : 2);
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.33);
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

