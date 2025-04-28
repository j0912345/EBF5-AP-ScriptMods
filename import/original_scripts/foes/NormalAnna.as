package foes
{
   public class NormalAnna extends Foe
   {
      public var defended:Boolean = false;
      
      public var textCount:int = 1;
      
      public var s:int = 1;
      
      public var noEaten:Boolean = true;
      
      public function NormalAnna(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
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
         icon = 1164;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         cantFlee = true;
         HP = 1102;
         attack = 4;
         magicAttack = 7;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         hit2Anim = "hit1";
         hit2HP = 15;
         zombieMode = true;
         zombieAggroMax = 50;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 2;
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
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.FIRE] = 1.5;
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
         EXP = 125;
         AP = 20;
         SP = 20;
         gold = 200;
         dropList = [[Items.herb,100],[Items.herb,100],[Items.herb,100],[Items.root,100],[Items.wood,100]];
         init(level,X,Y,scale);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(graphic)
         {
            onDeath = function():*
            {
               Foes.scan(this,false);
            };
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 60 && this.noEaten)
         {
            _loc1_ = 5;
         }
         if(this.s % 3 == 0)
         {
            _loc1_ = 4;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 4;
         }
         var _loc2_:int = 0;
         if(status[Status.BURN])
         {
            _loc2_++;
         }
         if(status[Status.POISON])
         {
            _loc2_++;
         }
         if(status[Status.WET])
         {
            _loc2_++;
         }
         if(status[Status.WEAKEN])
         {
            _loc2_++;
         }
         if(status[Status.CURSE])
         {
            _loc2_++;
         }
         if(status[Status.TIRED])
         {
            _loc2_++;
         }
         if(status[Status.STAGGER])
         {
            _loc2_++;
         }
         if(status[Status.BAD_LUCK])
         {
            _loc2_++;
         }
         if(getHpPercent() < 30)
         {
            _loc2_++;
         }
         if(getHpPercent() < 20)
         {
            _loc2_++;
         }
         if(getHpPercent() < 10)
         {
            _loc2_++;
         }
         if(getHpPercent() < 5)
         {
            _loc2_++;
         }
         if(_loc2_ >= 4)
         {
            Medals.unlock(Medals.childMinder);
            Text.speech(Text.anna[11]);
            Skills.giveStatus(this,Status.SURRENDER,99);
            return;
         }
         if(Boolean(status[Status.BURN]) || Boolean(status[Status.POISON]) || Boolean(status[Status.STAGGER]) || Boolean(status[Status.WEAKEN]) || Boolean(status[Status.TIRED]) || Boolean(status[Status.CURSE]) || Boolean(status[Status.BAD_LUCK]))
         {
            if(getHpPercent() < 66)
            {
               Text.speech(Text.anna[10]);
            }
         }
         if(getHpPercent() < 25)
         {
            Text.speech(Text.anna[13]);
            this.textCount = 10;
         }
         if(this.textCount == 1)
         {
            if(Text.speech(Text.anna[2]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2)
         {
            if(Text.speech(Text.anna[3]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3)
         {
            if(Text.speech(Text.anna[5]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4)
         {
            if(Text.speech(Text.anna[4]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5)
         {
            if(Text.speech(Text.anna[6]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 6)
         {
            if(Text.speech(Text.anna[7]))
            {
               ++this.textCount;
            }
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("shoot3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("shoot1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("shoot1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 5)
         {
            Global.itemIcon = Items.pumpkin.icon;
            graphic.animate("itemeat");
         }
         ++this.s;
      }
      
      public function attack1() : *
      {
         Global.element = Element.BIO;
         Skills.basicFoeAttack(30,Element.BIO,50,Status.POISON,isHard ? 2 : 1,100);
      }
      
      public function bonusSpell() : *
      {
         castSpell("RazorLeaf2");
      }
      
      public function shoot3() : *
      {
         Global.element = Element.BIO;
         castSpell("PiercingShot");
      }
      
      public function magic1() : *
      {
         if(zombieLimit)
         {
            Text.speech(Text.anna[9]);
            Text.speech(Text.anna[8]);
            Skills.user = this;
            castSpell("MightyOak");
            zombieLimit = false;
         }
         else if(isHard || !Battle.selectedTarget)
         {
            if(Math.random() < 0.5)
            {
               castSpell("RazorLeaf");
            }
            else
            {
               castSpell("Hurricane");
            }
            spawnFoe(Options.altFoes ? [CatSniper,CatBomber,CatNinja] : [BushGreen,IdolWood,WormPutrid],this.level);
            if(getHpPercent() < 50)
            {
               spawnFoe(Options.altFoes ? [CatSniper,CatBomber,CatNinja] : [BushGreen,IdolWood,WormPutrid],this.level);
            }
         }
         else
         {
            castSpell("Whirlwind");
            spawnFoe(Options.altFoes ? [CatSniper,CatBomber,CatNinja] : [BushGreen,IdolWood,WormPutrid],this.level);
            if(getHpPercent() < 50)
            {
               spawnFoe(Options.altFoes ? [CatSniper,CatBomber,CatNinja] : [BushGreen,IdolWood,WormPutrid],this.level);
            }
         }
      }
      
      public function shoot1() : *
      {
         var _loc1_:int = Math.random() * 3;
         if(_loc1_ == 0 && isHard && Boolean(Battle.selectedTarget.status[Status.WET]))
         {
            b = Math.random() * 2 + 1;
         }
         if(_loc1_ == 0)
         {
            castSpell("AquaArrow2");
         }
         if(_loc1_ == 1)
         {
            if(isHard)
            {
               FoeAI.targetPlayerWeakestTo(Element.THUNDER);
            }
            castSpell("SparkArrow2");
         }
         if(_loc1_ == 2)
         {
            if(isHard)
            {
               FoeAI.targetPlayerWeakestTo(Element.ICE);
            }
            castSpell("FrostArrow2");
         }
      }
      
      public function eatItem() : *
      {
         this.noEaten = false;
         getHeal({
            "damage":maxHP * 0.25,
            "randomness":10
         });
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.5);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if(Math.random() < 0.5)
         {
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("shoot3");
         }
      }
   }
}

