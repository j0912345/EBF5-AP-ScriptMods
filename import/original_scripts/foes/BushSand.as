package foes
{
   public class BushSand extends Foe
   {
      public static var iconInfo:Array = [2,5];
      
      public function BushSand(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Bush";
         graphicScale = 57;
         skin = Math.random() * 3 + 7;
         icon = 1092;
         catchRate = Catching.BUSH_RATE;
         boxSize = 1;
         HP = 65;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BIO] = 1;
            elementalResistance[Element.THUNDER] = 0.5;
            elementalResistance[Element.WIND] = 0.5;
            elementalResistance[Element.HOLY] = 0.5;
            elementalResistance[Element.DARK] = 0.5;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 2;
         statusResistance[Status.DRY_WET] = 2;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         EXP = 6.5;
         AP = 1;
         SP = 1;
         gold = 4.5;
         dropList = [[Items.root,20],[Items.cactus,5],[Items.flower,10]];
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
         if(!Battle.selectedTarget)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         if(isScared(TREES))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            quickFlee();
            return;
         }
         var _loc1_:int = Math.random() * 5;
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = Math.random() * 2;
         }
         if(_loc1_ == 0 || _loc1_ == 3)
         {
            graphic.setXY();
            graphic.animate("attack4");
         }
         if(_loc1_ == 1 || _loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special2");
         }
      }
      
      public function attack4() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "element":Element.EARTH,
            "elementDegree":50,
            "damage":14,
            "buffEffect":Stats.ACCURACY,
            "buffDegree":(isHard ? -25 : -15),
            "buffChance":100
         });
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(18);
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":0,
            "statusOnly":true,
            "buffEffect":Stats.MAGIC_DEFENCE,
            "buffDegree":(isHard ? -25 : -15),
            "buffChance":75
         });
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.25);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("attack4");
      }
   }
}

