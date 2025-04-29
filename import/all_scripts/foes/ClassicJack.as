package foes
{
   public class ClassicJack extends Foe
   {
      public var c:int = 0;
      
      public var blood:int = 80;
      
      public function ClassicJack(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicJackMC";
         graphicScale = 97;
         skin = 1;
         icon = 1177;
         catchRate = Catching.JACK_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 2366;
         hit2HP = 6;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.2;
         evade = 4;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
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
            elementalResistance[Element.THUNDER] = 1.5;
            elementalResistance[Element.EARTH] = 1;
            elementalResistance[Element.WATER] = 0;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 220;
         AP = 20;
         SP = 20;
         gold = 160;
         dropList = [[Items.pumpkin,100],[Items.pumpkin,100],[Items.cpu,100],[Items.titanium,100],[Items.gamechild,100]];
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
         var _loc1_:int = Math.random() * 5;
         if(getHpPercent() < 70)
         {
            _loc1_ = Math.random() * 4 + 1;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 3 + 2;
         }
         if(this.c >= 5)
         {
            _loc1_ = 5;
            this.c = 0;
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
            graphic.animate("special1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special3");
         }
         ++this.c;
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(90);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(160 / 3);
      }
      
      public function attack3() : *
      {
         Battle.targetType = CENTER_ENEMY;
         Skills.basicFoeAttack(150,Element.EARTH,30);
         spawnFoe(Options.altFoes ? [ClassicClayRed,ClassicClayLight] : [ClassicSlingerSword],this.level,null,null,true);
      }
      
      public function special1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(120 / 6,Element.BOMB,100,null,null,null,90);
         spawnFoe(Options.altFoes ? [ClassicClayBlue,ClassicClayDark] : [ClassicSlingerGun],this.level,null,null,true);
      }
      
      public function special2() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(90 / 3,Element.FIRE,100,null,null,null,90);
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":60 / 3,
            "accuracy":90,
            "element":Element.FIRE,
            "elementDegree":100,
            "buffEffect":Stats.DEFENCE,
            "buffChance":(isHard ? 100 : 50),
            "buffDegree":-30
         });
      }
      
      public function special3() : *
      {
         if(isHard)
         {
            buff(Stats.ATTACK,30,true);
            buff(Stats.MAGIC_ATTACK,30,true);
         }
         spawnFoe(Options.altFoes ? [ClassicClayRed,ClassicClayBlue] : [ClassicSlingerGun,ClassicSlingerSword],this.level,null,-1,true);
         spawnFoe(Options.altFoes ? [ClassicClayRed,ClassicClayLight,ClassicClayBlue,ClassicClayDark] : [ClassicSlingerGun,ClassicSlingerSword],this.level,null,-1,true);
         spawnFoe(Options.altFoes ? [ClassicClayRed,ClassicClayLight,ClassicClayBlue,ClassicClayDark] : [ClassicSlingerGun,ClassicSlingerSword],this.level,null,-1,true);
         spawnFoe(Options.altFoes ? [ClassicClayRed,ClassicClayBlue] : [ClassicSlingerGun,ClassicSlingerSword],this.level,null,-1,true);
      }
      
      public function onHitFunction() : *
      {
         if(getHpPercent() < this.blood)
         {
            readyCounterAttack(1);
            this.blood -= 20;
         }
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if(Math.random() < 0.5)
         {
            graphic.animate("special1");
         }
         else
         {
            graphic.animate("special2");
         }
      }
   }
}

