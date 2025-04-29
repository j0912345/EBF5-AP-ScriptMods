package foes
{
   public class GolemTopaz extends Foe
   {
      public var spell:int = 1;
      
      public function GolemTopaz(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Golem";
         graphicScale = 94;
         skin = 3;
         icon = 1006;
         catchRate = Catching.GOLEM_RATE;
         boxSize = 3;
         HP = 588;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.2;
         hit2HP = 20;
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = -1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = 0.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.3;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.3;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.2;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.2;
         buffResistance[Stats.EVADE] = 1.2;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.THUNDER] = 0;
            elementalResistance[Element.HOLY] = 1;
            elementalResistance[Element.DARK] = -1;
            elementalResistance[Element.BIO] = 0;
            buffResistance[Stats.ATTACK] = 1.6;
            buffResistance[Stats.MAGIC_ATTACK] = 1.6;
            statusResistance[Status.STUN] = 0;
            statusResistance[Status.FREEZE_CHILL] = 0;
         }
         EXP = 128;
         AP = 15;
         SP = 15;
         gold = 90;
         dropList = [[Items.iron,100],[Items.iron,100],[Items.ruby,30],[Items.topaz,30],[Items.donut,2]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 8;
         if(getHpPercent() < 33)
         {
            _loc1_ = Math.random() * 8 + 1;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = int([8,3][int(Math.random() * 2)]);
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1 || _loc1_ == 2)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 4 || _loc1_ == 5)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 6 || _loc1_ == 7)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 8)
         {
            graphic.animate("attack2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(60 / 2,Element.THUNDER,50);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(120 / 6,Element.THUNDER,50);
      }
      
      public function attack5(param1:int = 1) : *
      {
         if(param1 == 1)
         {
            Battle.finalHit = false;
            Battle.selectedTarget = Battle.extraRandomPlayer();
            Skills.basicFoeAttack(80 / 6,Element.THUNDER,25,Status.NONE,0,0,80);
         }
         else
         {
            Battle.selectedTarget = Battle.randomPlayer();
            graphic.makeMagic(EffectFire);
            Skills.basicFoeAttack(70,Element.FIRE,50,Status.STAGGER,1,isHard ? 50 : 25,90);
         }
      }
      
      public function magic2() : *
      {
         if(Math.random() < 0.5)
         {
            castSpell("Thunderstorm");
         }
         else
         {
            castSpell("LaserSword");
         }
      }
      
      public function magic1(param1:int) : *
      {
         if(Math.random() < 0.5 && param1 != 2)
         {
            castSpell("LavaLance");
            this.spell = 1;
            return;
         }
         if(param1 == 2)
         {
            if(this.spell == 1)
            {
               return;
            }
            if(Battle.playerCount() <= 1)
            {
               return;
            }
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         }
         else
         {
            this.spell = 2;
         }
         if(this.spell == 2)
         {
            castSpell("FireCrystals");
         }
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         if(graphic.rock == 1)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "element":Element.FIRE,
               "elementDegree":100,
               "damage":35,
               "statusEffect":Status.BURN,
               "statusDegree":3,
               "statusChance":(isHard ? 100 : 50)
            });
         }
         if(graphic.rock == 2)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "element":Element.THUNDER,
               "elementDegree":100,
               "damage":35,
               "statusEffect":Status.STUN,
               "statusDegree":2,
               "statusChance":(isHard ? 30 : 15)
            });
         }
      }
      
      public function spawnOres() : *
      {
         spawnFoe([BitThunder,BitFire],this.level);
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.33);
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
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("special2");
         }
      }
   }
}

