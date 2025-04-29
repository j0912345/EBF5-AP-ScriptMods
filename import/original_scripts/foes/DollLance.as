package foes
{
   public class DollLance extends Foe
   {
      public static var iconInfo:Array = [6,3];
      
      public var oldPercentageHP:Number = 101;
      
      public var percentageHurt:Number = 0;
      
      public function DollLance(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Doll";
         graphicScale = 82;
         skin = 3;
         icon = 1003;
         catchRate = Catching.DOLL_RATE;
         boxSize = 1;
         HP = 210;
         attack = 4;
         magicAttack = 4;
         defence = 3.9;
         magicDefence = 4.1;
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
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.EARTH] = 0;
            elementalResistance[Element.BIO] = 0;
            elementalResistance[Element.BOMB] = 2;
            elementalResistance[Element.HOLY] = 2;
            elementalResistance[Element.DARK] = -1;
            statusResistance[Status.SYPHON_DISABLE] = 0.5;
         }
         EXP = 55;
         AP = 5.1;
         SP = 5.1;
         gold = 37;
         dropList = [[Items.wool,100],[Items.floppy,50],[Items.powder,50],[Items.tape,30],[Items.plastic,25]];
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
         var _loc1_:int = 0;
         if(getHpPercent() < 80)
         {
            _loc1_ = Math.random() * 2;
         }
         if(Boolean(status[Status.SYPHON]) && isHard)
         {
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         if(Boolean(status[Status.BERSERK]) || Boolean(status[Status.SYPHON]))
         {
            _loc1_ = 2;
         }
         if(!Battle.selectedTarget)
         {
            if(Boolean(status[Status.BERSERK]) || Boolean(status[Status.SYPHON]))
            {
               graphic.animate("evade");
               return;
            }
            _loc1_ = 1;
         }
         if(status[Status.CHARGE])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("magic3");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic4");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack2");
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(14);
      }
      
      public function magic3() : *
      {
         if(status[Status.CHARGE])
         {
            castSpell("AirStrike3");
            status[Status.CHARGE] = 0;
         }
         else if(Math.random() < 0.8)
         {
            castSpell("AirStrike2");
         }
         else
         {
            castSpell("AirStrike");
         }
      }
      
      public function magic4() : *
      {
         if(Math.random() < 0.5)
         {
            Battle.selectedTarget = Battle.mostDamagedFoe();
            castSpell("Medipack");
         }
         else
         {
            Skills.giveStatus(this,Status.CHARGE,2);
         }
      }
      
      override public function counter2() : *
      {
         if(!Battle.isPlayerInBattle(Players.player3))
         {
            return;
         }
         if(this.percentageHurt <= 1 && this.percentageHurt >= -1)
         {
            return;
         }
         Battle.selectedTarget = Players.player3;
         Battle.finalHit = false;
         if(Options.counterAttacks)
         {
            this.percentageHurt *= 2;
         }
         Skills.customFoeAttack({
            "type":Stats.NONE,
            "damage":Players.player3.maxHP * this.percentageHurt / 100,
            "element":Element.NONE,
            "randomness":0,
            "critical":0,
            "accuracy":99999,
            "isCounter":true
         });
         Text.speech(Text.dolls[8]);
         this.percentageHurt = 0;
      }
   }
}

