package foes
{
   public class FallenDrowned extends Foe
   {
      public static var iconInfo:Array = [4,14];
      
      public function FallenDrowned(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Fallen";
         graphicScale = 80;
         skin = 1;
         icon = 1019;
         catchRate = Catching.FALLEN_RATE;
         boxSize = 2;
         HP = 249;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = -1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 0.5;
         elementalResistance[Element.HOLY] = 1.5;
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
            elementalResistance[Element.ICE] = -0.5;
            elementalResistance[Element.BIO] = 0;
            elementalResistance[Element.HOLY] = 0;
            buffResistance[Stats.ATTACK] = 1.3;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.ACCURACY] = 1.3;
         }
         EXP = 35;
         AP = 3.8;
         SP = 3.8;
         gold = 28;
         dropList = [[Items.steel,25],[Items.geode,30],[Items.buckle,33],[Items.silver,10],[Items.satin,10]];
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
         var _loc1_:int = Math.random() * 4;
         if(!Battle.selectedTarget)
         {
            _loc1_ = 3;
         }
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget && (Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK])))
         {
            quickFlee();
            return;
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
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special1");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(26 / 2);
      }
      
      public function throwWep() : *
      {
         graphic.makeMagic(FallenSword,graphic.x,graphic.y,false,skin);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(40 / 5);
      }
      
      public function special1() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(24 / 3,Element.WIND,100);
      }
      
      public function magic1() : *
      {
         var _loc1_:String = FoeAI.getBestElement([Element.WIND,Element.WATER]);
         if(_loc1_ == Element.WIND)
         {
            if(isHard)
            {
               FoeAI.targetRandomPlayerWeakTo(Element.WIND);
            }
            if(Math.random() < 0.5)
            {
               castSpell("AirWave");
            }
            else
            {
               castMultiSpell(Spells.air);
            }
         }
         else if(_loc1_ == Element.WATER)
         {
            if(isHard)
            {
               FoeAI.targetRandomPlayerWeakTo(Element.WATER);
            }
            castSpell("BubbleRing");
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
         if(status[Status.SYPHON])
         {
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("special1");
         }
      }
   }
}

