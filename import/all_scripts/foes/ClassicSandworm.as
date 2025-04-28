package foes
{
   public class ClassicSandworm extends Foe
   {
      public var c:int = 0;
      
      public function ClassicSandworm(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicSandwormMC";
         graphicScale = 93;
         skin = 1;
         icon = 1191;
         catchRate = Catching.SANDWORM_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 2266;
         hit2HP = 6;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.4;
         evade = 4;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0.5;
         statusResistance[Status.SYPHON_DISABLE] = 0.3;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         buffResistance[Stats.DEFENCE] = 1.4;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1.4;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BIO] = -1;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 280;
         AP = 30;
         SP = 30;
         gold = 350;
         dropList = [[Items.claw,100],[Items.claw,100],[Items.spike,100],[Items.spike,100],[Items.virus,100]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         if(getHpPercent() < 90)
         {
            Text.speech(Text.ebf2[13]);
         }
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 80)
         {
            _loc1_ = Math.random() * 4 + 1;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 8 + 1;
         }
         if(status[Status.SYPHON])
         {
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
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
            graphic.animate("special1");
         }
         if(_loc1_ == 3)
         {
            graphic.setXY();
            graphic.animate("special2");
         }
         if(_loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("special3");
         }
         if(_loc1_ == 5)
         {
            graphic.setXY();
            graphic.animate("special4");
         }
         if(_loc1_ == 6)
         {
            graphic.setXY();
            graphic.animate("special3");
         }
         if(_loc1_ == 7)
         {
            graphic.setXY();
            graphic.animate("special4");
         }
         if(_loc1_ == 8)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(Battle.foeCount() == 1)
         {
            ++this.c;
         }
         if(this.c >= 3)
         {
            this.c = 0;
            spawnFoe([ClassicSandwormTail],this.level,0,1,true);
            spawnFoe([ClassicWaspRed],this.level,0,2,true);
         }
      }
      
      public function attack1() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":150
         });
      }
      
      public function attack2() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":200,
            "buffEffect":Stats.DEFENCE,
            "buffChance":(isHard ? 100 : 50),
            "buffDegree":(isHard ? -30 : -20)
         });
      }
      
      public function special1() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":70,
            "accuracy":150,
            "element":Element.WIND,
            "elementDegree":100,
            "buffEffect":Stats.MAGIC_ATTACK,
            "buffChance":(isHard ? 100 : 50),
            "buffDegree":-30
         });
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":70,
            "accuracy":150,
            "element":Element.EARTH,
            "elementDegree":100,
            "buffEffect":Stats.ACCURACY,
            "buffChance":(isHard ? 50 : 25),
            "buffDegree":-30
         });
      }
      
      public function special3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":140,
            "accuracy":120,
            "element":Element.BIO,
            "elementDegree":100,
            "statusEffect":Status.POISON,
            "statusChance":(isHard ? 100 : 60),
            "statusDegree":(isHard ? 5 : 2)
         });
      }
      
      public function special4(param1:int = 1) : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         var _loc2_:String = [null,Stats.ATTACK,Stats.MAGIC_ATTACK,Stats.DEFENCE,Stats.MAGIC_DEFENCE][param1];
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":160 / 4,
            "accuracy":120,
            "element":Element.BIO,
            "elementDegree":100,
            "buffEffect":_loc2_,
            "buffChance":(isHard ? 60 : 40),
            "buffDegree":-30
         });
      }
      
      public function onHitFunction() : *
      {
         if(getHpPercent() < 10)
         {
            readyCounterAttack(1);
         }
         else if(getHpPercent() < 50)
         {
            readyCounterAttack(0.3);
         }
         else
         {
            readyCounterAttack(0.2);
         }
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         if(getHpPercent() < 80)
         {
            graphic.animate("special3");
         }
         if(getHpPercent() < 20)
         {
            graphic.animate("special4");
         }
      }
   }
}

