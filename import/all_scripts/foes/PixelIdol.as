package foes
{
   public class PixelIdol extends Foe
   {
      public function PixelIdol(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Pixels";
         graphicScale = 80;
         skin = Math.random() * 3 + 10;
         icon = 1144;
         catchRate = Catching.PIXEL_RATE;
         boxSize = 1;
         HP = 1.11;
         attack = 8;
         magicAttack = 8;
         defence = 999;
         magicDefence = 999;
         accuracy = 4;
         evade = 4.2;
         hit2HP = 40;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 2;
         statusResistance[Status.DRY_WET] = 1;
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
            elementalResistance[Element.WATER] = 1;
            elementalResistance[Element.BOMB] = -0.5;
            elementalResistance[Element.THUNDER] = -1;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 22;
         AP = 2.1;
         SP = 2.1;
         gold = 16;
         dropList = [[Items.steel,20],[Items.shuriken,25],[Items.floppy,10],[Items.cpu,2]];
         if(Flags.battleEvent == Flags.KILL_ROBOT_QUEST)
         {
            dropList.push([Items.battery,0]);
            dropList.push([Items.battery,0]);
            dropList.push([Items.battery,0]);
            dropList.push([Items.battery,0]);
            dropList.push([Items.battery,100]);
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
         var _loc1_:int = Math.random() * 3;
         if(_loc1_ == 2 && Battle.randomPlayer().buffs[Stats.MAGIC_DEFENCE] <= 90)
         {
            _loc1_ = 0;
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
            graphic.animate("attack3");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack4");
         }
      }
      
      public function attack3() : *
      {
         Skills.basicFoeMagic(27,Element.THUNDER,50,Status.CONFUSE,2,isHard ? 66 : 0,150);
      }
      
      public function attack5() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.basicFoeAttack(48 / 3,Element.BOMB,100,Status.STAGGER,1,isHard ? 33 : 10);
      }
      
      public function attack4() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":8,
            "element":Element.THUNDER,
            "elementDegree":100,
            "buffEffect":Stats.MAGIC_DEFENCE,
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
         graphic.animate("attack5");
      }
   }
}

