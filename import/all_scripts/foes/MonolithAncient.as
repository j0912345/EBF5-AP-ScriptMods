package foes
{
   public class MonolithAncient extends Foe
   {
      public static var iconInfo:Array = [4,12];
      
      public function MonolithAncient(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Monolith";
         graphicScale = 82;
         skin = 2;
         icon = 1050;
         catchRate = Catching.MONOLITH_RATE;
         boxSize = 2;
         HP = 490;
         attack = 4;
         magicAttack = 6;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 2;
         hit2HP = 25;
         elementalResistance[Element.FIRE] = 0;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = -1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.8;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.5;
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
         statusResistance[Status.DISPEL] = 1;
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
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.BOMB] = 1.5;
            elementalResistance[Element.DARK] = 1;
            buffResistance[Stats.ACCURACY] = 1.8;
         }
         EXP = 200;
         AP = 19;
         SP = 19;
         gold = 150;
         dropList = [[Items.brick,100],[Items.brick,100],[Items.brick,100],[Items.gold,15],[Items.egg,2]];
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
         if(_loc1_ == 1 && Battle.randomFoe().buffs[Stats.DEFENCE] >= 110)
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
            if(isHard)
            {
               graphic.animate("attack1");
            }
            else
            {
               graphic.animate("evade");
            }
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special2");
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
            graphic.animate("special3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(100,Element.EARTH,25,Status.STAGGER,1,20);
         Battle.selectedTarget.status[Status.INVISIBLE] = 0;
      }
      
      public function special2() : *
      {
         Skills.giveStatus(this,Status.CHARGE,3);
         if(!Battle.selectedTarget)
         {
            return;
         }
         castRandomMultiSpell(Spells.thunder,2);
      }
      
      public function special3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         status[Status.CHARGE] = 0;
         Skills.basicFoeMagic(120,Element.THUNDER,100,Status.STUN,1,isHard ? 50 : 0);
      }
      
      public function special1() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in Battle.foes)
         {
            _loc1_.buff(Stats.DEFENCE,30);
            _loc1_.buff(Stats.MAGIC_DEFENCE,30);
            if(isHard)
            {
               Skills.giveStatus(_loc1_,Status.DEFEND,1);
            }
         }
      }
      
      public function magic1() : *
      {
         if(isHard && Math.random() > FoeAI.getPlayersWeakTo(Element.THUNDER,false,true).length / 4)
         {
            castRandomMultiSpell(Spells.luckystar2,2);
         }
         else if(Math.random() > 0.5)
         {
            castSpell("BlueBolt");
         }
         else
         {
            castSpell("Thunderstorm");
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

