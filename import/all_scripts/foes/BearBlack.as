package foes
{
   public class BearBlack extends Foe
   {
      public static var iconInfo:Array = [6,18];
      
      internal var roll:Boolean = false;
      
      public function BearBlack(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Bear";
         graphicScale = 76;
         skin = 4;
         icon = 1217;
         catchRate = Catching.BEAR_RATE;
         boxSize = 2;
         HP = 402;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 20;
         hit3HP = 25;
         if(MapData.area == MapData.BATTLE_ARENA)
         {
            catchRate = 15;
         }
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 0.2;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 0.2;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
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
            elementalResistance[Element.THUNDER] = 0.2;
            elementalResistance[Element.EARTH] = 0.2;
            elementalResistance[Element.DARK] = -1;
            buffResistance[Stats.MAGIC_ATTACK] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
            statusResistance[Status.DEATH] = 0;
         }
         EXP = 61;
         AP = 8;
         SP = 8;
         gold = 36;
         dropList = [[Items.magma,50],[Items.leather,100],[Items.fur,100],[Items.claw,20],[Items.ruby,10]];
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
         if(getHpPercent() < 66 || Boolean(status[Status.BERSERK]))
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
         if(Battle.selectedTarget)
         {
            if(_loc1_ == 2 && Math.random() > Battle.selectedTarget.getResistance("elemental",Element.FIRE))
            {
               _loc1_ = 6;
            }
            if(_loc1_ == 6 && !Options.mature)
            {
               _loc1_ = 5;
            }
         }
         if(!Battle.selectedTarget && Boolean(graphic.angry))
         {
            _loc1_ = 1;
         }
         if(!Battle.selectedTarget && !graphic.angry)
         {
            Skills.giveStatus(this,Status.BERSERK,1);
            graphic.animate("evade");
            return;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("attack5");
         }
         if(_loc1_ == 2)
         {
            graphic.setXY();
            graphic.animate("attack7");
         }
         if(_loc1_ == 3)
         {
            graphic.setXY();
            graphic.animate("attack3");
         }
         if(_loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("magic1");
         }
         if(_loc1_ == 5)
         {
            graphic.setXY();
            graphic.animate("magic1");
         }
         if(_loc1_ == 6)
         {
            graphic.setXY();
            graphic.animate("special1");
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(40);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(60,Element.FIRE,20,Status.DRY,2,isHard ? 66 : 33);
      }
      
      public function attack7() : *
      {
         Skills.basicFoeAttack(50,Element.FIRE,50,isHard ? Status.SCORCHED : Status.BURN,3,100);
      }
      
      public function attack5() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "element":Element.FIRE,
            "elementDegree":20,
            "damage":28
         });
      }
      
      public function attack6() : *
      {
         Battle.targetType = Target.ALL_STANDBY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "element":Element.FIRE,
            "elementDegree":50,
            "damage":55
         });
      }
      
      public function special1() : *
      {
         Skills.basicFoeAttack(55 / 6,Element.EARTH,100,Status.VIRUS,1,isHard ? 15 : 0);
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
      
      public function magic1() : *
      {
         if(status[Status.SYPHON])
         {
            return;
         }
         if(Math.random() > Battle.selectedTarget.getResistance("elemental",Element.FIRE))
         {
            castSpell("Quake");
         }
         else if(Math.random() > 0.5)
         {
            castSpell("FireCrystals");
         }
         else
         {
            castSpell("FireSpire");
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
         graphic.setXY();
         if(Math.random() < 0.5)
         {
            graphic.animate("attack2");
         }
         else
         {
            graphic.animate("attack3");
         }
      }
   }
}

