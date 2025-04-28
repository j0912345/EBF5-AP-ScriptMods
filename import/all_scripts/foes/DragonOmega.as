package foes
{
   public class DragonOmega extends Foe
   {
      public static var iconInfo:Array = [13,4];
      
      public var mag:Boolean = false;
      
      public function DragonOmega(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Dragon";
         graphicScale = 81;
         skin = 4;
         icon = 1016;
         catchRate = Catching.HYDRA_RATE;
         boxSize = 3;
         HP = 1234;
         attack = 4;
         magicAttack = 6;
         defence = 4;
         magicDefence = 4;
         accuracy = 5;
         evade = 4;
         hit2HP = 15;
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.8;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
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
            elementalResistance[Element.ICE] = -1;
            elementalResistance[Element.THUNDER] = -1;
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.EARTH] = 0;
            elementalResistance[Element.BIO] = 1;
            statusResistance[Status.DISPEL] = 0.5;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
            buffResistance[Stats.ACCURACY] = 1.4;
            buffResistance[Stats.EVADE] = 1.4;
            statusResistance[Status.WEAKENED_TIRED] = 0.3;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.3;
         }
         EXP = 399;
         AP = 24;
         SP = 24;
         gold = 330;
         dropList = [[Items.scales,60],[Items.scales,60],[Items.silk,50],[Items.grail,10],[Items.bacon,2]];
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
         var _loc1_:int = Math.random() * 3;
         if(Battle.randomPlayer().buffs[Stats.MAGIC_DEFENCE] >= 90 && Battle.randomFoe().buffs[Stats.MAGIC_ATTACK] <= 110 && Math.random() < 0.25)
         {
            _loc1_ = 5;
         }
         if(!FoeAI.getPlayersWeakTo(Element.FIRE,false,true).length && _loc1_ == 1)
         {
            _loc1_ = 2;
         }
         if(getHpPercent() < 50 && _loc1_ == 1)
         {
            _loc1_ = 3;
         }
         if(getHpPercent() < 50 && _loc1_ == 0)
         {
            _loc1_ = 4;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 2 + 3;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            if(_loc1_ == 0)
            {
               _loc1_ = 1;
            }
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
            this.mag = true;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special7");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic1");
            this.mag = false;
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(90);
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(30,Element.FIRE,100,Status.BURN,2,isHard ? 66 : 33);
      }
      
      public function special4() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(65,Element.FIRE,100,isHard ? Status.SCORCHED : Status.BURN,3,66);
      }
      
      public function special7() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(65,Element.HOLY,100,Status.WEAKEN,3,66);
      }
      
      public function magic1() : *
      {
         var _loc1_:Foe = null;
         var _loc2_:String = null;
         if(!this.mag)
         {
            for each(_loc1_ in Battle.foes)
            {
               _loc1_.buff(Stats.MAGIC_ATTACK,isHard ? 30 : 20);
            }
            Battle.targetType = Target.ALL_ENEMY;
            Skills.customFoeAttack({
               "statusOnly":true,
               "accuracy":150,
               "buffEffect":Stats.MAGIC_DEFENCE,
               "buffDegree":(isHard ? -30 : -20),
               "buffChance":100
            });
         }
         else
         {
            _loc2_ = FoeAI.getBestElement([Element.BOMB,Element.WATER,Element.WIND,Element.EARTH,Element.ICE,Element.THUNDER,Element.FIRE]);
            if(_loc2_ == Element.THUNDER)
            {
               castSpell("Thunderstorm");
            }
            else if(_loc2_ == Element.ICE)
            {
               castSpell("Icestorm");
            }
            else if(_loc2_ == Element.FIRE)
            {
               castSpell("Firestorm");
            }
            else if(_loc2_ == Element.EARTH)
            {
               castSpell("GaiaBlossom");
            }
            else if(_loc2_ == Element.WIND)
            {
               castSpell("Hurricane");
            }
            else if(_loc2_ == Element.WATER)
            {
               castSpell("Vortex");
            }
            else if(_loc2_ == Element.BOMB)
            {
               castSpell("EnergyBlast");
            }
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
         graphic.animate("attack1");
      }
   }
}

