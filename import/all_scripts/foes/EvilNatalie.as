package foes
{
   public class EvilNatalie extends Foe
   {
      public var textCount:int = 1;
      
      public var defended:Boolean = false;
      
      public var dispelSelf:Boolean = true;
      
      public var summons:int = 0;
      
      public var spell:int = 0;
      
      public var counterSpell:Boolean = false;
      
      public function EvilNatalie(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var level:int = param1;
         var X:int = param2;
         var Y:int = param3;
         var scale:int = param4;
         super();
         setStrings();
         graphicType = "Natalie";
         graphicScale = 68;
         skin = 1;
         icon = 1152;
         catchRate = Catching.MEGA_BOSS_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 5311;
         attack = 4;
         magicAttack = 4;
         defence = 3.5;
         magicDefence = 12;
         accuracy = 5.5;
         evade = 4;
         hit2HP = 4;
         hit2Anim = "hit1";
         dieAnim = "die2";
         zombieMode = true;
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.8;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WATER] = 1.5;
            elementalResistance[Element.WIND] = 1.5;
            elementalResistance[Element.DARK] = 1.5;
            elementalResistance[Element.BIO] = 0.5;
            elementalResistance[Element.THUNDER] = -1;
            elementalResistance[Element.ICE] = -1;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 0.5;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.8;
         buffResistance[Stats.DEFENCE] = 1.4;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.8;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1.4;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_HIGH;
         EXP = 1500;
         AP = 80;
         SP = 200;
         gold = 800;
         dropList = [[Items.silk,100],[Items.satin,100],[Items.gold,100],[Items.ruby,100],[Items.rune,100]];
         init(level,X,Y,scale);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(graphic)
         {
            graphic.zombieMode = true;
         }
         zombieAggroMax = 35;
         if(graphic)
         {
            onDeath = function():*
            {
               var _loc1_:Player = null;
               Flags.battleEvent = Flags.NONE;
               for each(_loc1_ in Battle.players)
               {
                  if(_loc1_.statusDisplay)
                  {
                     _loc1_.statusDisplay.update(_loc1_);
                  }
               }
            };
         }
         BossDevourer.finalBossBuff(this,0,true);
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(delayedSpellFlag != 0)
         {
            if(delayedSpellFlag == 1)
            {
               this.special33();
            }
            if(delayedSpellFlag == 2)
            {
               this.special44();
            }
            delayedSpellFlag = 0;
            turnTaken = false;
            return;
         }
         if(this.textCount == 1)
         {
            if(Text.speech(Text.evilNatz[1]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2 && getHpPercent() < 90)
         {
            if(Text.speech(Text.evilNatz[2]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 70)
         {
            if(Text.speech(Text.evilNatz[3]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 50)
         {
            if(Text.speech(Text.evilNatz[4]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 30)
         {
            if(Text.speech(Text.evilNatz[5]))
            {
               ++this.textCount;
            }
         }
         Text.speech(Text.evilNatz[10]);
         if(zombieLimit)
         {
            Text.speech(Text.evilNatz[16]);
         }
         Text.speech(Text.evilNatz[9]);
         Text.speech(Text.evilNatz[15]);
         if(getHpPercent() < 40)
         {
            Text.speech(Text.evilNatz[14]);
         }
         if(getHpPercent() < 60)
         {
            Text.speech(Text.evilNatz[13]);
         }
         if(getHpPercent() < 80)
         {
            Text.speech(Text.evilNatz[12]);
         }
         var _loc1_:int = Math.random() * 2;
         if(getHpPercent() < 75)
         {
            _loc1_ = Math.random() * 4;
         }
         if(getHpPercent() < 50)
         {
            _loc1_ = Math.random() * 4 + 2;
         }
         if(isHard && FoeAI.arePlayersBuffed(2450) && Math.random() < 0.33)
         {
            _loc1_ = 8;
            this.dispelSelf = false;
         }
         if(FoeAI.isFoeDebuffed(this,620))
         {
            _loc1_ = 7;
            this.dispelSelf = true;
         }
         if(Battle.foeCount() == 2)
         {
            ++this.summons;
         }
         if(Battle.foeCount() == 1)
         {
            this.summons += 2;
         }
         if(zombieLimit)
         {
            if(getHpPercent() > 33)
            {
               _loc1_ = 9;
            }
            else
            {
               _loc1_ = 10;
            }
         }
         else if(this.summons >= 7)
         {
            _loc1_ = 6;
            this.summons = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
            this.spell = 0;
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack1");
            this.spell = 1;
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic2");
            this.spell = 0;
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic5");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("magic4");
         }
         if(_loc1_ == 7)
         {
            graphic.animate("magic2");
            this.spell = 1;
         }
         if(_loc1_ == 8)
         {
            graphic.animate("magic2");
            this.spell = 2;
         }
         if(_loc1_ == 9)
         {
            graphic.animate("magic6");
            this.spell = 0;
         }
         if(_loc1_ == 10)
         {
            graphic.animate("magic6");
            this.spell = 1;
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(60,Element.NONE,0);
      }
      
      public function bonusSpell() : *
      {
         if(!this.counterSpell)
         {
            if(this.spell == 0)
            {
               castSpell("FireBlast");
            }
            if(this.spell == 1)
            {
               castSpell("HolySword");
            }
         }
         this.counterSpell = false;
      }
      
      public function special3() : *
      {
         delayedSpellFlag = 1;
      }
      
      public function special33() : *
      {
         castRandomMultiSpell(Spells.smallfireball,4);
      }
      
      public function special4() : *
      {
         delayedSpellFlag = 2;
      }
      
      public function special44() : *
      {
         castRandomMultiSpell(Spells.smallholyball,4);
      }
      
      public function magic2() : *
      {
         if(this.spell == 0)
         {
            castMultiSpell(Spells.eruption);
         }
         if(this.spell == 1)
         {
            Battle.selectedSkill = Spells.dispel;
            Spells.dispel.target = this.dispelSelf ? Target.ALL_ALLY : Target.ALL_ENEMY;
            Battle.targetType = this.dispelSelf ? Target.ALL_ALLY : Target.ALL_ENEMY;
            castSpell("Dispel");
         }
         if(this.spell == 2)
         {
            Battle.selectedSkill = Spells.dispel;
            Spells.dispel.target = this.dispelSelf ? Target.ALL_ALLY : Target.ALL_ENEMY;
            Battle.targetType = this.dispelSelf ? Target.ALL_ALLY : Target.ALL_ENEMY;
            castSpell("Dispel2");
         }
      }
      
      public function magic5() : *
      {
         castMultiSpell(Spells.judgement);
      }
      
      public function magic6() : *
      {
         if(this.spell == 0)
         {
            Battle.selectedSkill = Spells.supernova;
            castSpell("Supernova");
         }
         if(this.spell == 1)
         {
            Battle.selectedSkill = Spells.genesis;
            castSpell("Genesis");
         }
         zombieLimit = false;
      }
      
      public function magic4() : *
      {
         var _loc1_:Class = (Options.altFoes ? [DollNatalie,DollNoLegs,DollAnna,DollMatt,DollLance] : [DogMage,MirrorAngel,MirrorAngel,GloopAsh,FishGold])[int(Math.random() * 5)];
         spawnFoe([_loc1_],this.level + (Options.altFoes ? 2 : 1));
         spawnFoe([_loc1_],this.level + (Options.altFoes ? 2 : 1));
      }
      
      public function magic1() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in Battle.foes)
         {
            if(isHard)
            {
               _loc1_.buff(Stats.EVADE,35);
            }
            Skills.giveStatus(_loc1_,Status.DEFEND,1);
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
         this.counterSpell = true;
         graphic.animate("attack1");
      }
   }
}

