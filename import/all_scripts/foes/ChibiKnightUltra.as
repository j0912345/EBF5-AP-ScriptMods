package foes
{
   public class ChibiKnightUltra extends Foe
   {
      public var c:int = 0;
      
      public var s:int = 1;
      
      public var undefended:Boolean = true;
      
      public var noDamage:Boolean = false;
      
      public function ChibiKnightUltra(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Chibi";
         graphicScale = 80;
         skin = 3;
         icon = 1096;
         catchRate = Catching.BOSS_RATE;
         boxSize = 1;
         cantFlee = true;
         HP = 2600;
         attack = 5;
         magicAttack = 5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.2;
         hit2HP = 9;
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.ICE] = -1;
         elementalResistance[Element.THUNDER] = -1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.8;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BIO] = 0.5;
            elementalResistance[Element.WATER] = -1;
            elementalResistance[Element.BOMB] = 0;
            elementalResistance[Element.DARK] = 1.5;
            statusResistance[Status.SYPHON_DISABLE] = 0;
         }
         buffResistance[Stats.ATTACK] = 1.5;
         buffResistance[Stats.MAGIC_ATTACK] = 1.5;
         buffResistance[Stats.DEFENCE] = 1.5;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
         buffResistance[Stats.ACCURACY] = 1.1;
         buffResistance[Stats.EVADE] = 1.1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         EXP = 600;
         AP = 60;
         SP = 60;
         gold = 500;
         dropList = [[Items.buckle,100],[Items.gold,100],[Items.cloudberries,100],[Items.starfragment,100],[Items.grail,100]];
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
         if(this.s)
         {
            turnTaken = false;
            this.s = 0;
         }
         else
         {
            this.s = 1;
         }
         var _loc1_:int = 0;
         if(this.s == 0)
         {
            _loc1_ = 3;
            if(Math.random() < 0.25)
            {
               _loc1_ = 2;
            }
         }
         else
         {
            if(getHpPercent() < 60)
            {
               _loc1_ = Math.random() * 2;
            }
            if(getHpPercent() < 45)
            {
               _loc1_ = 1;
               if(buffs[Stats.DEFENCE] <= 105 && buffs[Stats.MAGIC_DEFENCE] <= 105 && (this.undefended || Math.random() * 0.25))
               {
                  _loc1_ = 4;
                  this.undefended = false;
               }
            }
            if(Battle.foeCount() == 1 && getHpPercent() < 20)
            {
               if(isHard)
               {
                  ++this.c;
               }
            }
            if(Battle.foeCount() == 1)
            {
               ++this.c;
               if(this.c >= 4)
               {
                  _loc1_ = 5;
                  this.c = 0;
               }
            }
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 2;
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
            graphic.animate("magic2");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(90 / 3,Element.HOLY,100);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(160 / 6,Element.HOLY,100);
      }
      
      public function attack3() : *
      {
         Battle.selectedTarget.status[Status.INVISIBLE] = 0;
         if(graphic.swordType == 0)
         {
            drainage = Skills.basicFoeAttack(240 / 6,Element.HOLY,100);
         }
         if(graphic.swordType == 1)
         {
            drainage = Skills.basicFoeAttack(240 / 6,Element.THUNDER,100,Status.STUN,2,isHard ? 25 : 10);
         }
         if(graphic.swordType == 2)
         {
            drainage = Skills.basicFoeAttack(240 / 6,Element.FIRE,100,Status.BURN,3,isHard ? 100 : 50);
         }
         if(graphic.swordType == 3)
         {
            drainage = Skills.basicFoeAttack(240 / 6,Element.ICE,100,Status.FREEZE,1,isHard ? 50 : 25);
         }
      }
      
      public function attack33() : *
      {
         var _loc1_:Target = Battle.selectedTarget;
         if(graphic.swordType == 0)
         {
            FoeAI.targetPlayerWeakestTo(Element.HOLY);
         }
         if(graphic.swordType == 1)
         {
            FoeAI.targetPlayerWeakestTo(Element.THUNDER);
         }
         if(graphic.swordType == 2)
         {
            FoeAI.targetPlayerWeakestTo(Element.FIRE);
         }
         if(graphic.swordType == 3)
         {
            FoeAI.targetPlayerWeakestTo(Element.ICE);
         }
         if(_loc1_ == Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(_loc1_);
         }
      }
      
      public function magic3() : *
      {
         if(MapData.area == MapData.TEMPLE_OF_TRIALS)
         {
            spawnFoe(Options.altFoes ? [DragonOmega] : [MammothCamel],this.level);
         }
         else
         {
            spawnFoe(Options.altFoes ? [DragonOmega] : [MammothWar],this.level);
         }
         if(!Options.altFoes)
         {
            Text.speech(Text.chibi[11]);
         }
      }
      
      public function magic1() : *
      {
         var _loc1_:String = FoeAI.getBestElement([Element.ICE,Element.THUNDER,Element.FIRE]);
         if(_loc1_ == Element.THUNDER)
         {
            graphic.swordType = 1;
         }
         else if(_loc1_ == Element.ICE)
         {
            graphic.swordType = 3;
         }
         else if(_loc1_ == Element.FIRE)
         {
            graphic.swordType = 2;
         }
         Battle.selectedTarget = FoeAI.targetPlayerWeakestTo(_loc1_);
         graphic.skin += graphic.swordType;
      }
      
      public function magic4() : *
      {
         var _loc1_:String = FoeAI.getBestElement([Element.ICE,Element.THUNDER,Element.FIRE]);
         if(_loc1_ == Element.THUNDER)
         {
            castSpell("Thunderstorm");
         }
         else if(_loc1_ == Element.ICE)
         {
            castSpell("Icestorm");
         }
         else if(_loc1_ == Element.FIRE)
         {
            castSpell("Firestorm");
         }
      }
      
      public function magic2() : *
      {
         Battle.selectedTarget = this;
         castSpell("Guardian");
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(1);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         if(status[Status.SYPHON])
         {
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("magic4");
         }
      }
   }
}

