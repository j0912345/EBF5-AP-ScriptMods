package foes
{
   public class PixelSlime extends Foe
   {
      public function PixelSlime(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Pixels";
         graphicScale = 80;
         skin = Math.random() * 3 + 1;
         icon = 1146;
         catchRate = Catching.PIXEL_RATE;
         boxSize = 1;
         HP = 256;
         attack = 8;
         magicAttack = 8;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3;
         hit2HP = 33;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 2;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BOMB] = 1;
            elementalResistance[Element.DARK] = 1;
            elementalResistance[Element.EARTH] = -0.5;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 17;
         AP = 1.9;
         SP = 1.9;
         gold = 12;
         dropList = [[Items.herb,20],[Items.root,10],[Items.turd,10],[Items.floppy,10]];
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
         if(isScared(SLIMES))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            quickFlee();
            return;
         }
         var _loc1_:int = Math.random() * 3;
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
            graphic.animate("attack3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeMagic(25,Element.BIO,25,Status.POISON,3,isHard ? 33 : 20,150);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(33,Element.EARTH,25,Status.HEAVY,3,isHard ? 25 : 0);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeMagic(29,Element.BIO,100,Status.TIRED,5,isHard ? 100 : 50,150);
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
         graphic.animate("attack1");
      }
   }
}

