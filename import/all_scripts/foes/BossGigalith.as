package foes
{
   public class BossGigalith extends Foe
   {
      public var justEnchanted:Boolean = false;
      
      public var shiftCount:int = 0;
      
      public var textCount:int = 2;
      
      public function BossGigalith(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Gigalith";
         graphicScale = 100;
         skin = 1;
         icon = 1156;
         catchRate = Catching.UNCATCHABLE;
         if(SaveData.questNo != 1)
         {
            catchRate = Catching.MEGA_BOSS_RATE;
         }
         boxSize = 3;
         HP = 6267;
         if(Flags.GIGALITH_DEFEATED.quantity)
         {
            HP *= 0.5;
         }
         attack = 4.5;
         magicAttack = 4.5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.2;
         evade = 5.5;
         hit2HP = 3;
         hit3HP = 6;
         if(Options.counterAttacks)
         {
            attack = 5;
            magicAttack = 5;
         }
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.5;
         buffResistance[Stats.MAGIC_ATTACK] = 1.5;
         buffResistance[Stats.DEFENCE] = 1.5;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
         buffResistance[Stats.ACCURACY] = 1.5;
         buffResistance[Stats.EVADE] = 1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         onHit = this.onHitFunction;
         EXP = 800;
         AP = 80;
         SP = 80;
         gold = 1000;
         dropList = [[Items.rune,100],[Items.rune,100],[Items.rune,100],[Items.darkmatter,50],[Items.chili,30]];
         BossDevourer.finalBossBuff(this);
         init(param1,param2,param3,param4);
         if(Flags.battleEvent == Flags.FINAL_BOSS)
         {
            this.resistanceChange(false);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = 0;
         if(skin == 2 && Math.random() < 0.25)
         {
            _loc1_ = 1;
         }
         if(skin == 3 && Math.random() < 0.5)
         {
            _loc1_ = 1;
         }
         if(skin == 4)
         {
            _loc1_ = 1;
         }
         if(this.shiftCount >= 5 || Boolean(status[Status.SYPHON]))
         {
            _loc1_ = 2;
         }
         if(_loc1_ == 1 && this.justEnchanted)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 2)
         {
            Text.speech(Text.gigalith[12]);
            Text.speech(Text.gigalith[13]);
         }
         if(this.textCount == 2 && getHpPercent() < 90)
         {
            if(Players.player2.canMove() && Text.speech(Text.gigalith[2],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 75)
         {
            if(Players.player4.canMove() && Text.speech(Text.gigalith[3],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 60)
         {
            if(Players.player1.canMove() && Text.speech(Text.gigalith[4],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 50)
         {
            if(Players.player4.canMove() && Text.speech(Text.gigalith[5],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 6 && getHpPercent() < 40)
         {
            if(Players.player3.canMove() && Text.speech(Text.gigalith[6],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 7 && getHpPercent() < 20 && isHard)
         {
            if(Players.player2.canMove() && Text.speech(Text.gigalith[7],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         if(_loc1_ == 0)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic3");
            this.shiftCount = -1;
            turnTaken = false;
         }
         ++this.shiftCount;
         if(status[Status.CURSE])
         {
            ++this.shiftCount;
         }
         if(status[Status.WEAKEN])
         {
            ++this.shiftCount;
         }
         if(status[Status.TIRED])
         {
            ++this.shiftCount;
         }
         if(_loc1_ != 2)
         {
            this.justEnchanted = false;
         }
      }
      
      public function skinDamage() : *
      {
         if(getHpPercent() < 75 && graphic.skin == 1)
         {
            ++graphic.skin;
         }
         if(getHpPercent() < 50 && graphic.skin == 2)
         {
            ++graphic.skin;
         }
         if(getHpPercent() < 25 && graphic.skin == 3)
         {
            ++graphic.skin;
         }
         skin = graphic.skin;
      }
      
      public function special1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(120 / 10,Element.NONE,100,Status.SCORCHED,2,isHard ? 100 : 50);
      }
      
      public function magic3() : *
      {
         this.resistanceChange(true);
      }
      
      public function resistanceChange(param1:Boolean = true) : *
      {
         var _loc2_:String = null;
         if(param1)
         {
            this.buff(Stats.EVADE,isHard ? 25 : 15);
            status[Status.WEAKEN] = 0;
            status[Status.TIRED] = 0;
            status[Status.CURSE] = 0;
            status[Status.SYPHON] = 0;
         }
         for each(_loc2_ in Element.ELEMENTS)
         {
            if(isHard)
            {
               elementalResistance[_loc2_] = -0.5;
            }
            else
            {
               elementalResistance[_loc2_] = 0;
            }
            if(Options.extraFoeResistance)
            {
               elementalResistance[_loc2_] = -1;
            }
         }
         elementalResistance[Element.ELEMENTS[int(Math.random() * 10)]] = 4;
         recalculateElementalResistance();
      }
      
      public function magic1() : *
      {
         var _loc1_:int = Math.random() * 7;
         if(_loc1_ == 0)
         {
            castSpell("Syphon2");
         }
         if(_loc1_ == 1)
         {
            castMultiSpell(Spells.lighten);
            this.justEnchanted = true;
         }
         if(_loc1_ == 2)
         {
            castMultiSpell(Spells.lavalance);
         }
         if(_loc1_ == 3)
         {
            castMultiSpell(Spells.lasersword);
         }
         if(_loc1_ == 4)
         {
            castMultiSpell(Spells.glacialglaive);
         }
         if(_loc1_ == 5)
         {
            castMultiSpell(Spells.tempest);
         }
         if(_loc1_ == 6)
         {
            castMultiSpell(Spells.shreddingshrub);
         }
      }
      
      public function magic2() : *
      {
         var _loc2_:String = null;
         graphic.dirtyStatus = true;
         FoeAI.targetLastAttackerOf(this);
         var _loc1_:int = Math.random() * 9;
         if(Boolean(Battle.selectedTarget.status[Status.SYPHON]) || Boolean(Battle.selectedTarget.status[Status.ENCHANTED]))
         {
            _loc1_ = Math.random() * 5 + 4;
         }
         if(isHard && _loc1_ > 3)
         {
            _loc2_ = FoeAI.getBestElementVsSingle([Element.FIRE,Element.THUNDER,Element.ICE,Element.WIND,Element.BIO]);
            if(_loc2_ == Element.FIRE)
            {
               _loc1_ = 4;
            }
            if(_loc2_ == Element.THUNDER)
            {
               _loc1_ = 5;
            }
            if(_loc2_ == Element.ICE)
            {
               _loc1_ = 6;
            }
            if(_loc2_ == Element.WIND)
            {
               _loc1_ = 7;
            }
            if(_loc2_ == Element.BIO)
            {
               _loc1_ = 8;
            }
         }
         if((_loc1_ == 2 || _loc1_ == 3) && skin == 4)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0 || _loc1_ == 1)
         {
            castSpell("Syphon");
         }
         if(_loc1_ == 2 || _loc1_ == 3)
         {
            castSpell("Lighten");
         }
         if(_loc1_ == 4)
         {
            castSpell("LavaLance");
         }
         if(_loc1_ == 5)
         {
            castSpell("LaserSword");
         }
         if(_loc1_ == 6)
         {
            castSpell("IceBerg");
         }
         if(_loc1_ == 7)
         {
            castSpell("Tempest");
         }
         if(_loc1_ == 8)
         {
            castSpell("Nettle2");
         }
      }
      
      public function onHitFunction() : *
      {
         if(Battle.autoSpellFlag)
         {
            return;
         }
         if(Battle.selectedSkill is Summon)
         {
            return;
         }
         if(Battle.counterStack.indexOf(this) == -1)
         {
            Battle.counterStack.push(this);
         }
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         Battle.selectedTarget = Battle.randomPlayer();
         graphic.animate("magic2");
      }
      
      public function magic4() : *
      {
         Flags.GIGALITH_DEFEATED.quantity = 1;
         Battle.currentFoe = this;
         Skills.user = this;
         Battle.targetType = Target.ALL_ENEMY;
         magicAttack *= 1.2;
         castSpell("Doomsday");
         Battle.counterStack = [];
      }
   }
}

