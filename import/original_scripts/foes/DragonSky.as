package foes
{
   public class DragonSky extends Foe
   {
      public static var iconInfo:Array = [13,1];
      
      public var mag:Boolean = false;
      
      public function DragonSky(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Dragon";
         graphicScale = 81;
         skin = 3;
         icon = 1014;
         catchRate = Catching.DRAGON_RATE;
         boxSize = 3;
         HP = 878;
         attack = 4;
         magicAttack = 6;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.2;
         hit2HP = 15;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = -1;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 0.5;
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
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.HOLY] = -1;
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
         dropList = [[Items.feather,100],[Items.feather,100],[Items.spike,75],[Items.starfragment,20],[Items.mint,2]];
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
         var _loc1_:int = Math.random() * 5 + 1;
         if(Battle.randomPlayer().buffs[Stats.EVADE] >= 90 && Battle.randomFoe().buffs[Stats.ACCURACY] <= 110 && Math.random() < 0.25)
         {
            _loc1_ = 6;
         }
         if(!FoeAI.getPlayersWeakTo(Element.WIND,false,true).length && _loc1_ == 3)
         {
            _loc1_ = 5;
         }
         if(getHpPercent() < 50 && _loc1_ == 1)
         {
            _loc1_ = 0;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget)
         {
            if(_loc1_ == 0)
            {
               _loc1_ = 3;
            }
            if(_loc1_ == 1)
            {
               _loc1_ = 3;
            }
            if(_loc1_ == 2)
            {
               _loc1_ = 4;
            }
            if(status[Status.SYPHON])
            {
               _loc1_ = 7;
            }
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack6");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special5");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special6");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic1");
            this.mag = true;
         }
         if(_loc1_ == 6)
         {
            graphic.animate("magic1");
            this.mag = false;
         }
         if(_loc1_ == 7)
         {
            graphic.animate("evade");
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(110,Element.WIND,25);
      }
      
      public function attack5() : *
      {
         Skills.basicFoeAttack(160 / 2,Element.WIND,25);
         Battle.selectedTarget = Battle.randomPlayer();
      }
      
      public function attack6() : *
      {
         Skills.basicFoeAttack(240 / 4,Element.WIND,25);
         Battle.selectedTarget = Battle.randomPlayer();
      }
      
      public function special5() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":40 / 3,
            "element":Element.WIND,
            "elementDegree":100,
            "statusEffect":Status.DISPEL,
            "statusDegree":1,
            "statusChance":(isHard ? 66 : 33),
            "accuracy":150
         });
      }
      
      public function special6() : *
      {
         castSpell("RazorFeathers");
      }
      
      public function magic1() : *
      {
         var _loc1_:Foe = null;
         var _loc2_:String = null;
         if(!this.mag)
         {
            for each(_loc1_ in Battle.foes)
            {
               _loc1_.buff(Stats.ACCURACY,isHard ? 30 : 20);
            }
            Battle.targetType = Target.ALL_ENEMY;
            Skills.customFoeAttack({
               "statusOnly":true,
               "accuracy":150,
               "buffEffect":Stats.EVADE,
               "buffDegree":(isHard ? -30 : -20),
               "buffChance":100
            });
         }
         else
         {
            _loc2_ = FoeAI.getBestElement([Element.WIND,Element.ICE,Element.THUNDER]);
            if(_loc2_ == Element.THUNDER)
            {
               castSpell("Thunderstorm");
            }
            else if(_loc2_ == Element.ICE)
            {
               castSpell("Icestorm");
            }
            else if(_loc2_ == Element.WIND)
            {
               castSpell("Hurricane");
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
         graphic.animate("attack2");
      }
   }
}

