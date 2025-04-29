package foes
{
   public class Glitch1 extends Foe
   {
      public var textCount:int = 1;
      
      public var glitchDamage:int;
      
      public var glitchAcc:int;
      
      public var noType:Boolean = true;
      
      public function Glitch1(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Glitch";
         graphicScale = 78;
         skin = 1;
         icon = 1149;
         catchRate = Catching.BOSS_RATE;
         boxSize = 1;
         cantFlee = true;
         HP = 1001 * 4;
         attack = 4;
         magicAttack = 4;
         defence = 1;
         magicDefence = 1;
         accuracy = 400000;
         evade = 8;
         elementalResistance[Element.FIRE] = -2;
         elementalResistance[Element.ICE] = -2;
         elementalResistance[Element.THUNDER] = -2;
         elementalResistance[Element.WATER] = -2;
         elementalResistance[Element.WIND] = -2;
         elementalResistance[Element.EARTH] = -2;
         elementalResistance[Element.BIO] = -2;
         elementalResistance[Element.BOMB] = -2;
         elementalResistance[Element.HOLY] = -2;
         elementalResistance[Element.DARK] = -2;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 0;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 0;
         buffResistance[Stats.MAGIC_ATTACK] = 0;
         buffResistance[Stats.DEFENCE] = 0;
         buffResistance[Stats.MAGIC_DEFENCE] = 0;
         buffResistance[Stats.ACCURACY] = 0;
         buffResistance[Stats.EVADE] = 0;
         if(Options.extraFoeResistance)
         {
            buffResistance[Stats.ATTACK] = 2;
            buffResistance[Stats.MAGIC_ATTACK] = 2;
            buffResistance[Stats.DEFENCE] = 2;
            buffResistance[Stats.MAGIC_DEFENCE] = 2;
            buffResistance[Stats.ACCURACY] = 2;
            buffResistance[Stats.EVADE] = 2;
            buffResistance[Stats.HP] = 2;
            catchRate *= 2;
         }
         EXP = 1600;
         AP = 60;
         SP = 60;
         gold = 70;
         dropList = [[Items.gamechild,2]];
         if(Options.altFoes)
         {
            EXP = 666;
            AP = 30;
            SP = 20;
            gold = 30;
         }
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         this.glitchDamage = int.MAX_VALUE;
         this.glitchAcc = 99999;
         if(Options.twoPlayerMode)
         {
            this.glitchDamage = 200;
            this.glitchAcc = 150;
            this.noType = false;
         }
         if(Options.onePlayerMode)
         {
            this.glitchDamage = 180;
            this.glitchAcc = 120;
            this.noType = false;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 3;
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
            graphic.animate("attack4");
         }
         if(this.textCount == 1)
         {
            if(Text.speech(Text.glitch[2]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2)
         {
            if(Text.speech(Text.glitch[3]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3)
         {
            if(Text.speech(Text.glitch[4]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4)
         {
            if(Text.speech(Text.glitch[5]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5)
         {
            if(Text.speech(Text.glitch[6]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 6 && getHpPercent() < 50)
         {
            if(Text.speech(Text.glitch[7]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 7 && getHpPercent() < 30)
         {
            if(Text.speech(Text.glitch[8]))
            {
               ++this.textCount;
            }
         }
      }
      
      public function attack1() : *
      {
         var _loc1_:String = Element.ELEMENTS[Math.floor(Math.random() * Element.ELEMENTS.length)];
         Skills.customFoeAttack({
            "type":(this.noType ? Stats.NONE : Stats.ATTACK),
            "damage":this.glitchDamage,
            "element":_loc1_,
            "elementDegree":100,
            "randomness":0,
            "critical":0,
            "accuracy":this.glitchAcc
         });
         spawnFoe(Options.altFoes ? [Glitch1] : [Glitch2],this.level);
         spawnFoe(Options.altFoes ? [Glitch1] : [Glitch2],this.level);
      }
      
      public function attack2() : *
      {
         spawnFoe(Options.altFoes ? [Glitch1] : [Glitch2],this.level);
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":this.glitchAcc,
            "statusEffect":Status.DISPEL,
            "statusChance":(isHard ? 100 : 50),
            "statusDegree":1
         });
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":this.glitchAcc,
            "statusEffect":Status.CONFUSE,
            "statusChance":(isHard ? 100 : 50),
            "statusDegree":2
         });
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":this.glitchAcc,
            "statusEffect":Status.DISABLE,
            "statusChance":(isHard ? 100 : 50),
            "statusDegree":2
         });
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":this.glitchAcc,
            "statusEffect":Status.DOOM,
            "statusChance":(isHard ? 100 : 50),
            "statusDegree":3
         });
      }
      
      public function attack3() : *
      {
         spawnFoe(Options.altFoes ? [Glitch1] : [Glitch2],this.level);
         Battle.selectedTarget = Battle.randomStandby();
         var _loc1_:String = Element.ELEMENTS[Math.floor(Math.random() * Element.ELEMENTS.length)];
         Skills.customFoeAttack({
            "type":(this.noType ? Stats.NONE : Stats.ATTACK),
            "damage":this.glitchDamage,
            "element":_loc1_,
            "elementDegree":100,
            "randomness":0,
            "critical":0,
            "accuracy":this.glitchAcc
         });
         spawnFoe(Options.altFoes ? [Glitch1] : [Glitch2],this.level);
      }
      
      public function attack4() : *
      {
         Skills.customFoeAttack({
            "type":(this.noType ? Stats.NONE : Stats.MAGIC_ATTACK),
            "damage":this.glitchDamage,
            "element":Element.NONE,
            "randomness":0,
            "critical":0,
            "accuracy":this.glitchAcc
         });
         if(Math.random() < 0.5)
         {
            spawnFoe(Options.altFoes ? [Glitch1] : [Glitch2],this.level);
         }
         spawnFoe(Options.altFoes ? [Glitch1] : [Glitch2],this.level);
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

