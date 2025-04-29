package foes
{
   public class ArcadeTreagure extends Foe
   {
      public static var iconInfo:Array = [30,6];
      
      private var berserked:Boolean = false;
      
      public function ArcadeTreagure(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 95;
         skin = 6;
         icon = 1208;
         catchRate = Catching.TREAGURE_RATE;
         boxSize = 2;
         hit2HP = 5;
         HP = 2440;
         attack = 4;
         magicAttack = 4;
         defence = 6;
         magicDefence = 3;
         accuracy = 4.2;
         evade = 3.8;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = -0.5;
         elementalResistance[Element.DARK] = 2;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         buffResistance[Stats.DEFENCE] = 1.4;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 0.5;
            elementalResistance[Element.THUNDER] = 0.5;
            elementalResistance[Element.ICE] = 0.5;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.BIO] = 0.5;
            elementalResistance[Element.BOMB] = 0.5;
            elementalResistance[Element.WATER] = 0.5;
            elementalResistance[Element.WIND] = 0.5;
            statusResistance[Status.DISPEL] = 0;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
         }
         EXP = 330;
         AP = 28;
         SP = 22;
         gold = 500;
         dropList = [[Items.topaz,75],[Items.emerald,75],[Items.sapphire,75],[Items.ruby,75],[Items.diamond,25]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,30);
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.TREAGURE,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(Battle.foeCount() < 2 && !this.berserked)
         {
            Skills.giveStatus(this,Status.BERSERK,3);
            this.berserked = true;
         }
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 70)
         {
            _loc1_ = Math.random() * 5;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = 1 + Math.random() * 4;
         }
         if(getHpPercent() < 20)
         {
            _loc1_ = 5;
         }
         if(_loc1_ == 1 && Math.random() < 0.4)
         {
            _loc1_ = 3;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 3;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
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
            graphic.setXY();
            graphic.animate("attack3");
         }
         if(_loc1_ == 3)
         {
            graphic.setXY();
            graphic.animate("special4");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 5)
         {
            graphic.setXY();
            graphic.animate("special4");
         }
      }
      
      public function attack1() : *
      {
         Text.speech(Text.treagure[1]);
         Skills.basicFoeAttack(160 / 3);
      }
      
      public function attack2() : *
      {
         Text.speech(Text.treagure[1]);
         Skills.basicFoeAttack(65,null,null,Status.STAGGER,2,isHard ? 50 : 0);
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
      }
      
      public function attack3() : *
      {
         Text.speech(Text.treagure[1]);
         Battle.targetType = CENTER_ENEMY;
         Skills.basicFoeAttack(100,Element.BOMB,25,Status.DISPEL,1,isHard ? 100 : 50);
      }
      
      public function magic3() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.LOVED,3);
         }
         buff(Stats.EVADE,50);
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":150,
            "buffEffect":Stats.MAGIC_ATTACK,
            "buffDegree":-30,
            "buffChance":100
         });
      }
      
      public function special4() : *
      {
         Text.speech(Text.treagure[1]);
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         graphic.setXY();
         graphic.makeMagic(GemThrow,graphic.x - 30 - Math.random() * 40,graphic.y - 100 - Math.random() * 25);
      }
      
      public function gem(param1:int) : *
      {
         Text.speech(Text.treagure[2]);
         Text.speech(Text.treagure[5]);
         Text.speech(Text.treagure[6]);
         if(param1 == 1)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":25,
               "element":Element.ICE,
               "elementDegree":25,
               "statusEffect":Status.FREEZE,
               "statusDegree":2,
               "statusChance":(isHard ? 100 : 66)
            });
         }
         if(param1 == 2)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":25,
               "element":Element.THUNDER,
               "elementDegree":25,
               "statusEffect":Status.STUN,
               "statusDegree":1,
               "statusChance":(isHard ? 100 : 66)
            });
         }
         if(param1 == 3)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":25,
               "element":Element.FIRE,
               "elementDegree":25,
               "statusEffect":(isHard ? Status.SCORCHED : Status.BURN),
               "statusDegree":2,
               "statusChance":(isHard ? 100 : 66)
            });
         }
         if(param1 == 4)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":25,
               "element":Element.WIND,
               "elementDegree":25,
               "statusEffect":Status.SYPHON,
               "statusDegree":2,
               "statusChance":(isHard ? 100 : 66)
            });
         }
         if(param1 == 5)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":25,
               "element":Element.HOLY,
               "elementDegree":25,
               "statusEffect":Status.DOOM,
               "statusDegree":3,
               "statusChance":(isHard ? 100 : 66)
            });
         }
         if(param1 == 6)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":25,
               "element":Element.BOMB,
               "elementDegree":25,
               "statusEffect":Status.CONFUSE,
               "statusDegree":(isHard ? 2 : 1),
               "statusChance":(isHard ? 100 : 66)
            });
         }
         if(param1 == 7)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":25,
               "element":Element.WATER,
               "elementDegree":25,
               "statusEffect":Status.DISABLE,
               "statusDegree":2,
               "statusChance":(isHard ? 100 : 66)
            });
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
         graphic.animate("magic2");
      }
   }
}

