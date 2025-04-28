package foes
{
   public class SquidPink extends Foe
   {
      public static var iconInfo:Array = [6,11];
      
      public var arms:Boolean = true;
      
      public var counterSpell:Boolean = false;
      
      public function SquidPink(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Squid";
         graphicScale = 80;
         skin = 3;
         icon = 1038;
         catchRate = Catching.SQUID_RATE;
         boxSize = 3;
         HP = 722;
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
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
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
            elementalResistance[Element.BIO] = 1;
            elementalResistance[Element.WIND] = 0;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
            buffResistance[Stats.EVADE] = 1;
         }
         EXP = 144;
         AP = 17.5;
         SP = 17.5;
         gold = 111;
         dropList = [[Items.seashell,100],[Items.ice,75],[Items.ice,75],[Items.moonpearl,5],[Items.sushi,2]];
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
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 50)
         {
            _loc1_ = Math.random() * 6;
         }
         if(!this.arms && _loc1_ == 0)
         {
            _loc1_ = Math.random() * 5 + 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
            if(!this.arms)
            {
               _loc1_ = -1;
            }
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
            if(!this.arms)
            {
               _loc1_ = -1;
            }
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = int([0,1,4][int(Math.random() * 2)]);
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget && !this.arms)
         {
            _loc1_ = 4;
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
            graphic.animate("special1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special3");
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
         Skills.basicFoeAttack(50);
      }
      
      public function special3() : *
      {
         castSpell("Ink");
      }
      
      public function special4() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.basicFoeMagic(41,Element.WATER,100,Status.WET,2,isHard ? 50 : 25);
      }
      
      public function special1() : *
      {
         Battle.selectedTarget = Battle.extraRandomPlayer();
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":80 / 6,
            "element":Element.WATER,
            "elementDegree":100,
            "statusEffect":Status.WET,
            "statusDegree":3,
            "statusChance":50,
            "buffEffect":Stats.EVADE,
            "buffDegree":(isHard ? -25 : -15),
            "buffChance":100
         });
      }
      
      public function magic1() : *
      {
         if(this.counterSpell || isHard && Math.random() < 0.25 && Battle.selectedTarget)
         {
            castSpell("BoulderBomb2");
            this.counterSpell = false;
         }
         else if(Math.random() < 0.5)
         {
            castSpell("BubbleBlast");
         }
         else
         {
            castSpell("Icestorm");
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.5);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         this.counterSpell = true;
         graphic.animate("magic1");
      }
   }
}

