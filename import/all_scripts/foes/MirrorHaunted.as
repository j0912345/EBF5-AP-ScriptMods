package foes
{
   public class MirrorHaunted extends Foe
   {
      public static var iconInfo:Array = [4,20];
      
      public var broken:Boolean = false;
      
      public var oldPercentageHP:Number = 101;
      
      public var percentageHurt:Number = 0;
      
      public function MirrorHaunted(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Mirror";
         graphicScale = 77;
         skin = 1;
         icon = 1029;
         catchRate = Catching.MIRROR_RATE;
         boxSize = 2;
         HP = 198;
         attack = 4;
         magicAttack = 4;
         defence = 3.6;
         magicDefence = 4.4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 1.5;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1.5;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.FIRE] = 1;
            elementalResistance[Element.BIO] = -1;
            statusResistance[Status.DEATH] = 0;
            statusResistance[Status.STUN] = 0;
         }
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         EXP = 37;
         AP = 4.1;
         SP = 4.1;
         gold = 30;
         dropList = [[Items.wood,15],[Items.glass,45],[Items.butterflywing,15]];
         init(param1,param2,param3,param4);
         onHit = this.onHitFunction;
         onHeal = this.onHitFunction;
      }
      
      public function onHitFunction() : *
      {
         var _loc1_:Number = this.oldPercentageHP - getHpPercent();
         this.oldPercentageHP = getHpPercent();
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
         var _loc1_:int = Math.random() * 3 + 1;
         if(getHpPercent() < 40 && Math.random() > 0.5)
         {
            _loc1_ = 4;
         }
         if(_loc1_ == 3 && Battle.selectedTarget && Boolean(Battle.selectedTarget.status[Status.INVISIBLE]))
         {
            _loc1_ = 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 4;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(this.broken)
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            graphic.animate("evade");
            return;
         }
         if(!Battle.selectedTarget && this.broken)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
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
            graphic.animate("attack3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack4");
         }
      }
      
      public function breakMirror(param1:Boolean = false) : *
      {
         this.broken = true;
         if(!param1)
         {
            if(lastAttacker && !lastAttacker.dead && lastAttacker != Weather.weatherPlayer)
            {
               Skills.giveStatus(lastAttacker,Status.BAD_LUCK,isHard ? 3 : 2);
            }
            Text.speech(Text.mirrors[4]);
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(20);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeMagic(27,Element.DARK,100,Status.CURSE,3,isHard ? 50 : 25);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeMagic(37,Element.DARK,100);
      }
      
      public function attack4() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(29 / 3);
      }
      
      public function magic1() : *
      {
         castSpell("Darken");
      }
      
      override public function counter2() : *
      {
         if(this.percentageHurt <= 1 || this.broken || lastHit.type == Stats.ATTACK)
         {
            return;
         }
         Battle.selectedTarget = Battle.randomPlayer();
         if(Options.counterAttacks)
         {
            this.percentageHurt *= 2;
         }
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":100 * this.percentageHurt / 100,
            "element":lastHit.element,
            "elementDegree":100,
            "statusEffect":lastHit.statusEffect,
            "statusChance":lastHit.statusChance,
            "statusDegree":lastHit.statusDegree,
            "randomness":10,
            "critical":0,
            "accuracy":99999,
            "isCounter":true
         });
         FoeAI.makeEffectOfElement(lastHit.element,graphic);
         Text.speech(Text.mirrors[3]);
         this.percentageHurt = 0;
      }
   }
}

