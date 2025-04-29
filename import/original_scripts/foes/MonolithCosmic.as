package foes
{
   public class MonolithCosmic extends Foe
   {
      public static var iconInfo:Array = [4,13];
      
      public function MonolithCosmic(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var _loc5_:int = 0;
         super();
         setStrings();
         graphicType = "Monolith";
         graphicScale = 82;
         skin = 1;
         icon = 1051;
         catchRate = Catching.MEGA_BOSS_RATE;
         boxSize = 3;
         HP = 500;
         attack = 4;
         magicAttack = 6;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 8;
         hit2HP = 25;
         elementalResistance[Element.FIRE] = 0;
         elementalResistance[Element.ICE] = 0;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 0;
         elementalResistance[Element.HOLY] = 0;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         buffResistance[Stats.DEFENCE] = 1.4;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            statusResistance[Status.CURSE_BAD_LUCK] = 0;
            statusResistance[Status.DISPEL] = 0;
            statusResistance[Status.SYPHON_DISABLE] = 0.3;
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.THUNDER] = 0;
            _loc5_ = Math.random() * 4;
            if(_loc5_ == 0)
            {
               elementalResistance[Element.FIRE] = 1.8;
            }
            if(_loc5_ == 1)
            {
               elementalResistance[Element.THUNDER] = 1.8;
            }
            if(_loc5_ == 2)
            {
               elementalResistance[Element.WATER] = 1.8;
            }
            if(_loc5_ == 3)
            {
               elementalResistance[Element.BOMB] = 1.8;
            }
            buffResistance[Stats.ACCURACY] = 1.8;
         }
         EXP = 500;
         AP = 25;
         SP = 25;
         gold = 200;
         dropList = [[Items.rune,80],[Items.rune,80],[Items.lego,30],[Items.darkmatter,15],[Items.pill,2]];
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
         var _loc1_:int = Math.random() * 4 + 1;
         if(_loc1_ == 1 && Battle.randomFoe().buffs[Stats.EVADE] >= 110)
         {
            _loc1_ = 3;
         }
         if(status[Status.CHARGE])
         {
            _loc1_ = 5;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget && _loc1_ == 0)
         {
            if(getHpPercent() < 50)
            {
               Skills.giveStatus(this,Status.SURRENDER,99);
               graphic.animate("evade");
               return;
            }
            graphic.animate("evade");
            return;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special7");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special8");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special9");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(180);
         Battle.selectedTarget.status[Status.INVISIBLE] = 0;
      }
      
      public function special8() : *
      {
         Skills.giveStatus(this,Status.CHARGE,3);
         if(!Battle.selectedTarget)
         {
            return;
         }
         if(isHard)
         {
            castSpell("Geometry2");
         }
      }
      
      public function special9() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         status[Status.CHARGE] = 0;
         castSpell("Doomsday");
      }
      
      public function special7() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in Battle.foes)
         {
            _loc1_.buff(Stats.EVADE,isHard ? 50 : 30);
            _loc1_.buff(Stats.MAGIC_ATTACK,isHard ? 50 : 30);
         }
      }
      
      public function magic1() : *
      {
         var _loc1_:String = FoeAI.getBestElement([Element.DARK,Element.BOMB,Element.WIND]);
         if(Math.random() < 0.25)
         {
            castSpell("Geometry3");
         }
         else if(_loc1_ == Element.DARK)
         {
            castSpell("Pulsar");
         }
         else if(_loc1_ == Element.WIND)
         {
            castSpell("ShockWave");
         }
         else if(_loc1_ == Element.BOMB)
         {
            castSpell("EnergyBlast");
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(1);
      }
      
      override public function counter2() : *
      {
         if(dead || getHpPercent() > 33)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("attack1");
      }
   }
}

