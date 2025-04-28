package foes
{
   public class CreepGreen extends Foe
   {
      public static var iconInfo:Array = [3,1];
      
      public var defended:Boolean = false;
      
      public function CreepGreen(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Creep";
         graphicScale = 82;
         skin = 3;
         icon = 1124;
         catchRate = Catching.CREEP_RATE;
         boxSize = 2;
         HP = 230;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.6;
         hit2HP = 33;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.WATER] = 0;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BIO] = -1;
            elementalResistance[Element.WIND] = -1;
            elementalResistance[Element.THUNDER] = 1;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.5;
         statusResistance[Status.FREEZE_CHILL] = 1;
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
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         EXP = 38;
         AP = 3.7;
         SP = 3.7;
         gold = 22;
         dropList = [[Items.seashell,25],[Items.claw,15],[Items.ice,25]];
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
            if(getHpPercent() < 80)
            {
               quickFlee();
            }
            else
            {
               graphic.animate("evade");
            }
            return;
         }
         var _loc1_:int = Math.random() * 3;
         if(getHpPercent() < (isHard ? 50 : 33) && !this.defended)
         {
            _loc1_ = 3;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 2 + 1;
         }
         if(_loc1_ == 2 && Battle.foeCount() < 3)
         {
            _loc1_ = 1;
         }
         else if(_loc1_ == 1 && Battle.foeCount() >= 3)
         {
            _loc1_ = 2;
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
            graphic.animate("attack4");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("defend");
            this.defended = true;
         }
      }
      
      public function attack6() : *
      {
         Skills.basicFoeAttack(30);
      }
      
      public function attack5() : *
      {
         Skills.basicFoeAttack(60 / 3);
         Battle.selectedTarget = Battle.randomPlayer();
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(60 / 3);
         Battle.selectedTarget = Battle.randomFoeButNot(this);
      }
      
      public function attack42() : *
      {
         Battle.selectedSkill = new Object();
         Battle.selectedSkill.target = Target.ONE_ENEMY;
         Weather.weatherPlayer.sendHit(new DamageObject({
            "type":Stats.ATTACK,
            "damage":30 / 2
         }));
         Battle.selectedTarget = Battle.randomPlayer();
      }
      
      public function defend1() : *
      {
         buff(Stats.DEFENCE,isHard ? 50 : 40);
         if(isHard)
         {
            Skills.giveStatus(this,Status.DEFEND,1);
         }
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
         if(getHpPercent() < 0.33)
         {
            graphic.animate("defend");
         }
         else
         {
            graphic.animate("attack5");
         }
      }
   }
}

