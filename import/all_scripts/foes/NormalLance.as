package foes
{
   public class NormalLance extends Foe
   {
      public var defended:Boolean = false;
      
      public var textCount:int = 1;
      
      public var s:int = 1;
      
      public var noEaten:Boolean = true;
      
      public function NormalLance(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var level:int = param1;
         var X:int = param2;
         var Y:int = param3;
         var scale:int = param4;
         super();
         setStrings();
         graphicType = "Lance";
         graphicScale = 68;
         skin = 1;
         icon = 1162;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         cantFlee = true;
         HP = 1602;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         hit2Anim = "hit1";
         hit2HP = 12;
         zombieMode = true;
         zombieAggroMax = 70;
         elementalResistance[Element.FIRE] = 0.8;
         elementalResistance[Element.THUNDER] = 0.8;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 2;
         elementalResistance[Element.DARK] = 0;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.HOLY] = 1.5;
            statusResistance[Status.WEAKENED_TIRED] = 0.5;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
            statusResistance[Status.WEAKENED_TIRED] = 0.5;
            buffResistance[Stats.ATTACK] = 1.2;
            buffResistance[Stats.MAGIC_ATTACK] = 1.2;
            buffResistance[Stats.DEFENCE] = 1.2;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
            buffResistance[Stats.ACCURACY] = 1.2;
            buffResistance[Stats.EVADE] = 1.2;
         }
         EXP = 160;
         AP = 25;
         SP = 25;
         gold = 330;
         dropList = [[Items.bomb,100],[Items.bomb,100],[Items.bomb,100],[Items.bomb,100]];
         init(level,X,Y,scale);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(!isHard)
         {
            zombieLimit = true;
         }
         if(Boolean(graphic) && Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            onDeath = function():*
            {
               Foes.scan(this,false);
            };
         }
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            zombieAggroMax = 9999;
            attack *= 0.75;
            magicAttack *= 0.75;
            HP *= 0.75;
            dropList = [[Items.bomb,100],[Items.powder,100],[Items.silk,100]];
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 6;
         if(this.s % 3 == 0)
         {
            _loc1_ = 7;
         }
         if(getHpPercent() < 20)
         {
            _loc1_ = 6;
         }
         if(Battle.selectedTarget)
         {
         }
         if(Flags.battleEvent == Flags.LANCE_BATTLE_2)
         {
            if(this.textCount == 1)
            {
               if(Text.speech(Text.lance[11]))
               {
                  ++this.textCount;
               }
            }
            else if(this.textCount == 2)
            {
               if(Text.speech(Text.lance[2]))
               {
                  ++this.textCount;
               }
            }
            else if(this.textCount == 3)
            {
               if(Text.speech(Text.lance[12]))
               {
                  ++this.textCount;
               }
            }
            else if(this.textCount == 4)
            {
               if(Text.speech(Text.lance[3]))
               {
                  ++this.textCount;
               }
            }
            else if(this.textCount == 5 && getHpPercent() < 50)
            {
               if(Text.speech(Text.lance[4]))
               {
                  ++this.textCount;
               }
            }
            else if(this.textCount == 6 && getHpPercent() < 20)
            {
               if(Text.speech(Text.lance[10]))
               {
                  ++this.textCount;
               }
            }
         }
         else if(Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            if(this.textCount == 1)
            {
               if(Text.speech(Text.lance[14]))
               {
                  ++this.textCount;
               }
            }
            else if(this.textCount == 2)
            {
               if(Text.speech(Text.lance[15]))
               {
                  ++this.textCount;
               }
            }
            else if(this.textCount == 3 && getHpPercent() < 80)
            {
               if(Text.speech(Text.lance[16]))
               {
                  ++this.textCount;
               }
            }
            else if(this.textCount == 4 && getHpPercent() < 50)
            {
               if(Text.speech(Text.lance[17]))
               {
                  ++this.textCount;
               }
            }
            else if(this.textCount == 5 && getHpPercent() < 30)
            {
               if(Text.speech(Text.lance[21]))
               {
                  ++this.textCount;
               }
            }
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("shoot1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("shoot1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("shoot2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("shoot2");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 7)
         {
            graphic.animate("magic1");
         }
         ++this.s;
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(80 / 2,Element.BOMB,50);
      }
      
      public function attack5() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.basicFoeAttack(240 / 6,Element.BOMB,50);
      }
      
      public function magic1() : *
      {
         if(isHard && zombieLimit)
         {
            Skills.user = this;
            castSpell("Ion");
            zombieLimit = false;
         }
         else if(getHpPercent() < 50 && this.noEaten)
         {
            this.noEaten = false;
            Battle.selectedTarget = this;
            castSpell("Medipack");
            if(isHard && Flags.battleEvent != Flags.LANCE_BATTLE_3)
            {
               spawnFoe(Options.altFoes ? [FlybotYellow,FlybotBlue,FlybotRed] : [FlybotRed],this.level);
            }
         }
         else
         {
            if(Math.random() < 0.5)
            {
               castSpell("AirStrike");
            }
            else
            {
               castMultiSpell(Spells.airstrike2);
            }
            if(Flags.battleEvent != Flags.LANCE_BATTLE_3)
            {
               spawnFoe(Options.altFoes ? [FlybotYellow,FlybotBlue,FlybotRed] : [FlybotRed],this.level);
            }
         }
      }
      
      public function shoot1() : *
      {
         var _loc1_:int = Math.random() * 2;
         if(_loc1_ == 0)
         {
            if(isHard)
            {
               FoeAI.targetPlayerWeakestTo(Element.FIRE);
            }
            castSpell("FlameShot");
         }
         if(_loc1_ == 1)
         {
            if(isHard)
            {
               FoeAI.targetPlayerWeakestTo(Element.THUNDER);
            }
            castSpell("Plasma");
         }
      }
      
      public function shoot2() : *
      {
         var _loc1_:int = Math.random() * 2;
         if(_loc1_ == 0)
         {
            castSpell("FlameBurst");
         }
         if(_loc1_ == 1)
         {
            castSpell("PlasmaWave");
         }
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
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("attack4");
      }
   }
}

