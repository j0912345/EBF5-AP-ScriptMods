package foes
{
   public class BossNestNinja extends Foe
   {
      public static var iconInfo:Array = [18,2];
      
      public var s:int = 1;
      
      public var spell:int = 0;
      
      public var limitsBroken:Boolean = false;
      
      public var dispelSelf:Boolean = true;
      
      public var buffcount:int = 0;
      
      public var textCount:int = 1;
      
      public function BossNestNinja(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Cocoon";
         graphicScale = 83;
         skin = 2;
         icon = 1128;
         catchRate = Catching.MEGA_BOSS_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 6666;
         attack = 5.5;
         magicAttack = 5.5;
         defence = 4;
         magicDefence = 4;
         accuracy = 6;
         evade = 2;
         hit2HP = 6;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.EARTH] = -0.5;
         elementalResistance[Element.BIO] = 1.8;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = 0;
         statusResistance[Status.BURN_SCORCH] = 1;
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
         buffResistance[Stats.ATTACK] = 1.8;
         buffResistance[Stats.MAGIC_ATTACK] = 1.8;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.8;
         buffResistance[Stats.EVADE] = 1.8;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 1.8;
            elementalResistance[Element.FIRE] = 0.5;
            elementalResistance[Element.THUNDER] = 0.5;
            elementalResistance[Element.ICE] = 0.5;
            elementalResistance[Element.BIO] = 1;
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         }
         EXP = 770;
         AP = 64;
         SP = 64;
         gold = 580;
         dropList = [[Items.spike,100],[Items.spike,100],[Items.spike,100],[Items.plutonium,100],[Items.titanium,100]];
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
            if(Text.speech(Text.nest[1],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2 && getHpPercent() < 85)
         {
            if(Text.speech(Text.nest[2],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 70)
         {
            if(Text.speech(Text.nest[3],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 55)
         {
            if(Text.speech(Text.nest[4],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 40)
         {
            if(Text.speech(Text.nest[5],{"skinDamage":graphic.skinDamage}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 6 && getHpPercent() < 25)
         {
            if(Text.speech(Text.nest[6],{"skinDamage":graphic.skinDamage}))
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
            _loc1_ = int([9,10,11,12][int(Math.random() * 4)]);
            if(Battle.randomPlayer().buffs[Stats.EVADE] >= 75 && Math.random() < 0.2)
            {
               _loc1_ = 6;
            }
            if(Battle.randomPlayer().buffs[Stats.DEFENCE] >= 100 && Math.random() < 0.2)
            {
               _loc1_ = 7;
            }
            if(Battle.randomPlayer().buffs[Stats.MAGIC_DEFENCE] >= 100 && Math.random() < 0.2)
            {
               _loc1_ = 8;
            }
            if(this.buffcount == 0 && getHpPercent() < 75)
            {
               _loc1_ = 13;
               ++this.buffcount;
            }
            if(this.buffcount == 1 && getHpPercent() < 40)
            {
               _loc1_ = 13;
               ++this.buffcount;
            }
            if(getHpPercent() < 66)
            {
               spawnFoe(Options.altFoes ? [WraithFire,WraithIce,WraithLeaf] : [HandSkeleton,HandZombie,MirrorHaunted,WraithMaster,WraithSteel],this.level + (Options.altFoes ? 1 : 0));
            }
            spawnFoe(Options.altFoes ? [CatSkeleton] : [CatSniper,CatBomber,CatNinja],this.level + (Options.altFoes ? 3 : 1));
            if(isHard)
            {
               spawnFoe(Options.altFoes ? [CatSkeleton] : [CatSniper,CatBomber,CatNinja,MirrorHaunted],this.level + (Options.altFoes ? 3 : 1));
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
            graphic.animate("magic1");
            this.spell = 3;
         }
         if(_loc1_ == 10)
         {
            graphic.animate("magic2");
            this.spell = 0;
         }
         if(_loc1_ == 11)
         {
            graphic.animate("magic2");
            this.spell = 1;
         }
         if(_loc1_ == 12)
         {
            graphic.animate("magic2");
            this.spell = 2;
         }
         if(_loc1_ == 13)
         {
            graphic.animate("magic2");
            this.spell = 3;
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
            castMultiSpell(Spells.bigroot2);
         }
         if(this.spell == 1)
         {
            castMultiSpell(Spells.bones);
         }
      }
      
      public function special1() : *
      {
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
         if(this.spell == 0)
         {
            graphic.makeMagic(FlyBomb,graphic.x - 192 - 25,graphic.y - 200 + 10);
         }
         if(this.spell == 1)
         {
            graphic.makeMagic(FlyBomb2,graphic.x - 192 - 25,graphic.y - 200 + 10);
         }
      }
      
      public function special2() : *
      {
         if(this.spell == 0)
         {
            castSpell("Spiders");
         }
         if(this.spell == 1)
         {
            castSpell("Ritual");
            Text.speech(Text.nest[9]);
         }
      }
      
      public function magic1() : *
      {
         if(this.spell == 0)
         {
            castSpell("Bind");
         }
         if(this.spell == 1)
         {
            castSpell("Debilitate");
            Text.speech(Text.nest[10]);
         }
         if(this.spell == 2)
         {
            castSpell("Enfeeble");
            Text.speech(Text.nest[10]);
         }
         if(this.spell == 3)
         {
            castMultiSpell(Spells.death);
            Text.speech(Text.nest[9]);
         }
      }
      
      public function magic2() : *
      {
         if(!Battle.selectedTarget && this.spell == 0)
         {
            this.spell = 1;
         }
         if(this.spell == 0)
         {
            castSpell("AirStrike");
         }
         if(this.spell == 1)
         {
            castMultiSpell(Spells.airstrike2);
         }
         if(this.spell == 2)
         {
            castSpell("PoisonGas");
         }
         if(this.spell == 3)
         {
            castSpell("AirStrike3");
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
         var _loc1_:int = Math.random() * 6;
         if(_loc1_ == 0)
         {
            graphic.animate("magic1");
            this.spell = 3;
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic2");
            this.spell = 2;
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic2");
            this.spell = 2;
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
         if(_loc1_ == 5)
         {
            graphic.animate("special2");
            this.spell = 0;
         }
      }
   }
}

