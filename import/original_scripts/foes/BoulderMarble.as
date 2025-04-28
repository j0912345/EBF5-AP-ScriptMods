package foes
{
   public class BoulderMarble extends Foe
   {
      public static var iconInfo:Array = [7,3];
      
      public function BoulderMarble(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Boulder";
         graphicScale = 99;
         skin = 3;
         icon = 1102;
         catchRate = Catching.BOULDER_RATE;
         boxSize = 2;
         HP = 266;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 5;
         accuracy = 4;
         evade = 3.6;
         hit2HP = 33;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.8;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.5;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 0;
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
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BOMB] = 0.5;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         }
         EXP = 48;
         AP = 6.6;
         SP = 6.6;
         gold = 44;
         dropList = [[Items.rune2,35],[Items.silk,20],[Items.satin,5]];
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
         var _loc1_:int = Math.random() * 6;
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         else if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 3 + 3;
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer(true);
            _loc1_ = 3 + Math.random() * 3;
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
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("attack5");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(42 / 6);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(38,Element.NONE,0,Status.STAGGER,1,isHard ? 50 : 25,100);
      }
      
      public function attack3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.WIND,
            "elementDegree":50,
            "damage":24,
            "statusEffect":Status.SYPHON,
            "statusDegree":2,
            "statusChance":(isHard ? 33 : 0)
         });
      }
      
      public function attack4() : *
      {
         graphic.makeMagic(BoulderBowl,graphic.x - 150,graphic.y,false,skin);
      }
      
      public function boulderBowl1() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "element":Element.NONE,
            "elementDegree":0,
            "damage":48,
            "statusEffect":Status.STAGGER,
            "statusDegree":1,
            "statusChance":(isHard ? 50 : 25)
         });
      }
      
      public function boulderBowl2() : *
      {
         Battle.targetType = Target.ALL_STANDBY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "element":Element.NONE,
            "elementDegree":0,
            "damage":28
         });
      }
      
      public function attack5() : *
      {
         graphic.makeMagic(BoulderBounce,graphic.x - 50,graphic.y,false,skin);
      }
      
      public function boulderBounce() : *
      {
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.WIND,
            "elementDegree":50,
            "damage":25,
            "statusEffect":Status.SYPHON,
            "statusDegree":2,
            "statusChance":(isHard ? 100 : 50)
         });
         Battle.selectedTarget = Battle.randomPlayer(true);
      }
      
      public function magic1() : *
      {
         castSpell("LaserCrystals");
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.33);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic1");
      }
   }
}

