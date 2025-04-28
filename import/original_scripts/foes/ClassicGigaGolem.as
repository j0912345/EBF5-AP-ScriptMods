package foes
{
   public class ClassicGigaGolem extends Foe
   {
      public var c:int = 0;
      
      public var blood:int = 80;
      
      public function ClassicGigaGolem(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicGolemMC";
         graphicScale = 93;
         skin = 3;
         icon = 1172;
         catchRate = Catching.GIGA_GOLEM_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 1476;
         hit2HP = 6;
         attack = 4;
         magicAttack = 4;
         defence = 5;
         magicDefence = 4;
         accuracy = 4.4;
         evade = 3.7;
         this.setResistance();
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
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
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 220;
         AP = 22;
         SP = 22;
         gold = 550;
         dropList = [[Items.gems,100],[Items.gems,100],[Items.gems,100],[Items.ruby,100],[Items.sapphire,100]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function setResistance() : *
      {
         if(skin == 3)
         {
            elementalResistance[Element.FIRE] = 2;
            elementalResistance[Element.THUNDER] = 0.5;
            elementalResistance[Element.ICE] = 0.5;
            elementalResistance[Element.EARTH] = 1.5;
            elementalResistance[Element.BIO] = 0.5;
            elementalResistance[Element.BOMB] = 1.3;
            elementalResistance[Element.WATER] = 0.5;
            elementalResistance[Element.WIND] = 0.5;
            elementalResistance[Element.HOLY] = 1;
            elementalResistance[Element.DARK] = 1.5;
            defence *= 0.8;
            magicDefence *= 1.25;
            if(Options.extraFoeResistance)
            {
               elementalResistance[Element.BOMB] = 0.5;
               elementalResistance[Element.EARTH] = 1;
               elementalResistance[Element.FIRE] = 1.8;
            }
         }
         else
         {
            elementalResistance[Element.FIRE] = 0.5;
            elementalResistance[Element.THUNDER] = 0.5;
            elementalResistance[Element.ICE] = 2;
            elementalResistance[Element.EARTH] = 1;
            elementalResistance[Element.BIO] = 0.5;
            elementalResistance[Element.BOMB] = 1.3;
            elementalResistance[Element.WATER] = 1.5;
            elementalResistance[Element.WIND] = 0.5;
            elementalResistance[Element.HOLY] = 1.5;
            elementalResistance[Element.DARK] = 1;
            defence *= 1.25;
            magicDefence *= 0.8;
            if(Options.extraFoeResistance)
            {
               elementalResistance[Element.BOMB] = 0.5;
               elementalResistance[Element.WATER] = 1;
               elementalResistance[Element.ICE] = 1.8;
            }
         }
         recalculateElementalResistance();
      }
      
      public function skinChange() : *
      {
         if(skin == 2)
         {
            ++skin;
         }
         else
         {
            skin = 2;
         }
         graphic.skin = skin;
         this.setResistance();
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         var _loc1_:int = Math.random() * 2;
         if(this.c > 1)
         {
            _loc1_ = 2;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 2;
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
            graphic.animate("magic1");
            this.c = -1;
         }
         ++this.c;
      }
      
      public function attack1() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":220,
            "element":Element.FIRE,
            "elementDegree":30,
            "buffEffect":Stats.MAGIC_DEFENCE,
            "buffChance":100,
            "buffDegree":(isHard ? -40 : -20)
         });
      }
      
      public function attack2() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":260,
            "element":Element.ICE,
            "elementDegree":30,
            "buffEffect":Stats.DEFENCE,
            "buffChance":100,
            "buffDegree":(isHard ? -40 : -20)
         });
      }
      
      public function magic1() : *
      {
         if(skin == 3)
         {
            castSpell("ClassicSnow");
         }
         if(skin == 2)
         {
            castSpell("ClassicFireRain");
         }
         if(skin == 3)
         {
            spawnFoe([ClassicEaterIce,ClassicEaterFire],this.level,0,-1,true);
         }
      }
      
      public function snow() : *
      {
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":150,
            "element":Element.ICE,
            "elementDegree":100,
            "accuracy":200,
            "statusEffect":Status.FREEZE,
            "statusChance":(isHard ? 500 : 100),
            "statusDegree":3
         });
      }
      
      public function firerain(param1:int = 1) : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         if(param1 == 1)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":160 / 5,
               "element":Element.FIRE,
               "elementDegree":100,
               "accuracy":200
            });
         }
         if(param1 == 2)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":160 / 5,
               "element":Element.FIRE,
               "elementDegree":100,
               "accuracy":200,
               "buffEffect":Stats.ATTACK,
               "buffChance":(isHard ? 100 : 30),
               "buffDegree":(isHard ? -50 : -30)
            });
         }
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
         if(status[Status.SYPHON])
         {
            if(Math.random() < 0.5)
            {
               graphic.animate("attack1");
            }
            else
            {
               graphic.animate("attack2");
            }
         }
         else
         {
            graphic.animate("magic1");
         }
      }
   }
}

