package foes
{
   public class ArcadeRobo extends Foe
   {
      public static var iconInfo:Array = [30,3];
      
      public function ArcadeRobo(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 100;
         skin = 3;
         icon = 1200;
         catchRate = Catching.ROBO_RATE;
         boxSize = 1;
         HP = 112;
         attack = 2;
         magicAttack = 2;
         defence = 40;
         magicDefence = 40;
         accuracy = 4;
         evade = 4;
         hit2HP = 8;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0.2;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0.2;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.6;
         buffResistance[Stats.MAGIC_ATTACK] = 1.2;
         buffResistance[Stats.DEFENCE] = 1.6;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.2;
         buffResistance[Stats.EVADE] = 1.2;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.THUNDER] = -1;
            elementalResistance[Element.HOLY] = -1;
            statusResistance[Status.SYPHON] = 0;
            statusResistance[Status.DISPEL] = 0;
            buffResistance[Stats.ACCURACY] = 1.4;
            buffResistance[Stats.EVADE] = 1.4;
         }
         EXP = 220;
         AP = 16;
         SP = 16;
         gold = 111;
         dropList = [[Items.steel,75],[Items.pipe,75],[Items.plastic,75],[Items.gear,75],[Items.cpu,25]];
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
         BossDevourer.levelBoost(this,22);
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.ROBO,true);
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
            _loc1_ = 2;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 1;
         }
         if(getHpPercent() < 90)
         {
            Text.speech(Text.robo[1]);
         }
         if(getHpPercent() < 50)
         {
            Text.speech(Text.robo[2]);
         }
         if(getHpPercent() < 30)
         {
            Text.speech(Text.robo[7]);
         }
         if(Battle.foeCount() == 1)
         {
            Text.speech(Text.robo[6]);
         }
         if(Battle.selectedTarget && (Battle.selectedTarget.status[Status.STUN] || Battle.selectedTarget.status[Status.CONFUSE]) && Battle.playerCount() > 1)
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         }
         if(_loc1_ == 0)
         {
            Battle.selectedTarget = FoeAI.getBestDispelPlayer();
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
            graphic.setXY();
            graphic.animate("attack3");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("attack4");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
      }
      
      public function attack3() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "accuracy":150,
            "damage":125,
            "element":Element.BOMB,
            "elementDegree":25,
            "statusEffect":Status.DISPEL,
            "statusDegree":1,
            "statusChance":100,
            "critical":200
         });
      }
      
      public function attack4(param1:int) : *
      {
         if(param1 != 3 && !status[Status.SYPHON])
         {
            Battle.finalHit = false;
         }
         if(param1 == 1)
         {
            Skills.customFoeAttack({
               "type":Stats.ATTACK,
               "accuracy":100,
               "damage":50 / 2,
               "critical":200
            });
         }
         if(param1 == 2)
         {
            Skills.customFoeAttack({
               "type":Stats.ATTACK,
               "accuracy":125,
               "damage":40 / 4,
               "element":Element.THUNDER,
               "elementDegree":25,
               "critical":200
            });
         }
         if(param1 == 3)
         {
            Skills.customFoeAttack({
               "type":Stats.ATTACK,
               "accuracy":125,
               "damage":10,
               "element":Element.THUNDER,
               "elementDegree":25,
               "statusEffect":Status.STUN,
               "statusDegree":(isHard ? 5 : 2),
               "statusChance":100,
               "critical":200
            });
         }
      }
      
      public function magic1() : *
      {
         castSpell("RobboExplosion");
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
         graphic.animate("magic1");
      }
   }
}

