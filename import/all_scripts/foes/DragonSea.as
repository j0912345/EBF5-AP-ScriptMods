package foes
{
   public class DragonSea extends Foe
   {
      public static var iconInfo:Array = [13,2];
      
      public var mag:Boolean = false;
      
      public function DragonSea(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Dragon";
         graphicScale = 81;
         skin = 1;
         icon = 1015;
         catchRate = Catching.DRAGON_RATE;
         boxSize = 3;
         HP = 847;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.1;
         hit2HP = 15;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.3;
         statusResistance[Status.FREEZE_CHILL] = 0.3;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0.3;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1.3;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         buffResistance[Stats.ACCURACY] = 1.3;
         buffResistance[Stats.EVADE] = 1.3;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = 0;
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.BIO] = 0;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
            buffResistance[Stats.ACCURACY] = 1.4;
            buffResistance[Stats.EVADE] = 1.4;
            statusResistance[Status.WEAKENED_TIRED] = 0.3;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.3;
         }
         EXP = 277;
         AP = 22;
         SP = 22;
         gold = 260;
         dropList = [[Items.ice,100],[Items.ice,100],[Items.scales,50],[Items.moonpearl,25],[Items.yoghurt,2]];
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
         if(Battle.randomPlayer().buffs[Stats.MAGIC_ATTACK] >= 90 && Battle.randomFoe().buffs[Stats.MAGIC_DEFENCE] <= 110 && Math.random() < 0.33)
         {
            _loc1_ = 5;
         }
         if(Battle.randomPlayer().status[Status.WET] && (FoeAI.getPlayersWeakTo(Element.THUNDER).length || FoeAI.getPlayersWeakTo(Element.ICE).length) && (Math.random() < 0.33 || _loc1_ == 3))
         {
            _loc1_ = 6;
         }
         if(getHpPercent() < 50 && (_loc1_ == 3 || _loc1_ == 4))
         {
            _loc1_ = 7;
         }
         if(getHpPercent() < 25 && (_loc1_ == 1 || _loc1_ == 2))
         {
            _loc1_ = 0;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 3;
         }
         if(!Battle.selectedTarget)
         {
            if(_loc1_ == 1)
            {
               _loc1_ = 0;
            }
            if(_loc1_ == 2)
            {
               _loc1_ = 0;
            }
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 3 || _loc1_ == 4)
         {
            graphic.animate("special8");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic1");
            this.mag = false;
         }
         if(_loc1_ == 6)
         {
            graphic.animate("magic1");
            this.mag = true;
         }
         if(_loc1_ == 7)
         {
            graphic.animate("special9");
         }
      }
      
      public function attack4() : *
      {
         Skills.groundPound(50);
      }
      
      public function attack5() : *
      {
         Skills.basicFoeAttack(140 / 2);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(80);
      }
      
      public function special8() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(35 / 3,Element.WATER,100,Status.WET,3,100);
      }
      
      public function special9() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(90,Element.WATER,100,Status.WET,5,100);
      }
      
      public function magic1() : *
      {
         var _loc1_:Foe = null;
         if(!this.mag)
         {
            for each(_loc1_ in Battle.foes)
            {
               _loc1_.buff(Stats.MAGIC_DEFENCE,isHard ? 30 : 20);
            }
            Battle.targetType = Target.ALL_ENEMY;
            Skills.customFoeAttack({
               "statusOnly":true,
               "accuracy":150,
               "buffEffect":Stats.MAGIC_ATTACK,
               "buffDegree":(isHard ? -30 : -20),
               "buffChance":100
            });
         }
         else if(FoeAI.getPlayersWeakTo(Element.THUNDER).length > FoeAI.getPlayersWeakTo(Element.ICE).length)
         {
            castMultiSpell(Spells.spark);
         }
         else
         {
            castMultiSpell(Spells.frostfragment);
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
         graphic.animate("attack2");
      }
   }
}

