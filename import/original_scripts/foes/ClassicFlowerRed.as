package foes
{
   public class ClassicFlowerRed extends Foe
   {
      public function ClassicFlowerRed(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicFlowerMC";
         graphicScale = 75;
         skin = 1;
         icon = 1183;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         cantFlee = true;
         HP = 159;
         hit2HP = 40;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
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
            elementalResistance[Element.ICE] = 1;
            statusResistance[Status.DEATH] = 0.5;
            statusResistance[Status.STUN] = 0.3;
            statusResistance[Status.FREEZE_CHILL] = 0.3;
            statusResistance[Status.DRY_WET] = 0.5;
         }
         EXP = 12;
         AP = 2.5;
         SP = 2.5;
         gold = 2;
         dropList = [[Items.root,75],[Items.cactus,75],[Items.herb,30],[Items.raspberries,25],[Items.spike,10]];
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
         var _loc1_:int = Math.random() * 3;
         if(getHpPercent() < 33)
         {
            _loc1_ = 3;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 3;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 3;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("special4");
         }
         if(_loc1_ == 1 || _loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.attacking = true;
            graphic.animate("flee");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(90,Element.BIO,25,Status.POISON,3,isHard ? 150 : 50);
      }
      
      public function special4() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(33 / 3);
      }
      
      public function magic1() : *
      {
         if(Math.random() < 0.5)
         {
            castSpell("ClassicVines");
         }
         else
         {
            castSpell("ClassicPlantSpikes");
         }
      }
      
      public function vines() : *
      {
         Skills.basicFoeAttack(60,Element.BIO,25);
      }
      
      public function plantspikes() : *
      {
         Skills.basicFoeAttack(110 / 3,Element.BIO,25);
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.25);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         graphic.animate("special4");
      }
   }
}

