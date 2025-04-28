package foes
{
   public class BearBrown extends Foe
   {
      public static var iconInfo:Array = [6,14];
      
      internal var pooped:Boolean = false;
      
      internal var roll:Boolean = false;
      
      public function BearBrown(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Bear";
         graphicScale = 76;
         skin = 1;
         icon = 1110;
         catchRate = Catching.BEAR_RATE;
         boxSize = 2;
         HP = 422;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 20;
         hit3HP = 25;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.8;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0.3;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 2;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.3;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 1;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.DARK] = 0.5;
            elementalResistance[Element.HOLY] = 0.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
            statusResistance[Status.DEATH] = 0;
         }
         EXP = 55;
         AP = 8;
         SP = 8;
         gold = 40;
         dropList = [[Items.turd,50],[Items.leather,100],[Items.fur,100],[Items.claw,10]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(isHard)
         {
            hit2HP = 15;
            hit3HP = 20;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(isScared(BEASTS))
         {
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         var _loc1_:int = Math.random() * 3;
         if(getHpPercent() < 50 || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = Math.random() * 3 + 2;
         }
         if(!status[Status.BERSERK])
         {
            graphic.angry = false;
         }
         else
         {
            graphic.angry = true;
         }
         FoeAI.targetLastAttackerOf(this);
         if(_loc1_ == 4 && (Boolean(this.pooped) || !Options.mature))
         {
            _loc1_ = 2;
         }
         if(this.roll)
         {
            _loc1_ = 5;
         }
         if(!Battle.selectedTarget && Boolean(graphic.angry))
         {
            _loc1_ = 5;
         }
         if(!Battle.selectedTarget && !graphic.angry)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.setXY();
            graphic.animate("attack3");
         }
         if(_loc1_ == 3)
         {
            graphic.setXY();
            graphic.animate("attack4");
         }
         if(_loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("special1");
            this.pooped = true;
         }
         if(_loc1_ == 5)
         {
            graphic.setXY();
            graphic.animate("attack5");
            this.roll = false;
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(38);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(40);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(60,Element.NONE,100,Status.STUN,2,33);
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(80 / 6);
      }
      
      public function special1() : *
      {
         Skills.basicFoeAttack(55 / 6,Element.EARTH,100,Status.VIRUS,1,isHard ? 15 : 0);
      }
      
      public function attack5() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":28,
            "element":Element.NONE
         });
      }
      
      public function attack6() : *
      {
         Battle.targetType = Target.ALL_STANDBY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":40,
            "element":Element.NONE
         });
      }
      
      public function mad1() : *
      {
         if(isHard)
         {
            this.buff(Stats.ATTACK,20);
         }
         Skills.giveStatus(this,Status.BERSERK,3);
         this.roll = true;
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
         graphic.setXY();
         if(Math.random() < 0.5)
         {
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("attack4");
         }
      }
   }
}

