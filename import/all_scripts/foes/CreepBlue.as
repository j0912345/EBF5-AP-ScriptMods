package foes
{
   public class CreepBlue extends Foe
   {
      public static var iconInfo:Array = [3,3];
      
      public var defended:Boolean = false;
      
      public function CreepBlue(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Creep";
         graphicScale = 82;
         skin = 5;
         icon = 1126;
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
            elementalResistance[Element.WATER] = -1;
            elementalResistance[Element.ICE] = -1;
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
         dropList = [[Items.seashell,25],[Items.claw,15],[Items.spike,25]];
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
         var _loc1_:int = Math.random() * 2;
         if(getHpPercent() < (isHard ? 80 : 66) && !this.defended)
         {
            _loc1_ = 2;
         }
         if(getHpPercent() < (isHard ? 33 : 25))
         {
            _loc1_ = 3;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 3;
         }
         if(_loc1_ == 1 && Battle.foeCount() < 3)
         {
            _loc1_ = 0;
         }
         else if(_loc1_ == 0 && Battle.foeCount() >= 3)
         {
            _loc1_ = 1;
         }
         if(Boolean(status[Status.SYPHON]) && _loc1_ == 3)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("defend");
            this.defended = true;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special1");
         }
      }
      
      public function attack5() : *
      {
         Skills.basicFoeAttack(75 / 3,Element.NONE,0,Status.DISPEL,1,isHard ? 50 : 10);
         Battle.selectedTarget = Battle.randomPlayer();
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(75 / 3,Element.NONE,0,Status.DISPEL,1,isHard ? 50 : 10);
         Battle.selectedTarget = Battle.randomFoeButNot(this);
      }
      
      public function attack42() : *
      {
         Battle.selectedSkill = new Object();
         Battle.selectedSkill.target = Target.ONE_ENEMY;
         Weather.weatherPlayer.sendHit(new DamageObject({
            "type":Stats.ATTACK,
            "damage":40 / 2
         }));
         Battle.selectedTarget = Battle.randomPlayer();
      }
      
      public function special1() : *
      {
         Battle.targetType = Target.ONE_ENEMY;
         Skills.basicFoeMagic(100,Element.BOMB,100,Status.DISABLE,2,isHard ? 100 : 0,300);
      }
      
      public function defend1() : *
      {
         buff(Stats.EVADE,isHard ? 50 : 40);
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
         if(getHpPercent() < 0.33 && !status[Status.SYPHON])
         {
            graphic.animate("special1");
         }
         else
         {
            graphic.animate("attack5");
         }
      }
   }
}

