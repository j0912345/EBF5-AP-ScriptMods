package foes
{
   public class PixelBush extends Foe
   {
      public function PixelBush(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Pixels";
         graphicScale = 80;
         skin = Math.random() * 3 + 7;
         icon = 1145;
         catchRate = Catching.PIXEL_RATE;
         boxSize = 1;
         HP = 295;
         attack = 8;
         magicAttack = 8;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.5;
         hit2HP = 40;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 1.8;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 2;
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
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = -1;
            elementalResistance[Element.EARTH] = -0.5;
            elementalResistance[Element.DARK] = 0.5;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 18;
         AP = 2;
         SP = 2;
         gold = 12;
         dropList = [[Items.root,20],[Items.wood,10],[Items.herb,10],[Items.floppy,10]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(Math.random() < 0.5)
         {
            status[Status.BURN] = int(1 + Math.random() * 4);
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
         var _loc1_:int = Math.random() * 3;
         if(_loc1_ == 2 && Battle.randomPlayer().buffs[Stats.DEFENCE] <= 90)
         {
            _loc1_ = 1;
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
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack4");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeMagic(22,Element.FIRE,50,Status.DRY,3,isHard ? 66 : 33,150);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(30,Element.FIRE,50,isHard ? Status.SCORCHED : Status.BURN,3,33);
      }
      
      public function attack4() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":8,
            "buffEffect":Stats.DEFENCE,
            "buffDegree":(isHard ? -30 : -20),
            "buffChance":(isHard ? 66 : 33),
            "accuracy":300
         });
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
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("attack2");
      }
   }
}

