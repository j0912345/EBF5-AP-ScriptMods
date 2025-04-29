package foes
{
   public class BearPanda extends Foe
   {
      public static var iconInfo:Array = [6,16];
      
      internal var pooped:Boolean = false;
      
      internal var roll:Boolean = false;
      
      public function BearPanda(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Bear";
         graphicScale = 76;
         skin = 3;
         icon = 1112;
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
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 0.5;
         elementalResistance[Element.DARK] = 0.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.3;
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
            elementalResistance[Element.BIO] = 0.5;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.DARK] = -1;
            elementalResistance[Element.HOLY] = -1;
            buffResistance[Stats.MAGIC_ATTACK] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
            statusResistance[Status.DEATH] = 0;
         }
         EXP = 68;
         AP = 8;
         SP = 8;
         gold = 40;
         dropList = [[Items.herb,100],[Items.leather,100],[Items.fur,100],[Items.claw,20],[Items.bread,2]];
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
         else if(getHpPercent() >= 100)
         {
            return;
         }
         var _loc1_:int = 0;
         if(getHpPercent() < 80 || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = Math.random() * 5 + 1;
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
         if(this.roll)
         {
            _loc1_ = 4;
         }
         if(_loc1_ == 4 && (Boolean(this.pooped) || !Options.mature))
         {
            _loc1_ = Math.random() * 3 + 1;
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
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("special1");
            this.pooped = true;
            this.roll = false;
         }
         if(_loc1_ == 5)
         {
            graphic.setXY();
            graphic.animate("attack5");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(38);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(60,Element.BIO,20,Status.STUN,2,33);
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
            "element":Element.BIO,
            "elementDegree":20,
            "damage":28
         });
      }
      
      public function attack6() : *
      {
         Battle.targetType = Target.ALL_STANDBY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "element":Element.BIO,
            "elementDegree":20,
            "damage":40
         });
      }
      
      public function magic1() : *
      {
         if(status[Status.SYPHON])
         {
            return;
         }
         if(Math.random() > 0.5)
         {
            castMultiSpell(Spells.bamboo);
         }
         else
         {
            castSpell("Bamboo2");
         }
      }
      
      public function mad1() : *
      {
         this.buff(Stats.ATTACK,20);
         if(isHard)
         {
            this.buff(Stats.EVADE,20);
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
            graphic.animate("special1");
         }
      }
   }
}

