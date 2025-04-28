package foes
{
   public class EvilAnna extends Foe
   {
      public var textCount:int = 1;
      
      public var summons:int = 0;
      
      internal var food:int = 1;
      
      public var spell:int = 0;
      
      public var multiattack:int = 0;
      
      public var whacked:Boolean = false;
      
      public var whackWait:int = 0;
      
      public function EvilAnna(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var level:int = param1;
         var X:int = param2;
         var Y:int = param3;
         var scale:int = param4;
         super();
         setStrings();
         graphicType = "Anna";
         graphicScale = 68;
         skin = 1;
         icon = 1154;
         catchRate = Catching.MEGA_BOSS_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 4856;
         attack = 3.6;
         magicAttack = 3.6;
         defence = 3.5;
         magicDefence = 3.5;
         accuracy = 4.5;
         evade = 4.5;
         hit2HP = 4;
         hit2Anim = "hit1";
         dieAnim = "die2";
         zombieMode = true;
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = -1;
         elementalResistance[Element.BOMB] = 0;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = -1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.THUNDER] = 0.5;
            elementalResistance[Element.WIND] = -1;
            elementalResistance[Element.EARTH] = 0.5;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.8;
         buffResistance[Stats.MAGIC_ATTACK] = 1.8;
         buffResistance[Stats.DEFENCE] = 1.4;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1.4;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_HIGH;
         EXP = 1500;
         AP = 80;
         SP = 200;
         gold = 800;
         dropList = [[Items.claw,100],[Items.spike,100],[Items.satin,100],[Items.rune,100],[Items.darkmatter,100]];
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
         Global.element = Element.NONE;
         ++this.whackWait;
         if(this.textCount == 1)
         {
            if(Text.speech(Text.evilAnna[1]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2 && getHpPercent() < 90)
         {
            if(Text.speech(Text.evilAnna[2]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 70)
         {
            if(Text.speech(Text.evilAnna[3]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 50)
         {
            if(Text.speech(Text.evilAnna[4]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 30)
         {
            if(Text.speech(Text.evilAnna[5]))
            {
               ++this.textCount;
            }
         }
         Text.speech(Text.evilAnna[10]);
         Text.speech(Text.evilAnna[12]);
         if(getHpPercent() < 80)
         {
            Text.speech(Text.evilAnna[9]);
         }
         var _loc1_:int = Math.random() * 3;
         if(getHpPercent() < 75)
         {
            _loc1_ = Math.random() * 5 + 1;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 7 + 3;
         }
         if(Battle.foeCount() == 1)
         {
            this.summons += 1;
         }
         if(zombieLimit)
         {
            if(getHpPercent() > 33)
            {
               _loc1_ = 12;
            }
            else
            {
               _loc1_ = 13;
            }
         }
         else if(this.summons >= 4)
         {
            _loc1_ = 11;
            this.summons = 0;
         }
         if(this.whackWait >= 3)
         {
            _loc1_ = 10;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("shoot1");
            this.multiattack = 1;
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special4");
            this.spell = 0;
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special3");
            this.spell = 0;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special4");
            this.spell = 1;
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("shoot4");
         }
         if(_loc1_ == 6)
         {
            Global.itemIcon = 6666;
            graphic.animate("itemthrow");
            this.multiattack = 2;
         }
         if(_loc1_ == 7)
         {
            graphic.animate("shoot2");
         }
         if(_loc1_ == 8)
         {
            graphic.animate("special4");
            this.spell = 2;
         }
         if(_loc1_ == 9)
         {
            graphic.animate("special3");
            this.spell = 1;
         }
         if(_loc1_ == 10)
         {
            FoeAI.targetStrongestPlayer();
            graphic.animate("attack2");
            turnTaken = false;
            this.whackWait = 0;
         }
         if(_loc1_ == 11)
         {
            graphic.animate("equip");
            this.spell = 1;
         }
         if(_loc1_ == 12)
         {
            graphic.animate("shoot5");
         }
         if(_loc1_ == 13)
         {
            graphic.animate("special3");
            this.spell = 2;
         }
      }
      
      public function equip1() : *
      {
         spawnFoe(Options.altFoes ? [HydraMagma,HydraZombie,HydraIce] : [GolemTopaz,ChomperMutant],this.level + 2);
      }
      
      public function defend1() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in Battle.foes)
         {
            if(isHard)
            {
               Skills.giveStatus(_loc1_,Status.BRAVE,3);
            }
            Skills.giveStatus(_loc1_,Status.DEFEND,1);
         }
      }
      
      public function special3() : *
      {
         if(this.spell == 0)
         {
            castSpell("Screamer");
         }
         if(this.spell == 1)
         {
            castSpell("Ritual");
         }
         if(this.spell == 2)
         {
            castSpell("BlackHole");
            zombieLimit = false;
         }
      }
      
      public function special4() : *
      {
         if(this.spell == 0)
         {
            castRandomMultiSpell(Spells.blackspikes,4);
         }
         if(this.spell == 1)
         {
            castRandomMultiSpell(Spells.tentacles,4);
         }
         if(this.spell == 2)
         {
            castSpell("Syphon2");
         }
      }
      
      public function magic1() : *
      {
         castMultiSpell(Spells.tempest);
      }
      
      public function shoot1() : *
      {
         if(this.multiattack == 0 || Battle.playerCount() == 1)
         {
            Battle.finalHit = false;
         }
         Global.element = Element.DARK;
         castSpell("PiercingShot");
      }
      
      public function shoot1b() : *
      {
         if(this.multiattack)
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            if(!Battle.selectedTarget)
            {
               Battle.selectedTarget = Battle.randomPlayer();
            }
            graphic.gotoAndPlay("shoot1");
            --this.multiattack;
         }
      }
      
      public function shoot2() : *
      {
         Global.element = Element.DARK;
         castSpell("ComboShot");
      }
      
      public function bonusSpell() : *
      {
         if(this.multiattack == 0)
         {
            if(Battle.selectedTarget.dead)
            {
               Battle.selectedTarget = Battle.randomPlayer();
            }
            castSpell("Whirlwind");
         }
      }
      
      public function shoot4() : *
      {
         Global.element = Element.DARK;
         castSpell("ArrowRain");
      }
      
      public function bonusSpell2() : *
      {
         castSpell("Hurricane");
      }
      
      public function attack2() : *
      {
         Battle.selectedTarget.status[Status.INVISIBLE] = 0;
         Global.element = Element.NONE;
         Skills.basicFoeAttack(60,Element.NONE,0,Status.DISPEL,9,100);
      }
      
      public function throwItem() : *
      {
         graphic.makeMagic(EffectPoison);
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "element":Element.BIO,
            "elementDegree":100,
            "damage":180 / 3,
            "statusEffect":Status.VIRUS,
            "statusDegree":(isHard ? 5 : 3),
            "statusChance":100,
            "buffEffect":Stats.MAGIC_DEFENCE,
            "buffDegree":(isHard ? -30 : -20),
            "buffChance":100
         });
      }
      
      public function throwItemb() : *
      {
         if(this.multiattack)
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            if(!Battle.selectedTarget)
            {
               Battle.selectedTarget = Battle.randomPlayer();
            }
            graphic.gotoAndPlay("itemthrow");
            --this.multiattack;
         }
      }
      
      public function shoot5() : *
      {
         castSpell("Annihilate");
         zombieLimit = false;
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.66);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("attack2");
      }
   }
}

