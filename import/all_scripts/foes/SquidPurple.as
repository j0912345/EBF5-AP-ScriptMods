package foes
{
   public class SquidPurple extends Foe
   {
      public static var iconInfo:Array = [6,12];
      
      public var arms:Boolean = true;
      
      public function SquidPurple(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Squid";
         graphicScale = 80;
         skin = 2;
         icon = 1040;
         catchRate = Catching.SQUID_RATE;
         boxSize = 3;
         HP = 611;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 20;
         hit3HP = 25;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = -1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.3;
         statusResistance[Status.FREEZE_CHILL] = 0.3;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.5;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1.6;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            statusResistance[Status.DEATH] = 0.1;
            elementalResistance[Element.EARTH] = 1.3;
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.THUNDER] = 1;
            elementalResistance[Element.WIND] = 0;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
            buffResistance[Stats.EVADE] = 1;
         }
         EXP = 111;
         AP = 16;
         SP = 16;
         gold = 95;
         dropList = [[Items.claw,100],[Items.claw,100],[Items.spike,50],[Items.virus,50],[Items.poptart,2]];
         init(param1,param2,param3,param4);
         if(isHard)
         {
            status[Status.POISON] = 9;
         }
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
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 50)
         {
            _loc1_ = Math.random() * 6;
         }
         if(!this.arms && (_loc1_ == 0 || _loc1_ == 1))
         {
            _loc1_ = Math.random() * 4 + 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 2;
            if(!this.arms)
            {
               _loc1_ = -1;
            }
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
            if(!this.arms)
            {
               _loc1_ = -1;
            }
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = int([0,1,3][int(Math.random() * 2)]);
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget && !this.arms)
         {
            _loc1_ = 3;
         }
         if(!Battle.selectedTarget && !this.arms && (Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK])))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         if(_loc1_ == -1)
         {
            graphic.animate("evade");
            Skills.giveStatus(this,Status.SURRENDER,99);
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic1");
         }
      }
      
      public function disarm() : *
      {
         this.arms = false;
         hit3HP = 99999;
      }
      
      public function makeStuffed() : *
      {
         var _loc1_:Player = null;
         for each(_loc1_ in Battle.players)
         {
            if(!_loc1_.dead && Math.random() < (isHard ? 0.5 : 0.3))
            {
               Skills.giveStatus(_loc1_,Status.STUFFED,3);
            }
         }
      }
      
      public function attack1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(60,Element.NONE,0,Status.NONE,0,0,80);
      }
      
      public function attack3() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(47,Element.BIO,50,Status.POISON,3,isHard ? 66 : 33,80);
      }
      
      public function special3() : *
      {
         castSpell("Ink");
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "statusOnly":true,
            "element":Element.DARK,
            "elementDegree":100,
            "statusEffect":Status.DOOM,
            "statusDegree":5,
            "statusChance":(isHard ? 100 : 50),
            "buffEffect":Stats.ACCURACY,
            "buffDegree":(isHard ? -20 : -10),
            "buffChance":100,
            "accuracy":200
         });
      }
      
      public function magic1() : *
      {
         if(isHard && Math.random() < 0.25)
         {
            castSpell("BoulderBomb2");
         }
         else if(Math.random() < 0.5)
         {
            castSpell("LifeDrain");
         }
         else
         {
            castMultiSpell(Spells.acid);
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.5);
      }
      
      override public function counter2() : *
      {
         if(dead || !this.arms)
         {
            return;
         }
         if(Math.random() < 0.5)
         {
            graphic.animate("attack3");
         }
         else
         {
            graphic.animate("attack1");
         }
      }
   }
}

