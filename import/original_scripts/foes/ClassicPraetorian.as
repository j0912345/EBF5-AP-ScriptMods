package foes
{
   public class ClassicPraetorian extends Foe
   {
      public var s:int = 0;
      
      public var ionFlag:int = 0;
      
      public var ionn:Boolean = false;
      
      public var blood:int = 85;
      
      public function ClassicPraetorian(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicPraetorianMC";
         graphicScale = 100;
         skin = 1;
         icon = 1189;
         catchRate = Catching.PRAETORIAN_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 4377;
         hit2HP = 6;
         attack = 4;
         magicAttack = 8;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.5;
         evade = 5;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.8;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.5;
         buffResistance[Stats.MAGIC_ATTACK] = 1.5;
         buffResistance[Stats.DEFENCE] = 1.5;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
         buffResistance[Stats.ACCURACY] = 1.5;
         buffResistance[Stats.EVADE] = 1.5;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_HIGH;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.DARK] = 0;
            elementalResistance[Element.WIND] = 1;
            statusResistance[Status.DRY_WET] = 0.5;
            statusResistance[Status.BURN_SCORCH] = 0;
            statusResistance[Status.CURSE] = 0.5;
            statusResistance[Status.WEAKENED_TIRED] = 0.5;
            statusResistance[Status.DISPEL] = 0;
            buffResistance[Stats.ACCURACY] = 1.8;
            buffResistance[Stats.DEFENCE] = 1.8;
         }
         EXP = 450;
         AP = 33;
         SP = 33;
         gold = 500;
         dropList = [[Items.iron,100],[Items.iron,100],[Items.ruby,100],[Items.cpu,100],[Items.titanium,100]];
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
         if(getHpPercent() < 95)
         {
            Text.speech(Text.ebf4[18]);
         }
         if(getHpPercent() < 85)
         {
            Text.speech(Text.ebf4[19]);
         }
         if(getHpPercent() < 85)
         {
            Text.speech(Text.ebf4[20]);
         }
         if(getHpPercent() < 75)
         {
            Text.speech(Text.ebf4[21]);
         }
         if(getHpPercent() < 75)
         {
            Text.speech(Text.ebf4[22]);
         }
         if(Battle.foeCount() < (Options.altFoes ? 4 : 3))
         {
            ++this.s;
            if(this.s >= 5 || getHpPercent() < 40 && this.s >= 3)
            {
               this.s = 0;
               if(FoeAI.getBestElement([Element.FIRE,Element.ICE]) == Element.FIRE)
               {
                  spawnFoe([ClassicCrystalRed],this.level);
                  spawnFoe([ClassicCrystalRed],this.level);
               }
               else
               {
                  spawnFoe([ClassicCrystalBlue],this.level);
                  spawnFoe([ClassicCrystalBlue],this.level);
               }
            }
         }
         if(getHpPercent() < 50 && this.ionFlag == 0)
         {
            this.ionFlag = 1;
         }
         var _loc1_:int = Math.random() * 5;
         if(getHpPercent() < 70)
         {
            _loc1_ = Math.random() * 7 + 1;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 6 + 1;
         }
         if(_loc1_ == 2 && buffs[Stats.ATTACK] >= 140)
         {
            _loc1_ = 4;
         }
         if(_loc1_ == 2 && buffs[Stats.MAGIC_ATTACK] >= 140)
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 7 && buffs[Stats.DEFENCE] >= 140 && buffs[Stats.MAGIC_DEFENCE] >= 140)
         {
            _loc1_ = 5;
         }
         if(status[Status.CHARGE])
         {
            _loc1_ = 1;
            this.ionn = true;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 6)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 7)
         {
            graphic.animate("special1");
         }
         ++this.ionFlag;
         if(this.ionFlag == 7)
         {
            Skills.giveStatus(this,Status.CHARGE,3);
         }
      }
      
      public function attack1() : *
      {
         Battle.selectedTarget.status[Status.INVISIBLE] = 0;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":120,
            "element":Element.NONE,
            "elementDegree":100,
            "buffEffect":Stats.HP,
            "buffDegree":-20,
            "buffChance":100
         });
      }
      
      public function attack2() : *
      {
         Battle.selectedTarget.status[Status.INVISIBLE] = 0;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":240,
            "element":Element.NONE,
            "elementDegree":100,
            "buffEffect":Stats.HP,
            "buffDegree":-20,
            "buffChance":100
         });
      }
      
      public function attack3() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":150,
            "element":Element.NONE,
            "elementDegree":100,
            "buffEffect":Stats.HP,
            "buffDegree":-10,
            "buffChance":100,
            "statusEffect":Status.DEATH,
            "statusDegree":1,
            "statusChance":(isHard ? 100 : 50)
         });
      }
      
      public function attack4() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.basicFoeAttack(360 / 18,Element.BOMB,50);
      }
      
      public function special1() : *
      {
         this.buff(Stats.DEFENCE,50,true);
         this.buff(Stats.MAGIC_DEFENCE,50,true);
         this.buff(Stats.EVADE,50,true);
         if(isHard)
         {
            Skills.giveStatus(this,Status.DEFEND,1);
         }
      }
      
      public function special2() : *
      {
         var _loc1_:Foe = null;
         this.buff(Stats.ATTACK,50,true);
         this.buff(Stats.MAGIC_ATTACK,50,true);
         for each(_loc1_ in Battle.foes)
         {
            Skills.giveStatus(_loc1_,Status.BRAVE,3);
         }
      }
      
      public function magic1() : *
      {
         var _loc1_:String = null;
         if(Boolean(status[Status.CHARGE]) && this.ionn)
         {
            castSpell("Ion");
            this.ionFlag = 0;
            status[Status.CHARGE] = 0;
            this.ionn = false;
            Text.speech(Text.ebf4[23]);
         }
         else
         {
            _loc1_ = FoeAI.getBestElement([Element.BOMB,Element.DARK,Element.THUNDER,Element.FIRE]);
            if(Math.random() < 0.5)
            {
               _loc1_ = [Element.BOMB,Element.DARK,Element.THUNDER,Element.FIRE][int(Math.random() * 4)];
            }
            if(_loc1_ == Element.FIRE)
            {
               Battle.targetType = Target.CENTER_ENEMY;
               castSpell("BulletHell");
            }
            if(_loc1_ == Element.THUNDER)
            {
               Battle.targetType = Target.CENTER_ENEMY;
               castSpell("PlasmaCross");
            }
            if(_loc1_ == Element.DARK)
            {
               Battle.targetType = Target.CENTER_ENEMY;
               castSpell("AntiMatter");
            }
            if(_loc1_ == Element.BOMB)
            {
               Battle.targetType = Target.ALL_ENEMY;
               castSpell("AirStrike3");
            }
         }
      }
      
      public function onHitFunction() : *
      {
         if(getHpPercent() < this.blood)
         {
            readyCounterAttack(1);
            this.blood -= 15;
         }
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if(getHpPercent() < 20)
         {
            graphic.animate("attack3");
         }
         else if(getHpPercent() < 40)
         {
            graphic.animate("attack2");
         }
         else
         {
            graphic.animate("attack1");
         }
      }
   }
}

