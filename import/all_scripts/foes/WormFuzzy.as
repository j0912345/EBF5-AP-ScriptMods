package foes
{
   public class WormFuzzy extends Foe
   {
      public static var iconInfo:Array = [2,15];
      
      public function WormFuzzy(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Worm";
         graphicScale = 80;
         skin = 2;
         icon = 1062;
         catchRate = Catching.WORM_RATE;
         boxSize = 1;
         HP = 72;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = -1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 1.8;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 2;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
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
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WATER] = -1;
         }
         EXP = 6;
         AP = 1;
         SP = 1;
         gold = 6;
         dropList = [[Items.wool,15],[Items.silk,5]];
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
            graphic.animate("special2");
            return;
         }
         var _loc1_:int = Math.random() * 4;
         if(_loc1_ == 2)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 3 && buffs[Stats.MAGIC_DEFENCE] >= 105)
         {
            _loc1_ = 1;
         }
         if(Battle.foeCount() == 1)
         {
            _loc1_ = 2;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("defend");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(10,Element.NONE,0,Status.CONFUSE,isHard ? 2 : 1,100,50);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(14,Element.NONE,0,isHard ? Status.VIRUS : Status.NONE,3,10,66);
      }
      
      public function special2() : *
      {
         spawnFoe([WormFuzzy],this.level);
         if(Math.random < 0.5)
         {
            spawnFoe([WormPutrid],this.level);
         }
         if(isHard)
         {
            spawnFoe([WormFuzzy],this.level);
         }
      }
      
      public function defend1() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.DEFEND,1);
         }
         buff(Stats.MAGIC_DEFENCE,25);
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
         graphic.animate("attack1");
      }
   }
}

