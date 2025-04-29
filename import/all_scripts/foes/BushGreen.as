package foes
{
   public class BushGreen extends Foe
   {
      public static var iconInfo:Array = [2,1];
      
      public function BushGreen(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Bush";
         graphicScale = 57;
         skin = Math.random() * 3 + 10;
         icon = 1089;
         catchRate = Catching.BUSH_RATE;
         boxSize = 1;
         HP = 65;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
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
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.EARTH] = 1;
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.BIO] = -1;
         }
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
         dropList = [[Items.root,10],[Items.wood,10],[Items.herb,30]];
         if(Flags.battleEvent == Flags.KILL_BUSH_QUEST)
         {
            dropList.push([Items.plank,0]);
            dropList.push([Items.plank,0]);
            dropList.push([Items.plank,0]);
            dropList.push([Items.plank,0]);
            dropList.push([Items.plank,100]);
         }
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
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0 || _loc1_ == 3)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1 || _loc1_ == 4)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special1");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(13,Element.BIO,20);
      }
      
      public function magic1() : *
      {
         castSpell("Nettle");
      }
      
      public function special1() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":0,
            "statusOnly":true,
            "buffEffect":Stats.ATTACK,
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
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         graphic.animate("special1");
      }
   }
}

