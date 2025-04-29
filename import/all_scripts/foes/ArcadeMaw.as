package foes
{
   public class ArcadeMaw extends Foe
   {
      public static var iconInfo:Array = [30,8];
      
      public var s:int = 1;
      
      private var push:Boolean = false;
      
      private var spell:int = 0;
      
      public var blood:int = 80;
      
      public function ArcadeMaw(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 115;
         skin = 8;
         icon = 1210;
         catchRate = Catching.MAW_RATE;
         boxSize = 2;
         cantFlee = true;
         HP = 4133;
         attack = 2.5;
         magicAttack = 3;
         defence = 4;
         magicDefence = 4;
         accuracy = 5.5;
         evade = 4.5;
         hit2HP = 4;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = -0.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 2;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 0;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.5;
         buffResistance[Stats.MAGIC_ATTACK] = 1.5;
         buffResistance[Stats.DEFENCE] = 1.5;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
         buffResistance[Stats.ACCURACY] = 1.5;
         buffResistance[Stats.EVADE] = 1.5;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_HIGH;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BOMB] = 1;
            buffResistance[Stats.ATTACK] = 1.8;
            buffResistance[Stats.MAGIC_ATTACK] = 1.8;
            buffResistance[Stats.DEFENCE] = 1.6;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.6;
            buffResistance[Stats.ACCURACY] = 1.6;
            buffResistance[Stats.EVADE] = 1.6;
         }
         EXP = 999;
         AP = 66;
         SP = 66;
         gold = 666;
         dropList = [[Items.claw,100],[Items.claw,100],[Items.spike,100],[Items.spike,100],[Items.darkmatter,100]];
         init(param1,param2,param3,param4);
         onHit = this.onHitFunction;
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,33);
         if(Game.mode == Game.BATTLE)
         {
            statusDisplay.x += 30;
            statusDisplay.y -= 10;
            graphic.point3.x += 30;
            graphic.point3.y -= 5;
            graphic.point4.x += 60;
         }
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.MAW,true);
            BGM.play(BGM.NO_X1B,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         Text.speech(Text.maw[7]);
         if(getHpPercent() < 70)
         {
            Text.speech(Text.maw[2]);
         }
         if(getHpPercent() < 55)
         {
            Text.speech(Text.maw[8]);
         }
         if(getHpPercent() < 40)
         {
            Text.speech(Text.maw[3]);
         }
         if(getHpPercent() < 30)
         {
            Text.speech(Text.maw[5]);
         }
         if(getHpPercent() < 15)
         {
            Text.speech(Text.maw[9]);
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
         graphic.loops = 0;
         if(getHpPercent() < 70)
         {
            graphic.loops = 1;
         }
         if(getHpPercent() < 40)
         {
            graphic.loops = 2;
         }
         var _loc1_:int = Math.random() * 2;
         if(this.s == 0)
         {
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
            this.spell = 0;
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
            this.spell = 1;
         }
         this.push = true;
      }
      
      public function attack1() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":250 / 7,
            "statusEffect":Status.DISABLE,
            "statusDegree":3,
            "statusChance":200,
            "critical":300
         });
      }
      
      public function special5() : *
      {
         Text.speech(Text.maw[4]);
         Skills.giveStatus(this,Status.POISON,3);
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "accuracy":150,
            "damage":35,
            "element":Element.BIO,
            "elementDegree":25,
            "statusEffect":(isHard ? Status.VIRUS : Status.POISON),
            "statusDegree":5,
            "statusChance":100,
            "buffEffect":Stats.DEFENCE,
            "buffDegree":-25,
            "buffChance":100
         });
      }
      
      public function magic1() : *
      {
         if(getHpPercent() < 70)
         {
            this.spell += 2;
         }
         if(getHpPercent() < 40)
         {
            this.spell += 2;
         }
         if(this.spell == 0)
         {
            castRandomMultiSpell(Spells.arcadeTeeth,2);
         }
         if(this.spell == 1)
         {
            castMultiSpell(Spells.arcadeTentacles1);
         }
         if(this.spell == 2)
         {
            castRandomMultiSpell(Spells.arcadeTeeth,3);
         }
         if(this.spell == 3)
         {
            castMultiSpell(Spells.arcadeTentacles2);
         }
         if(this.spell == 4)
         {
            castRandomMultiSpell(Spells.arcadeTeeth,4);
         }
         if(this.spell == 5)
         {
            castMultiSpell(Spells.arcadeTentacles3);
         }
      }
      
      public function tentacles(param1:int) : *
      {
         var _loc2_:int = 60;
         if(param1 == 2)
         {
            _loc2_ = 90 / 2;
         }
         if(param1 == 3)
         {
            _loc2_ = 120 / 3;
         }
         if(Battle.finalHit && Boolean(this.push))
         {
            Global.pushedPlayer = Battle.players.indexOf(Battle.selectedTarget);
            this.push = false;
            Skills.customFoeAttack({
               "type":Stats.ATTACK,
               "damage":_loc2_,
               "critical":300
            });
         }
         else
         {
            Skills.customFoeAttack({
               "type":Stats.ATTACK,
               "damage":_loc2_,
               "critical":300
            });
         }
      }
      
      public function teeth() : *
      {
         Text.speech(Text.maw[1]);
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":70 / 3,
            "statusEffect":Status.DOOM,
            "statusDegree":3,
            "statusChance":100,
            "critical":300
         });
      }
      
      public function onHitFunction() : *
      {
         if(getHpPercent() < this.blood)
         {
            readyCounterAttack(1);
            this.blood -= 20;
            if(Options.counterAttacks)
            {
               this.blood += 8;
            }
         }
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         graphic.animate("special5");
      }
   }
}

