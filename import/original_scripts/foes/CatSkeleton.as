package foes
{
   public class CatSkeleton extends Foe
   {
      public static var iconInfo:Array = [2,29];
      
      public var shieldDropped:Boolean = false;
      
      public var defended:Boolean = false;
      
      public function CatSkeleton(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Cat";
         graphicScale = 54;
         skin = 12;
         icon = 1215;
         catchRate = Catching.SKELETON_CAT_RATE;
         boxSize = 1;
         hit2HP = 20;
         dieAnim = "die3";
         HP = 74;
         attack = 4;
         magicAttack = 4;
         defence = 8;
         magicDefence = 8;
         accuracy = 4.2;
         evade = 4.2;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
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
            elementalResistance[Element.FIRE] = 1.3;
            elementalResistance[Element.WATER] = 1.3;
            elementalResistance[Element.HOLY] = 1.3;
            elementalResistance[Element.BIO] = -1;
            buffResistance[Stats.ACCURACY] = 1.3;
            buffResistance[Stats.EVADE] = 1.3;
         }
         EXP = 12;
         AP = 2;
         SP = 2;
         gold = 12;
         dropList = [[Items.buckle,20],[Items.iron,20],[Items.leather,20],[Items.steel,20],[Items.oldboots,2]];
         Global.skelCatDown = false;
         init(param1,param2,param3,param4);
         onHit = this.onHitFunction;
         if(isHard)
         {
            status[Status.MORALE] = 5;
         }
      }
      
      public function dropShield() : *
      {
         this.shieldDropped = true;
         hit2HP = 50;
         defence /= 2;
         magicDefence /= 2;
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(!Battle.selectedTarget)
         {
            Skills.giveStatus(this,Status.BERSERK,2);
         }
         FoeAI.targetWeakPlayer(50);
         var _loc1_:int = Math.random() * 3;
         if(status[Status.BERSERK] || this.defended || this.shieldDropped)
         {
            _loc1_ = Math.random() * 2;
         }
         if(Global.skelCatDown)
         {
            _loc1_ = 3;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("attack6");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("defend2");
            this.defended = true;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
            Global.skelCatDown = false;
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(28 / 3);
      }
      
      public function attack6() : *
      {
         Skills.basicFoeAttack(24,Element.DARK,25,Status.BAD_LUCK,2,isHard ? 100 : 50,125);
      }
      
      public function magic2() : *
      {
         castSpell("BonePillar");
      }
      
      public function defend2() : *
      {
         dispelBadBuffs();
         dispelBadStatus();
         buff(Stats.ACCURACY,isHard ? 100 : 50);
         Skills.giveStatus(this,Status.DEFEND,2);
         Skills.giveStatus(this,Status.MORALE,3);
      }
      
      public function onHitFunction() : *
      {
         if(realHP <= 0)
         {
            Global.skelCatDown = true;
         }
         if(Options.counterAttacks)
         {
            readyCounterAttack(1);
         }
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

