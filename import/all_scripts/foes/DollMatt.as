package foes
{
   public class DollMatt extends Foe
   {
      public static var iconInfo:Array = [6,1];
      
      public var oldPercentageHP:Number = 101;
      
      public var percentageHurt:Number = 0;
      
      public function DollMatt(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Doll";
         graphicScale = 82;
         skin = 1;
         icon = 1001;
         catchRate = Catching.DOLL_RATE;
         boxSize = 1;
         HP = 240;
         attack = 4;
         magicAttack = 4;
         defence = 4.4;
         magicDefence = 3.7;
         accuracy = 4;
         evade = 4;
         hit2HP = 33;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
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
            elementalResistance[Element.WATER] = 2;
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.EARTH] = 2;
            elementalResistance[Element.BIO] = 0;
            elementalResistance[Element.BOMB] = 0;
            elementalResistance[Element.HOLY] = 0;
            elementalResistance[Element.DARK] = -1;
            statusResistance[Status.SYPHON_DISABLE] = 0.5;
         }
         EXP = 55;
         AP = 5.1;
         SP = 5.1;
         gold = 37;
         dropList = [[Items.wool,100],[Items.steel,50],[Items.tape,30],[Items.plastic,40]];
         init(param1,param2,param3,param4);
         onHit = this.onHitFunction;
         onHeal = this.onHitFunction;
      }
      
      public function onHitFunction() : *
      {
         var _loc1_:Number = this.oldPercentageHP - getHpPercent();
         this.oldPercentageHP = getHpPercent();
         if(status[Status.SYPHON])
         {
            return;
         }
         if(Global.endlessBattle)
         {
            _loc1_ *= 1;
         }
         else
         {
            if(Options.difficulty == Options.ZERO)
            {
               _loc1_ *= 0.2;
            }
            if(Options.difficulty == Options.EASY)
            {
               _loc1_ *= 0.4;
            }
            if(Options.difficulty == Options.NORMAL)
            {
               _loc1_ *= 0.7;
            }
            if(Options.difficulty == Options.HARD)
            {
               _loc1_ *= 1;
            }
            if(Options.difficulty == Options.EPIC)
            {
               _loc1_ *= 1.5;
            }
         }
         this.percentageHurt += _loc1_;
         if(Battle.counterStack.indexOf(this) == -1)
         {
            Battle.counterStack.push(this);
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
         var _loc1_:int = Math.random() * 3;
         if(Boolean(status[Status.SYPHON]) && isHard)
         {
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         if(Boolean(status[Status.BERSERK]) || Boolean(status[Status.SYPHON]))
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(36 / 3);
         graphic.makeMagic(EffectStab2);
      }
      
      public function magic1() : *
      {
         castSpell("LightBlade");
      }
      
      public function magic2() : *
      {
         if(buffs[Stats.ATTACK] <= 110)
         {
            Battle.selectedTarget = this;
            castSpell("Temper");
         }
         else
         {
            if(buffs[Stats.DEFENCE] <= 110)
            {
               Battle.selectedTarget = this;
            }
            else
            {
               Battle.selectedTarget = Battle.mostDamagedFoe();
            }
            castSpell("Guardian");
         }
      }
      
      override public function counter2() : *
      {
         if(!Battle.isPlayerInBattle(Players.player1))
         {
            return;
         }
         if(this.percentageHurt <= 1 && this.percentageHurt >= -1)
         {
            return;
         }
         Battle.selectedTarget = Players.player1;
         Battle.finalHit = false;
         if(Options.counterAttacks)
         {
            this.percentageHurt *= 2;
         }
         Skills.customFoeAttack({
            "type":Stats.NONE,
            "damage":Players.player1.maxHP * this.percentageHurt / 100,
            "element":Element.NONE,
            "randomness":0,
            "critical":0,
            "accuracy":99999,
            "isCounter":true
         });
         this.percentageHurt = 0;
      }
   }
}

