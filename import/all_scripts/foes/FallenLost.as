package foes
{
   public class FallenLost extends Foe
   {
      public static var iconInfo:Array = [4,15];
      
      public function FallenLost(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Fallen";
         graphicScale = 80;
         skin = 4;
         icon = 1018;
         catchRate = Catching.FALLEN_RATE;
         boxSize = 2;
         HP = 249;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = -1;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = -0.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 0.5;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0;
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
            elementalResistance[Element.WATER] = 0;
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
         dropList = [[Items.fur,75],[Items.leather,30],[Items.buckle,33],[Items.steel,25],[Items.mythril,2]];
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
            quickFlee();
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
            FoeAI.targetRandomPlayerWeakTo(Element.ICE);
            graphic.animate("attack4");
         }
         if(_loc1_ == 3)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.WIND);
            graphic.animate("attack6");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic4");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(32 / 2);
      }
      
      public function throwWep() : *
      {
         graphic.makeMagic(FallenSword,graphic.x,graphic.y,false,skin);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(44 / 5);
      }
      
      public function attack4() : *
      {
         graphic.makeMagic(EffectIce2);
         Skills.basicFoeAttack(44,Element.ICE,50,Status.FREEZE,2,isHard ? 50 : 0,120);
      }
      
      public function attack6() : *
      {
         graphic.makeMagic(EffectWind);
         Skills.basicFoeAttack(60 / 2,Element.WIND,50,Status.CHILL,2,50);
      }
      
      public function specialEffect() : *
      {
         if(isHard)
         {
            buff(Stats.EVADE,20);
         }
      }
      
      public function magic4() : *
      {
         var _loc1_:String = FoeAI.getBestElement([Element.ICE,Element.EARTH]);
         if(_loc1_ == Element.ICE)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.ICE);
            castSpell("GroundBlade");
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
         if(status[Status.SYPHON])
         {
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("magic4");
         }
      }
   }
}

