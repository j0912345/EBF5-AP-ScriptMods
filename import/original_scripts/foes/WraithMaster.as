package foes
{
   public class WraithMaster extends Foe
   {
      public static var iconInfo:Array = [6,10];
      
      private var spell:String = "";
      
      public function WraithMaster(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Wraith";
         graphicScale = 68;
         skin = 4;
         icon = 1072;
         catchRate = Catching.WRAITH_RATE;
         boxSize = 2;
         HP = 185;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1;
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
            elementalResistance[Element.ICE] = 0;
            elementalResistance[Element.THUNDER] = 0;
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.WIND] = 1.5;
            elementalResistance[Element.HOLY] = 1.5;
            statusResistance[Status.DISPEL] = 0;
            buffResistance[Stats.ATTACK] = 1.3;
            buffResistance[Stats.MAGIC_ATTACK] = 1.3;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         }
         EXP = 31;
         AP = 3.5;
         SP = 3.5;
         gold = 25;
         dropList = [[Items.claw,25],[Items.spike,10],[Items.silk,10],[Items.rune,5]];
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
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            quickFlee();
            return;
         }
         var _loc1_:int = Math.random() * 8;
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 3;
         }
         if(_loc1_ == 0)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.DARK);
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.FIRE);
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 2)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.BIO);
            graphic.setXY();
            graphic.animate("attack4");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 4)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.DARK);
            graphic.animate("magic2");
         }
         if(_loc1_ == 5)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.BIO);
            graphic.animate("magic1");
            this.spell = "RazorLeaf2";
         }
         if(_loc1_ == 6)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.ICE);
            graphic.animate("magic1");
            this.spell = "IceNeedle";
         }
         if(_loc1_ == 7)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.FIRE);
            graphic.animate("magic1");
            this.spell = "HellFire";
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(38,Element.DARK,25);
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(44,Element.FIRE,100,Status.DRY,2,isHard ? 100 : 50,120);
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(30,Element.BIO,100,Status.DISABLE,2,isHard ? 50 : 0,120);
      }
      
      public function attack3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":22 / 2,
            "element":Element.ICE,
            "elementDegree":100
         });
      }
      
      public function magic1() : *
      {
         castSpell(this.spell);
      }
      
      public function magic2() : *
      {
         castSpell("DarkSwoop");
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.5);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic1");
         this.spell = "BoneStar";
      }
   }
}

