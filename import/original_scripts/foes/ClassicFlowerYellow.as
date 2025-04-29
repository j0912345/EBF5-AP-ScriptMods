package foes
{
   public class ClassicFlowerYellow extends Foe
   {
      public function ClassicFlowerYellow(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicFlowerMC";
         graphicScale = 75;
         skin = 3;
         icon = 1184;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         cantFlee = true;
         HP = 168;
         hit2HP = 40;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = -1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
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
         dropList = [[Items.root,75],[Items.amber,35],[Items.herb,30],[Items.cloudberries,10],[Items.topaz,5]];
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
         if(status[Status.CHARGE])
         {
            _loc1_ = 4;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("charge");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special1");
         }
      }
      
      public function charge1() : *
      {
         Skills.giveStatus(this,Status.CHARGE,2);
      }
      
      public function special1() : *
      {
         Battle.targetType = ALL_ENEMY;
         status[Status.CHARGE] = 0;
         Skills.basicFoeMagic(70,Element.THUNDER,100,Status.STUN,1,isHard ? 30 : 15);
      }
      
      public function special3() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":150,
            "statusEffect":Status.STUN,
            "statusChance":(isHard ? 66 : 33),
            "statusDegree":1,
            "buffEffect":Stats.ACCURACY,
            "buffDegree":-15,
            "buffChance":100
         });
      }
      
      public function magic3() : *
      {
         castSpell("Thunderbolt");
      }
      
      public function magic1() : *
      {
         castSpell("ClassicBulbBlast");
      }
      
      public function bulb() : *
      {
         Skills.basicFoeAttack(70,Element.THUNDER,25,Status.STAGGER,2,isHard ? 100 : 50);
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
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic3");
      }
   }
}

