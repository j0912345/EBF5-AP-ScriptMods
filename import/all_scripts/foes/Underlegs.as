package foes
{
   public class Underlegs extends Foe
   {
      public var textCount:int = 2;
      
      public var s:int = 1;
      
      public function Underlegs(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "UnderLegs";
         graphicScale = 66;
         skin = 1;
         icon = 1150;
         catchRate = Catching.SNOWFLAKE;
         boxSize = 2;
         cantFlee = true;
         HP = 10000;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.4;
         evade = 4.5;
         hit2HP = 5;
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
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1.3;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         buffResistance[Stats.ACCURACY] = 1.3;
         buffResistance[Stats.EVADE] = 1.3;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_HIGH;
         if(Options.extraFoeResistance)
         {
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
            buffResistance[Stats.ACCURACY] = 1.4;
            buffResistance[Stats.EVADE] = 1.4;
            statusResistance[Status.BURN_SCORCH] = 0.5;
            statusResistance[Status.POISON_VIRUS] = 0.5;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
            statusResistance[Status.STAGGER_CONFUSE] = 0.5;
            statusResistance[Status.DRY_WET] = 0.5;
            statusResistance[Status.LIGHT_HEAVY] = 0.5;
            statusResistance[Status.WEAKENED_TIRED] = 0.5;
            statusResistance[Status.DISPEL] = 0.5;
         }
         EXP = 2200;
         AP = 60;
         SP = 60;
         gold = 500;
         dropList = [[Items.plastic,100],[Items.plastic,100],[Items.lego,100],[Items.gamechild,100],[Items.espresso,100]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         BossDevourer.finalBossBuff(this,0,true);
      }
      
      public function skinDamage() : *
      {
         if(getHpPercent() < 80 && graphic.skin == 1)
         {
            ++graphic.skin;
         }
         if(getHpPercent() < 65 && graphic.skin == 2)
         {
            ++graphic.skin;
         }
         if(getHpPercent() < 50 && graphic.skin == 3)
         {
            ++graphic.skin;
         }
         if(getHpPercent() < 35 && graphic.skin == 4)
         {
            ++graphic.skin;
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
         if(this.textCount == 2)
         {
            if(Text.speech(Text.snowflake[12]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3)
         {
            if(Text.speech(Text.snowflake[2]))
            {
               ++this.textCount;
            }
         }
         else if(getHpPercent() < 90 && this.textCount == 4)
         {
            if(Text.speech(Text.snowflake[3]))
            {
               ++this.textCount;
            }
         }
         else if(getHpPercent() < 80 && this.textCount == 5)
         {
            if(Text.speech(Text.snowflake[4]))
            {
               ++this.textCount;
            }
         }
         else if(getHpPercent() < 80 && this.textCount == 6)
         {
            if(Text.speech(Text.snowflake[5]))
            {
               ++this.textCount;
            }
         }
         else if(getHpPercent() < 80 && this.textCount == 7)
         {
            if(Text.speech(Text.snowflake[6]))
            {
               ++this.textCount;
            }
         }
         else if(getHpPercent() < 80 && this.textCount == 8)
         {
            if(Text.speech(Text.snowflake[7]))
            {
               ++this.textCount;
            }
         }
         else if(getHpPercent() < 80 && this.textCount == 9)
         {
            if(Text.speech(Text.snowflake[8]))
            {
               ++this.textCount;
            }
         }
         else if(getHpPercent() < 80 && this.textCount == 10)
         {
            if(Text.speech(Text.snowflake[9]))
            {
               ++this.textCount;
            }
         }
         else if(getHpPercent() < 80 && this.textCount == 11)
         {
            if(Text.speech(Text.snowflake[10]))
            {
               ++this.textCount;
            }
         }
         var _loc1_:int = Math.random() * 2;
         if(getHpPercent() < 80)
         {
            _loc1_++;
         }
         if(getHpPercent() < 65)
         {
            _loc1_++;
         }
         if(getHpPercent() < 50)
         {
            _loc1_++;
         }
         if(getHpPercent() < 35)
         {
            _loc1_ = Math.random() * 3 + 4;
         }
         if(!Battle.selectedTarget && _loc1_ == 1)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("magic2");
         }
      }
      
      public function attack1() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.basicFoeAttack(200,Element.NONE,0,Status.STAGGER,1,isHard ? 33 : 0);
      }
      
      public function attack2() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.basicFoeAttack(350 / 3,Element.NONE,0,Status.STAGGER,1,isHard ? 66 : 0);
      }
      
      public function attack3() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.basicFoeAttack(500 / 6,Element.NONE,0,Status.STAGGER,1,isHard ? 100 : 0);
      }
      
      public function magic1() : *
      {
         var _loc1_:int = Math.random() * 2;
         if(_loc1_ == 0)
         {
            castSpell("PixelFish");
         }
         if(_loc1_ == 1)
         {
            castSpell("PixelRiceball");
         }
      }
      
      public function magic2() : *
      {
         if(Options.altFoes)
         {
            spawnFoe([CatWizard,CatSniper,CatWarrior,CatBomber,CatNinja],this.level);
         }
         var _loc1_:int = Math.random() * 2;
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 4;
         }
         if(_loc1_ == 1 && !Battle.selectedTarget)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            castSpell("PixelSwords");
         }
         if(_loc1_ == 1)
         {
            castSpell("PixelFork");
         }
         if(_loc1_ == 2)
         {
            castMultiSpell(Spells.pixelfish);
         }
         if(_loc1_ == 3)
         {
            castRandomMultiSpell(Spells.pixelriceball,2);
         }
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
         graphic.animate("attack1");
      }
   }
}

