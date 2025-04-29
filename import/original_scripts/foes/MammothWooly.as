package foes
{
   public class MammothWooly extends Foe
   {
      public static var iconInfo:Array = [10,1];
      
      public var revives:int = 2;
      
      public var reviveFail:Boolean = false;
      
      public var mag:Boolean = false;
      
      public function MammothWooly(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Mammoth";
         graphicScale = 92;
         skin = 1;
         icon = 1041;
         catchRate = Catching.MAMMOTH_RATE;
         boxSize = 3;
         HP = 1199;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.7;
         hit2HP = 10;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.ICE] = 0;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.8;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.2;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1.5;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1.5;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.1;
         buffResistance[Stats.ATTACK] = 1.5;
         buffResistance[Stats.MAGIC_ATTACK] = 1.5;
         buffResistance[Stats.DEFENCE] = 1.5;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 1;
            elementalResistance[Element.BIO] = 1.3;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.WATER] = 0.5;
            buffResistance[Stats.ACCURACY] = 1.8;
         }
         EXP = 255;
         AP = 22;
         SP = 25;
         gold = 202;
         dropList = [[Items.fur,100],[Items.fur,100],[Items.fur,100],[Items.spike,100],[Items.chicken,2]];
         init(param1,param2,param3,param4);
         onHit = this.onHitFunction;
      }
      
      public function onHitFunction() : *
      {
         if(realHP <= 0 && (Boolean(status[Status.WEAKEN]) || Boolean(status[Status.TIRED])))
         {
            this.reviveFail = true;
         }
         if(Options.counterAttacks)
         {
            readyCounterAttack(0.33);
         }
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if(Math.random() < 0.75)
         {
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("attack3");
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
         var _loc1_:int = Math.random() * 4;
         if(_loc1_ == 3 && (getHpPercent() < 50 && Battle.randomPlayer().buffs[Stats.ATTACK] <= 90 || getHpPercent() >= 50 && Battle.randomFoe().buffs[Stats.ATTACK] >= 110))
         {
            _loc1_ = 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 3;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 3;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = int([3,2][int(Math.random() * 2)]);
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
            graphic.animate("attack2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
      }
      
      public function makeHungry() : *
      {
         var _loc1_:Player = null;
         for each(_loc1_ in Battle.players)
         {
            if(!_loc1_.dead && Math.random() < (isHard ? 0.66 : 0.33))
            {
               Skills.giveStatus(_loc1_,Status.HUNGRY,2);
            }
         }
      }
      
      public function maybeRevive() : *
      {
         if(this.revives == 2 && Math.random() < (isHard ? 1 : 0.5) || this.revives == 1 && Math.random() < (isHard ? 0.5 : 0.2))
         {
            if(this.reviveFail)
            {
               return;
            }
            graphic.animate("revive");
            dead = false;
            SP = 3;
            getHeal({
               "damage":maxHP / 6 * this.revives,
               "randomness":20
            });
            --this.revives;
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(140);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(200,Element.NONE,100,Status.DISABLE,3,isHard ? 100 : 33);
      }
      
      public function attack2() : *
      {
         graphic.makeMagic(EffectEarth2,0,0,true);
         Skills.groundPound(35);
      }
      
      public function magic2() : *
      {
         var _loc1_:int = 0;
         if(status[Status.SYPHON])
         {
            return;
         }
         if(isHard)
         {
            Battle.selectedTarget = Battle.randomPlayer();
            if(!Battle.selectedTarget)
            {
               return;
            }
            _loc1_ = Math.random() * 2;
            if(_loc1_ == 0)
            {
               castSpell("Quake");
            }
            if(_loc1_ == 1)
            {
               castSpell("Tundra");
            }
         }
      }
      
      public function magic1() : *
      {
         var _loc1_:Foe = null;
         if(getHpPercent() < 50)
         {
            Battle.targetType = Target.ALL_ENEMY;
            Skills.customFoeAttack({
               "statusOnly":true,
               "accuracy":200,
               "buffEffect":Stats.ATTACK,
               "buffDegree":-30,
               "buffChance":100
            });
            Skills.customFoeAttack({
               "statusOnly":true,
               "accuracy":200,
               "buffEffect":Stats.MAGIC_ATTACK,
               "buffDegree":-30,
               "buffChance":100
            });
            if(isHard)
            {
               Skills.giveStatus(this,Status.LOVED,2);
            }
         }
         else
         {
            Battle.targetType = Target.ALL_ENEMY;
            for each(_loc1_ in Battle.foes)
            {
               _loc1_.buff(Stats.ATTACK,isHard ? 30 : 25);
            }
         }
      }
   }
}

