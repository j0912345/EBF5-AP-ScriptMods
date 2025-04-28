package foes
{
   public class BossGolemWater extends Foe
   {
      public static var iconInfo:Array = [14,1];
      
      public var textCount:int = 1;
      
      public var limitsBroken:Boolean = false;
      
      public function BossGolemWater(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "GolemBoss";
         graphicScale = 88;
         skin = 4;
         icon = 1115;
         catchRate = Catching.BOSS_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 5800;
         attack = 6;
         magicAttack = 6;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 2;
         hit2HP = 6;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.8;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = 1.3;
            elementalResistance[Element.HOLY] = 0.5;
            elementalResistance[Element.DARK] = 0.5;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         buffResistance[Stats.DEFENCE] = 1.4;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         EXP = 1000;
         AP = 60;
         SP = 60;
         gold = 500;
         dropList = [[Items.rune2,100],[Items.ice,100],[Items.water,100],[Items.sapphire,100],[Items.diamond,100]];
         init(param1,param2,param3,param4);
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(this.textCount == 1 && getHpPercent() < 85)
         {
            if(Text.speech(Text.poseidon[2],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2 && getHpPercent() < 70)
         {
            if(Text.speech(Text.poseidon[3],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 50)
         {
            if(Text.speech(Text.poseidon[4],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 30)
         {
            if(Text.speech(Text.poseidon[6],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         var _loc1_:int = Math.random() * 3;
         if(getHpPercent() < 75)
         {
            _loc1_ = Math.random() * 6 + 1;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 5 + 3;
         }
         if(getHpPercent() < 20 && buffs[Stats.DEFENCE] <= 120 && buffs[Stats.MAGIC_DEFENCE] <= 140)
         {
            _loc1_ = 8;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 3;
         }
         if(isHard && skin == 6 && !this.limitsBroken)
         {
            _loc1_ = 6;
         }
         var _loc2_:int = 0;
         if(getHpPercent() < 90)
         {
            _loc2_ = 1;
         }
         if(getHpPercent() < 60)
         {
            _loc2_ = 2;
         }
         if(getHpPercent() < 30)
         {
            _loc2_ = 3;
         }
         spawnFoe(Options.altFoes ? [BitFire,BitHoly,BitIce,BitPoison,BitThunder,BitWater,BitWind] : [BitHoly,BitWater,BitIce,BitPoison],this.level + _loc2_);
         if(getHpPercent() < 50 || Math.random() < 0.33)
         {
            spawnFoe(Options.altFoes ? [BitFire,BitHoly,BitIce,BitPoison,BitThunder,BitWater,BitWind] : [BitHoly,BitWater,BitIce,BitPoison],this.level + _loc2_);
         }
         if(!Battle.selectedTarget && _loc1_ == 0)
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("special9");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special7");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special8");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special10");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("special6");
         }
         if(_loc1_ == 7)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 8)
         {
            graphic.animate("defend2");
         }
      }
      
      public function skinDamage() : *
      {
         if(getHpPercent() < 75 && graphic.skin == 4)
         {
            ++graphic.skin;
            ++skin;
         }
         if(getHpPercent() < 40 && graphic.skin == 5)
         {
            ++graphic.skin;
            ++skin;
         }
      }
      
      public function attack1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(75,Element.EARTH,25,Status.STAGGER,1,isHard ? 30 : 20);
      }
      
      public function attack2() : *
      {
         Battle.targetType = Target.ALL_STANDBY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":75
         });
      }
      
      public function special9() : *
      {
         Skills.basicFoeAttack(110 / 3,Element.WATER,100,Status.WET,isHard ? 9 : 6,100);
      }
      
      public function special8() : *
      {
         Battle.selectedTarget = Battle.extraRandomPlayer();
         Battle.shake("tiny");
         Skills.basicFoeMagic(280 / 6,Element.HOLY,100,Status.WEAKEN,isHard ? 5 : 3,100);
      }
      
      public function special7() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.ICE,
            "elementDegree":100,
            "damage":60 / 2,
            "statusEffect":Status.CHILL,
            "statusDegree":(isHard ? 3 : 2),
            "statusChance":(isHard ? 200 : 100),
            "accuracy":300
         });
      }
      
      public function special6() : *
      {
         if(isHard && skin == 6 && !this.limitsBroken)
         {
            castSpell("Tsunami");
            this.limitsBroken = true;
            Text.speech(Text.poseidon[5],{"skin":graphic.skin});
         }
         else
         {
            Battle.targetType = Target.ALL_ENEMY;
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "element":Element.WIND,
               "elementDegree":100,
               "damage":40,
               "statusEffect":Status.DISABLE,
               "statusDegree":2,
               "statusChance":(isHard ? 100 : 66),
               "accuracy":300
            });
         }
      }
      
      public function special10() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.WIND,
            "elementDegree":100,
            "damage":60,
            "statusEffect":Status.DISPEL,
            "statusDegree":1,
            "statusChance":(isHard ? 100 : 66),
            "accuracy":300
         });
      }
      
      public function defend2() : *
      {
         buff(Stats.DEFENCE,isHard ? 100 : 50);
         buff(Stats.MAGIC_DEFENCE,isHard ? 100 : 50);
         if(isHard)
         {
            Skills.giveStatus(this,Status.HASTE,1);
         }
      }
      
      public function magic2() : *
      {
         var _loc1_:int = Math.random() * 4;
         var _loc2_:String = FoeAI.getBestElement([Element.WATER,Element.ICE,Element.EARTH,Element.BIO]);
         if(Math.random() < 0.66)
         {
            if(_loc2_ == Element.WATER)
            {
               _loc1_ = 1;
            }
            if(_loc2_ == Element.ICE)
            {
               _loc1_ = 0;
            }
            if(_loc2_ == Element.EARTH)
            {
               _loc1_ = 2;
            }
            if(_loc2_ == Element.BIO)
            {
               _loc1_ = 3;
            }
         }
         if(_loc1_ == 0)
         {
            castMultiSpell(Spells.frostfragment);
         }
         if(_loc1_ == 1)
         {
            castMultiSpell(Spells.pouringpike);
         }
         if(_loc1_ == 2)
         {
            castMultiSpell(Spells.quakespikes);
         }
         if(_loc1_ == 3)
         {
            castMultiSpell(Spells.shreddingshrub);
         }
      }
   }
}

