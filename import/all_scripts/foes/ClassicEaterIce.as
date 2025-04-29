package foes
{
   public class ClassicEaterIce extends Foe
   {
      public function ClassicEaterIce(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicTurtleMC";
         graphicScale = 87;
         skin = 2;
         icon = 1170;
         catchRate = Catching.EATER_RATE;
         boxSize = 2;
         cantFlee = true;
         HP = 316;
         hit2HP = 30;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.5;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0.5;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.5;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1.3;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         buffResistance[Stats.ACCURACY] = 1.3;
         buffResistance[Stats.EVADE] = 1.3;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.EARTH] = 0.5;
            statusResistance[Status.DISPEL] = 0.3;
            statusResistance[Status.STUN] = 0.3;
            statusResistance[Status.SYPHON_DISABLE] = 0.3;
            statusResistance[Status.DEATH] = 0.3;
         }
         EXP = 55;
         AP = 9;
         SP = 7;
         gold = 60;
         dropList = [[Items.water,100],[Items.water,50],[Items.water,25],[Items.sapphire,5],[Items.moonpearl,5]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         var _loc1_:int = Math.random() * 4;
         if(Math.random() < 0.15)
         {
            _loc1_ = 3;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 3;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
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
            graphic.animate("special1");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(80);
      }
      
      public function attack2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeAttack(43 / 2,Element.EARTH,50);
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeAttack(21,Element.EARTH,50);
         buff(Stats.DEFENCE,70,true);
         buff(Stats.MAGIC_DEFENCE,70,true);
      }
      
      public function special1(param1:int = 1) : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         if(param1 == 1)
         {
            Skills.basicFoeMagic(45 / 7,Element.ICE,100,Status.FREEZE,2,20,90);
         }
         if(param1 == 2)
         {
            Skills.basicFoeMagic(45 / 7,Element.ICE,100,Status.FREEZE,2,isHard ? 100 : 50,120);
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.2);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         graphic.animate("special1");
      }
   }
}

