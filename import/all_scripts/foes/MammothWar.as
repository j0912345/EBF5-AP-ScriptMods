package foes
{
   public class MammothWar extends Foe
   {
      public static var iconInfo:Array = [10,3];
      
      public var revives:int = 2;
      
      public var reviveFail:Boolean = false;
      
      public var mag:Boolean = false;
      
      public function MammothWar(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Mammoth";
         graphicScale = 90;
         skin = 3;
         icon = 1043;
         catchRate = Catching.MAMMOTH_RATE;
         boxSize = 3;
         HP = 1355;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.5;
         hit2HP = 10;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 1.8;
         elementalResistance[Element.BOMB] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
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
            elementalResistance[Element.ICE] = 0.5;
            elementalResistance[Element.THUNDER] = 0.5;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.WATER] = 0.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.8;
            buffResistance[Stats.MAGIC_ATTACK] = 1.8;
            buffResistance[Stats.ACCURACY] = 1.5;
         }
         EXP = 299;
         AP = 24;
         SP = 28;
         gold = 230;
         dropList = [[Items.steel,100],[Items.steel,100],[Items.fur,100],[Items.buckle,100],[Items.kevlar,50]];
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
         if(Math.random() < 0.5)
         {
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("attack2");
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
         if(getHpPercent() < 66 && _loc1_ == 3 && Math.random() < 0.5)
         {
            _loc1_ = 4;
         }
         if(getHpPercent() < 33 && _loc1_ == 3)
         {
            _loc1_ = 4;
         }
         if(_loc1_ == 2 && !FoeAI.getBestDispelPlayer(770))
         {
            _loc1_ = 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = int([1,2,4][int(Math.random() * 3)]);
            if(status[Status.SYPHON])
            {
               _loc1_ = 1;
            }
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special2");
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
         if(this.revives == 2 && Math.random() < 1 || this.revives == 1 && Math.random() < 0.5)
         {
            if(this.reviveFail || !isHard)
            {
               return;
            }
            graphic.animate("revive");
            dead = false;
            SP = 3;
            getHeal({
               "damage":maxHP / 8 * this.revives,
               "randomness":20
            });
            --this.revives;
         }
      }
      
      public function special1() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.basicFoeMagic(200 / 3,Element.BOMB,100);
      }
      
      public function special2() : *
      {
         castSpell("BigBlast");
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(180);
      }
      
      public function attack2() : *
      {
         graphic.makeMagic(EffectEarth2,0,0,true);
         Skills.groundPound(38);
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
               castSpell("Sawblade");
            }
         }
      }
      
      public function magic1() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":200,
            "statusEffect":Status.DISPEL,
            "statusDegree":1,
            "statusChance":(isHard ? 100 : 50)
         });
      }
   }
}

