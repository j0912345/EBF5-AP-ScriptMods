package foes
{
   public class FallenBeheaded extends Foe
   {
      public static var iconInfo:Array = [4,18];
      
      public function FallenBeheaded(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Fallen";
         graphicScale = 80;
         skin = 3;
         icon = 1017;
         catchRate = Catching.FALLEN_RATE;
         boxSize = 2;
         HP = 249;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 0.5;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0;
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
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.WATER] = 0.5;
            elementalResistance[Element.WIND] = 0.5;
            elementalResistance[Element.ICE] = 0.5;
            buffResistance[Stats.ATTACK] = 1.3;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.ACCURACY] = 1.3;
         }
         EXP = 35;
         AP = 3.8;
         SP = 3.8;
         gold = 28;
         dropList = [[Items.iron,75],[Items.leather,20],[Items.buckle,33],[Items.bomb,75]];
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
         if(isScared(GHOSTS))
         {
            if(getHpPercent() < 50)
            {
               Skills.giveStatus(this,Status.SURRENDER,99);
               quickFlee();
               return;
            }
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         if(!Battle.selectedTarget)
         {
            quickFlee();
            return;
         }
         var _loc1_:int = Math.random() * 5;
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = Math.random() * 3;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 3 || _loc1_ == 4)
         {
            graphic.animate("magic4");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(55 / 2,Element.NONE,0,Status.NONE,0,0,75);
      }
      
      public function attack5() : *
      {
         Skills.basicFoeAttack(80 / 4,Element.NONE,0,Status.NONE,0,0,55);
      }
      
      public function throwWep() : *
      {
         graphic.makeMagic(FallenSword,graphic.x,graphic.y,false,skin);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(65 / 5,Element.NONE,0,Status.NONE,0,0,75);
      }
      
      public function magic4() : *
      {
         var _loc1_:String = FoeAI.getBestElement([Element.DARK,Element.FIRE,Element.EARTH]);
         if(_loc1_ == Element.DARK)
         {
            castSpell("BlackSpikes");
         }
         if(_loc1_ == Element.FIRE)
         {
            castSpell("FireSpire");
         }
         if(_loc1_ == Element.EARTH)
         {
            castMultiSpell(Spells.earthedge);
         }
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
         graphic.animate("attack1");
      }
   }
}

