package foes
{
   public class DollNatalie extends Foe
   {
      public static var iconInfo:Array = [6,2];
      
      public var oldPercentageHP:Number = 101;
      
      public var percentageHurt:Number = 0;
      
      public function DollNatalie(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Doll";
         graphicScale = 82;
         skin = 2;
         icon = 1002;
         catchRate = Catching.DOLL_RATE;
         boxSize = 1;
         HP = 190;
         attack = 4;
         magicAttack = 3.6;
         defence = 3.7;
         magicDefence = 4.4;
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
            elementalResistance[Element.ICE] = 2;
            elementalResistance[Element.THUNDER] = 2;
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.EARTH] = 0;
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
         dropList = [[Items.wool,100],[Items.tape,30],[Items.flower,30],[Items.silk,30],[Items.satin,10]];
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
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("magic4");
            return;
         }
         var _loc1_:int = Math.random() * 5;
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(status[Status.SYPHON])
         {
            if(isHard)
            {
               Skills.giveStatus(this,Status.BERSERK,1);
            }
            _loc1_ = 5;
         }
         if(_loc1_ == 0 || _loc1_ == 1 || _loc1_ == 2 || _loc1_ == 3)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic4");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("attack2");
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(12);
      }
      
      public function magic4() : *
      {
         if(isHard)
         {
            castSpell("HealMore");
         }
         else
         {
            Battle.selectedTarget = Battle.mostDamagedFoe();
            castSpell("Heal");
         }
      }
      
      public function magic2() : *
      {
         var _loc1_:int = Math.random() * 3;
         if(_loc1_ == 0)
         {
            castSpell("Fireball");
         }
         if(_loc1_ == 1)
         {
            castSpell("Thunderbolt");
         }
         if(_loc1_ == 2)
         {
            castSpell("Iceshard");
         }
      }
      
      override public function counter2() : *
      {
         if(!Battle.isPlayerInBattle(Players.player2))
         {
            return;
         }
         if(this.percentageHurt <= 1 && this.percentageHurt >= -1)
         {
            return;
         }
         Battle.selectedTarget = Players.player2;
         Battle.finalHit = false;
         if(Options.counterAttacks)
         {
            this.percentageHurt *= 2;
         }
         Skills.customFoeAttack({
            "type":Stats.NONE,
            "damage":Players.player2.maxHP * this.percentageHurt / 100,
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

