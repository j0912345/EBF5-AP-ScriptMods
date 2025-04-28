package foes
{
   public class BossNestCat extends Foe
   {
      public static var iconInfo:Array = [18,1];
      
      public var s:int = 1;
      
      public var spell:int = 0;
      
      public var limitsBroken:Boolean = false;
      
      public var dispelSelf:Boolean = true;
      
      public var buffcount:int = 0;
      
      public var textCount:int = 1;
      
      public function BossNestCat(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Cocoon";
         graphicScale = 83;
         skin = 1;
         icon = 1127;
         catchRate = Catching.BOSS_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 4040;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 6;
         evade = 2;
         hit2HP = 6;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.EARTH] = -0.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 0;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 2;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 0.5;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 0;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.2;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.5;
         buffResistance[Stats.EVADE] = 1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 1.5;
            elementalResistance[Element.FIRE] = 1.5;
            elementalResistance[Element.THUNDER] = 1;
            elementalResistance[Element.BIO] = -0.5;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
            buffResistance[Stats.ACCURACY] = 1.6;
         }
         EXP = 700;
         AP = 62;
         SP = 62;
         gold = 550;
         dropList = [[Items.wood,100],[Items.wood,100],[Items.wood,100],[Items.amber,100],[Items.emerald,100]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         var _loc1_:int = 0;
         if(!startTurn())
         {
            return;
         }
         if(this.textCount == 1)
         {
            if(Text.speech(Text.cocoon[1],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2 && getHpPercent() < 85)
         {
            if(Text.speech(Text.cocoon[2],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 70)
         {
            if(Text.speech(Text.cocoon[3],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 55)
         {
            if(Text.speech(Text.cocoon[4],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 40)
         {
            if(Text.speech(Text.cocoon[5],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 6 && getHpPercent() < 25)
         {
            if(Text.speech(Text.cocoon[6],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
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
         if(this.s == 1)
         {
            _loc1_ = int([6,7,9][int(Math.random() * 3)]);
            if(FoeAI.getStatusScore(this) - 0.5 > Math.random() * 4)
            {
               _loc1_ = 11;
            }
            if(isHard && FoeAI.arePlayersBuffed(2400) && Math.random() < 0.33)
            {
               _loc1_ = 13;
               this.dispelSelf = false;
            }
            if(FoeAI.isFoeDebuffed(this,620))
            {
               _loc1_ = 12;
               this.dispelSelf = true;
            }
            if(this.buffcount == 0 && getHpPercent() < 75)
            {
               _loc1_ = 10;
               ++this.buffcount;
            }
            if(this.buffcount == 1 && getHpPercent() < 40)
            {
               _loc1_ = 8;
               ++this.buffcount;
            }
            if(getHpPercent() < 66)
            {
               spawnFoe(Options.altFoes ? [GloopFab] : [GloopWood,MirrorWise,WraithLeaf],this.level + (Options.altFoes ? 1 : 0));
            }
            spawnFoe(Options.altFoes ? [CatBomber,CatNinja] : [CatWarrior,CatWizard],this.level + 1);
            if(isHard)
            {
               spawnFoe(Options.altFoes ? [CatBomber,CatNinja] : [CatWarrior,CatWizard],this.level + 1);
            }
         }
         else
         {
            _loc1_ = Math.random() * 2;
            if(getHpPercent() < 75)
            {
               _loc1_ = Math.random() * 4;
            }
            if(getHpPercent() < 40)
            {
               _loc1_ = Math.random() * 4 + 2;
            }
            if(getHpPercent() < 30 && !this.limitsBroken)
            {
               _loc1_ = 14;
            }
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
            graphic.animate("special1");
            this.spell = 0;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special1");
            this.spell = 1;
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special2");
            this.spell = 0;
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special2");
            this.spell = 1;
         }
         if(_loc1_ == 6)
         {
            graphic.animate("magic1");
            this.spell = 0;
         }
         if(_loc1_ == 7)
         {
            graphic.animate("magic1");
            this.spell = 1;
         }
         if(_loc1_ == 8)
         {
            graphic.animate("magic1");
            this.spell = 2;
         }
         if(_loc1_ == 9)
         {
            graphic.animate("magic2");
            this.spell = 0;
         }
         if(_loc1_ == 10)
         {
            graphic.animate("magic2");
            this.spell = 1;
         }
         if(_loc1_ == 11)
         {
            graphic.animate("magic2");
            this.spell = 2;
         }
         if(_loc1_ == 12)
         {
            graphic.animate("magic2");
            this.spell = 3;
         }
         if(_loc1_ == 13)
         {
            graphic.animate("magic2");
            this.spell = 4;
         }
         if(_loc1_ == 14)
         {
            graphic.animate("special2");
            this.spell = 2;
         }
      }
      
      public function skinDamage() : *
      {
         if(getHpPercent() < 75 && graphic.skinDamage == 1)
         {
            ++graphic.skinDamage;
         }
         if(getHpPercent() < 40 && graphic.skinDamage == 2)
         {
            ++graphic.skinDamage;
         }
      }
      
      public function attack1() : *
      {
         if(this.spell == 0)
         {
            castMultiSpell(Spells.bigroot);
         }
         if(this.spell == 1)
         {
            castMultiSpell(Spells.lumber);
         }
      }
      
      public function special1() : *
      {
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
         Text.speech(Text.cocoon[10]);
         if(this.spell == 0)
         {
            graphic.makeMagic(FlyBomb,graphic.x - 192 - 10,graphic.y - 200 + 10);
         }
         if(this.spell == 1)
         {
            graphic.makeMagic(FairyBomb,graphic.x - 192 - 25,graphic.y - 200 + 10);
         }
      }
      
      public function special2() : *
      {
         if(this.spell == 0)
         {
            castSpell("Seeds");
            Text.speech(Text.cocoon[9]);
            Text.speech(Text.cocoon[10]);
            Text.speech(Text.cocoon[12]);
         }
         if(this.spell == 1)
         {
            castSpell("RazorLeaf3");
         }
         if(this.spell == 2)
         {
            castSpell("MotherEarth");
            this.limitsBroken = true;
         }
      }
      
      public function magic1() : *
      {
         if(!Battle.selectedTarget && this.spell == 0)
         {
            this.spell = 1;
         }
         if(this.spell == 0)
         {
            castSpell("HolySword");
         }
         if(this.spell == 1)
         {
            castSpell("ArrowRain");
         }
         if(this.spell == 2)
         {
            castSpell("Protect");
         }
      }
      
      public function magic2() : *
      {
         if(this.spell == 0)
         {
            castSpell("GaiaBloom");
            Text.speech(Text.cocoon[12]);
         }
         if(this.spell == 1)
         {
            castSpell("Barrier");
         }
         if(this.spell == 2)
         {
            Spells.purify.target = Target.ALL_ALLY;
            castSpell("Purify");
         }
         if(this.spell == 3)
         {
            Battle.selectedSkill = Spells.dispel;
            Spells.dispel.target = this.dispelSelf ? Target.ALL_ALLY : Target.ALL_ENEMY;
            Battle.targetType = this.dispelSelf ? Target.ALL_ALLY : Target.ALL_ENEMY;
            castSpell("Dispel");
         }
         if(this.spell == 4)
         {
            Battle.selectedSkill = Spells.dispel;
            Spells.dispel.target = this.dispelSelf ? Target.ALL_ALLY : Target.ALL_ENEMY;
            Battle.targetType = this.dispelSelf ? Target.ALL_ALLY : Target.ALL_ENEMY;
            castSpell("Dispel2");
         }
      }
      
      public function onHitFunction() : *
      {
         if(status[Status.TIRED])
         {
            readyCounterAttack(0.22);
         }
         else
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
         var _loc1_:int = Math.random() * 5;
         if(_loc1_ == 0)
         {
            graphic.animate("magic1");
            this.spell = 0;
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
            this.spell = 1;
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic2");
            this.spell = 0;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special1");
            this.spell = 0;
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special1");
            this.spell = 1;
         }
      }
   }
}

