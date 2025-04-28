package foes
{
   public class WormCutie extends Foe
   {
      public static var iconInfo:Array = [2,16];
      
      public function WormCutie(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Worm";
         graphicScale = 80;
         skin = 3;
         icon = 1063;
         catchRate = Catching.WORM_RATE;
         boxSize = 1;
         HP = 83;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 1.8;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = -1;
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
         dropList = [[Items.butterflywing,50],[Items.silk,5]];
         init(param1,param2,param3,param4);
         if(isHard)
         {
            status[Status.LOVED] = 3;
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
         if(!Battle.selectedTarget)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("defend");
            return;
         }
         if(Math.random() < (isHard ? 0.4 : 0.2))
         {
            spawnFoe([WormPutrid,WormFuzzy,WormScaly],this.level);
         }
         var _loc1_:int = Math.random() * 5;
         if(_loc1_ == 4 && buffs[Stats.EVADE] >= 105)
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
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("defend");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(10,Element.NONE,0,Status.NONE,0,0,50);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(14,Element.NONE,0,Status.LOVED,3,33,66);
      }
      
      public function magic1() : *
      {
         Battle.selectedTarget = Battle.mostDamagedFoe();
         if(Battle.selectedTarget.getHpPercent() > 80)
         {
            Battle.selectedTarget = Battle.randomFoe();
            castSpell("Bless");
         }
         else if(Math.random() < 0.5 && !Battle.selectedTarget.status[Status.LOVED])
         {
            castSpell("Charm");
         }
         else
         {
            castSpell("Renew");
         }
      }
      
      public function defend1() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.GOOD_LUCK,3);
         }
         buff(Stats.EVADE,25);
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.5);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         graphic.animate("defend");
      }
   }
}

