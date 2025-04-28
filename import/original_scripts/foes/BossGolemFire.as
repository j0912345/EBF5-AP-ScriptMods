package foes
{
   public class BossGolemFire extends Foe
   {
      public static var iconInfo:Array = [14,2];
      
      public var textCount:int = 1;
      
      public var limitsBroken:Boolean = false;
      
      public function BossGolemFire(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "GolemBoss";
         graphicScale = 88;
         skin = 1;
         icon = 1116;
         catchRate = Catching.MEGA_BOSS_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 7000;
         attack = 6;
         magicAttack = 6;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 2;
         hit2HP = 6;
         elementalResistance[Element.FIRE] = -2;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = -1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = 0;
            elementalResistance[Element.HOLY] = 1;
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
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         buffResistance[Stats.DEFENCE] = 1.4;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         EXP = 1100;
         AP = 60;
         SP = 60;
         gold = 500;
         dropList = [[Items.magma,100],[Items.opal,100],[Items.amber,100],[Items.topaz,100],[Items.ruby,100]];
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
            if(Text.speech(Text.vulcan[2],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2 && getHpPercent() < 70)
         {
            if(Text.speech(Text.vulcan[3],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 50)
         {
            if(Text.speech(Text.vulcan[4],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 30)
         {
            if(Text.speech(Text.vulcan[6],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         var _loc1_:int = Math.random() * 3;
         if(getHpPercent() < 75)
         {
            _loc1_ = Math.random() * 8;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 4 + 4;
         }
         if(getHpPercent() < 20 && buffs[Stats.MAGIC_ATTACK] <= 110 && buffs[Stats.MAGIC_DEFENCE] <= 110)
         {
            _loc1_ = 8;
         }
         if(isHard && skin == 3 && !this.limitsBroken)
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
         spawnFoe(Options.altFoes ? [BitFire,BitHoly,BitIce,BitPoison,BitThunder,BitWater,BitWind] : [BitFire,BitThunder,BitWind,BitPoison],this.level + _loc2_);
         if(getHpPercent() < 50 || Math.random() < 0.33)
         {
            spawnFoe(Options.altFoes ? [BitFire,BitHoly,BitIce,BitPoison,BitThunder,BitWater,BitWind] : [BitFire,BitThunder,BitWind,BitPoison],this.level + _loc2_);
         }
         if(!Battle.selectedTarget && _loc1_ == 0)
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special5");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 7)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 8)
         {
            graphic.animate("defend1");
         }
      }
      
      public function skinDamage() : *
      {
         if(getHpPercent() < 75 && graphic.skin == 1)
         {
            ++graphic.skin;
            ++skin;
         }
         if(getHpPercent() < 40 && graphic.skin == 2)
         {
            ++graphic.skin;
            ++skin;
         }
      }
      
      public function attack1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(90,Element.EARTH,25,Status.STAGGER,1,isHard ? 30 : 20);
      }
      
      public function attack2() : *
      {
         Battle.targetType = Target.ALL_STANDBY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":90
         });
      }
      
      public function special2() : *
      {
         Skills.basicFoeAttack(240 / 3,Element.FIRE,100,isHard ? Status.SCORCHED : Status.BURN,3,100);
      }
      
      public function special3() : *
      {
         Battle.selectedTarget = Battle.extraRandomPlayer();
         Skills.basicFoeAttack(400 / 6,Element.FIRE,100,isHard ? Status.SCORCHED : Status.BURN,3,100);
      }
      
      public function special5() : *
      {
         Battle.selectedTarget = Battle.extraRandomPlayer();
         Battle.shake("tiny");
         Skills.basicFoeMagic(420 / 6,Element.BOMB,100,Status.DISABLE,3,isHard ? 100 : 0);
         graphic.makeMagic(EffectSmash2);
      }
      
      public function special1() : *
      {
         if(isHard && skin == 3 && !this.limitsBroken)
         {
            Battle.selectedSkill = Spells.supernova;
            castSpell("Supernova");
            this.limitsBroken = true;
            Text.speech(Text.vulcan[5],{"skin":graphic.skin});
         }
         else
         {
            Battle.targetType = Target.ALL_ENEMY;
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "element":Element.WIND,
               "elementDegree":100,
               "damage":60,
               "statusEffect":Status.SYPHON,
               "statusDegree":3,
               "statusChance":100,
               "accuracy":300
            });
         }
      }
      
      public function special4() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.WIND,
            "elementDegree":100,
            "damage":26,
            "statusEffect":Status.DISPEL,
            "statusDegree":1,
            "statusChance":(isHard ? 100 : 66),
            "accuracy":150
         });
      }
      
      public function special44() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.WIND,
            "elementDegree":100,
            "damage":26,
            "statusEffect":Status.CURSE,
            "statusDegree":5,
            "statusChance":100,
            "accuracy":150
         });
      }
      
      public function defend1() : *
      {
         buff(Stats.DEFENCE,isHard ? 50 : 30);
         buff(Stats.MAGIC_DEFENCE,isHard ? 50 : 30);
         buff(Stats.ATTACK,isHard ? 50 : 30);
         buff(Stats.MAGIC_ATTACK,isHard ? 50 : 30);
         if(isHard)
         {
            Skills.giveStatus(this,Status.HASTE,1);
         }
         var _loc1_:int = 0;
         if(getHpPercent() < 90)
         {
            _loc1_ = 1;
         }
         if(getHpPercent() < 60)
         {
            _loc1_ = 2;
         }
         if(getHpPercent() < 30)
         {
            _loc1_ = 3;
         }
         spawnFoe(Options.altFoes ? [BitFire,BitHoly,BitIce,BitPoison,BitThunder,BitWater,BitWind] : [BitFire,BitThunder,BitWind,BitPoison],this.level + _loc1_);
      }
      
      public function magic1() : *
      {
         var _loc1_:int = Math.random() * 4;
         var _loc2_:String = FoeAI.getBestElement([Element.BOMB,Element.FIRE,Element.WATER,Element.EARTH]);
         if(Math.random() < 0.66)
         {
            if(_loc2_ == Element.WATER)
            {
               _loc1_ = 0;
            }
            if(_loc2_ == Element.EARTH)
            {
               _loc1_ = 1;
            }
            if(_loc2_ == Element.FIRE)
            {
               _loc1_ = 2;
            }
            if(_loc2_ == Element.BOMB)
            {
               _loc1_ = 3;
            }
         }
         if(_loc1_ == 0)
         {
            castRandomMultiSpell(Spells.scald,6);
         }
         if(_loc1_ == 1)
         {
            castMultiSpell(Spells.quakespikes);
         }
         if(_loc1_ == 2)
         {
            castMultiSpell(Spells.firespire);
         }
         if(_loc1_ == 3)
         {
            castRandomMultiSpell(Spells.bullet,6);
         }
      }
   }
}

