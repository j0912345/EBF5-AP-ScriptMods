package foes
{
   public class IdolMetal extends Foe
   {
      public static var iconInfo:Array = [5,2];
      
      public function IdolMetal(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Idol";
         graphicScale = 73;
         skin = Math.random() * 3 + 7;
         icon = 1027;
         catchRate = Catching.IDOL_RATE;
         boxSize = 1;
         HP = 68;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.2;
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
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.THUNDER] = -1;
            elementalResistance[Element.BIO] = 0;
            elementalResistance[Element.BOMB] = 0;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 2;
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
         EXP = 6;
         AP = 1;
         SP = 1;
         gold = 7;
         dropList = [[Items.steel,20],[Items.shuriken,25],[Items.floppy,10]];
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
         if(Boolean(status[Status.BERSERK]) || Boolean(status[Status.SYPHON]))
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
            graphic.setXY();
            graphic.animate("attack4");
         }
         if(_loc1_ == 2)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(15,Element.EARTH,25);
      }
      
      public function attack4() : *
      {
         Skills.basicFoeMagic(12,Element.NONE,0,Status.DISABLE,1,isHard ? 66 : 33);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(24,Element.EARTH,25,Status.STAGGER,1,isHard ? 20 : 0);
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.33);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if(status[Status.SYPHON])
         {
            graphic.animate("attack2");
         }
         else
         {
            graphic.animate("attack4");
         }
      }
   }
}

