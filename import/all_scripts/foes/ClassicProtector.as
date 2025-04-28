package foes
{
   public class ClassicProtector extends Foe
   {
      public var c:int = 0;
      
      public var beam:int = 0;
      
      public var beamWait:int = 0;
      
      public function ClassicProtector(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicProtectorMC";
         graphicScale = 105;
         skin = 1;
         icon = 1190;
         catchRate = Catching.PROTECTOR_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 2511;
         hit2HP = 6;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.3;
         evade = 3.8;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.THUNDER] = -1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.HOLY] = 0.5;
         elementalResistance[Element.DARK] = 1.8;
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
            elementalResistance[Element.DARK] = 1;
            elementalResistance[Element.HOLY] = 0;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 0;
         AP = 0;
         SP = 30;
         gold = 0;
         dropList = [[Items.gear,100],[Items.gear,100],[Items.gear,100],[Items.cpu,100],[Items.plutonium,100]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function skinDamage() : *
      {
         if(getHpPercent() < 66 && graphic.skinDamage == 1)
         {
            ++graphic.skinDamage;
            ++graphic.skin;
         }
         if(getHpPercent() < 33 && graphic.skinDamage == 2)
         {
            ++graphic.skinDamage;
            ++graphic.skin;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         var _loc1_:int = Math.random() * 5;
         if(getHpPercent() < 66)
         {
            _loc1_ = Math.random() * 6;
         }
         if(getHpPercent() < 50 && _loc1_ == 1)
         {
            _loc1_ = 8;
         }
         if(this.beam == 1)
         {
            _loc1_ = 6;
         }
         if(this.beam == 2)
         {
            _loc1_ = 7;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
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
            graphic.animate("special1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 7)
         {
            graphic.animate("special5");
         }
         if(_loc1_ == 8)
         {
            graphic.animate("special6");
         }
         if(this.c >= 3)
         {
            if(getHpPercent() < 33)
            {
               spawnFoe([ClassicClayDark,ClassicClayLight],this.level,0,-1,true);
            }
            else if(getHpPercent() < 66)
            {
               spawnFoe(Options.altFoes ? [ClassicClayDark,ClassicClayLight,ClassicSlingerGun,ClassicSlingerSword] : [ClassicClayRed,ClassicClayBlue,ClassicClayLight,ClassicClayDark],this.level,0,-1,true);
            }
            else
            {
               spawnFoe(Options.altFoes ? [ClassicSlingerGun,ClassicSlingerSword] : [ClassicClayRed,ClassicClayBlue],this.level,0,-1,true);
            }
            this.c = 0;
         }
         if(Battle.foeCount() <= 3)
         {
            ++this.c;
         }
         if(Battle.foeCount() <= 2)
         {
            ++this.c;
         }
         if(Battle.foeCount() == 1)
         {
            ++this.c;
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(170);
      }
      
      public function attack2() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.basicFoeAttack(260 / 2,Element.BOMB,75);
      }
      
      public function attack3() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(120,Element.EARTH,100);
         Battle.targetType = ONE_ENEMY;
         Battle.selectedTarget = Battle.randomPlayer();
         if(Math.random() < 0.66)
         {
            castSpell("ClassicRockslide");
         }
         else
         {
            castSpell("ClassicEruption");
         }
      }
      
      public function eruption() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":70,
            "element":Element.FIRE,
            "elementDegree":75,
            "accuracy":120,
            "buffEffect":Stats.DEFENCE,
            "buffChance":(isHard ? 50 : 25),
            "buffDegree":-30
         });
      }
      
      public function rockslide() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":70 / 3,
            "element":Element.EARTH,
            "elementDegree":75,
            "accuracy":80
         });
      }
      
      public function special2() : *
      {
         if(isHard)
         {
            buff(Stats.MAGIC_ATTACK,100);
         }
         Skills.giveStatus(this,Status.CHARGE,1);
         this.beam = 1;
      }
      
      public function special3() : *
      {
         status[Status.CHARGE] = 0;
         this.beam = 0;
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(250,Element.NONE,100,Status.DISPEL,1,100,150);
      }
      
      public function special4() : *
      {
         if(isHard)
         {
            buff(Stats.MAGIC_ATTACK,100);
         }
         Skills.giveStatus(this,Status.CHARGE,1);
         this.beam = 2;
      }
      
      public function special5() : *
      {
         status[Status.CHARGE] = 0;
         this.beam = 0;
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(280,Element.THUNDER,100,Status.STUN,1,isHard ? 150 : 30,150);
      }
      
      public function special6() : *
      {
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         castSpell("ClassicHandBomb");
      }
      
      public function handbomb() : *
      {
         Skills.basicFoeMagic(140,Element.BOMB,100,null,null,null,150);
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
         if(getHpPercent() < 40)
         {
            graphic.animate("attack3");
         }
         else
         {
            graphic.animate("attack2");
         }
      }
   }
}

