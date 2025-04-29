package foes
{
   public class GolemPearl extends Foe
   {
      public function GolemPearl(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Golem";
         graphicScale = 94;
         skin = 2;
         icon = 1007;
         catchRate = Catching.GOLEM_RATE;
         boxSize = 3;
         HP = 522;
         attack = 4;
         magicAttack = 4;
         defence = 5;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.2;
         hit2HP = 20;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
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
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.HOLY] = -1;
            elementalResistance[Element.BIO] = 0;
            buffResistance[Stats.ATTACK] = 1.6;
            buffResistance[Stats.MAGIC_ATTACK] = 1.6;
            statusResistance[Status.STUN] = 0;
            statusResistance[Status.FREEZE_CHILL] = 0;
         }
         EXP = 105;
         AP = 13;
         SP = 13;
         gold = 85;
         dropList = [[Items.seashell,100],[Items.seashell,100],[Items.rune2,25],[Items.rune2,25],[Items.moonpearl,10]];
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
         var _loc1_:int = Math.random() * 5;
         if(getHpPercent() < 66)
         {
            _loc1_ = Math.random() * 6;
         }
         if(getHpPercent() < 33)
         {
            _loc1_ = Math.random() * 6 + 1;
         }
         if(status[Status.SYPHON])
         {
            if(_loc1_ == 1)
            {
               _loc1_ = 0;
            }
            if(_loc1_ == 3)
            {
               _loc1_ = 2;
            }
            if(_loc1_ == 5)
            {
               _loc1_ = 4;
            }
         }
         else if(status[Status.BERSERK])
         {
            _loc1_ = 6;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = int([2,5,4][int(Math.random() * 3)]);
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            _loc1_ = 4;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("attack2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(50 / 2);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(100 / 6);
      }
      
      public function attack5(param1:int = 1) : *
      {
         if(param1 == 1)
         {
            Battle.finalHit = false;
            Battle.selectedTarget = Battle.extraRandomPlayer();
            Skills.basicFoeAttack(80 / 6,Element.EARTH,25,Status.NONE,0,0,80);
         }
         else
         {
            Battle.selectedTarget = Battle.randomPlayer();
            graphic.makeMagic(EffectWater2);
            Skills.basicFoeAttack(70,Element.WATER,50,Status.STAGGER,1,isHard ? 50 : 25,90);
         }
      }
      
      public function special4() : *
      {
         Skills.basicFoeAttack(90,Element.WATER,100,Status.WET,4,100);
         graphic.makeMagic(EffectWater2);
      }
      
      public function special1() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.ICE,
            "elementDegree":100,
            "damage":22,
            "statusEffect":Status.CHILL,
            "statusDegree":(isHard ? 3 : 2),
            "statusChance":100,
            "accuracy":200
         });
      }
      
      public function magic1(param1:int) : *
      {
         if(param1 == 2)
         {
            return;
         }
         castSpell("Torrent");
      }
      
      public function attack4() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.groundPound(33);
      }
      
      public function spawnOres() : *
      {
         spawnFoe([BitHoly,BitWater],this.level);
         if(isHard && Math.random() < 0.5)
         {
            spawnFoe([BitHoly,BitWater,BitIce],this.level);
         }
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
            graphic.animate("special1");
         }
      }
   }
}

