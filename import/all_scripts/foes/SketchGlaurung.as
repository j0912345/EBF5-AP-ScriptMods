package foes
{
   public class SketchGlaurung extends Foe
   {
      public static var iconInfo:Array = [33,1];
      
      public var s:int = 0;
      
      public var blood:int = 75;
      
      public var pencil:int = 80;
      
      public var counterSpell:Boolean = false;
      
      public function SketchGlaurung(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Sketch";
         graphicScale = 100;
         skin = 3;
         icon = 1194;
         catchRate = Catching.DRAGON_RATE;
         boxSize = 3;
         hit2HP = 7;
         cantFlee = true;
         HP = 2976;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.5;
         evade = 3;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1.3;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1.3;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         buffResistance[Stats.ACCURACY] = 1.3;
         buffResistance[Stats.EVADE] = 1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.FIRE] = 0;
            statusResistance[Status.DISPEL] = 0.5;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
         }
         EXP = 489;
         AP = 20;
         SP = 44;
         gold = 252;
         dropList = [[Items.turd,50],[Items.turd,50],[Items.spike,75],[Items.spike,75],[Items.scales,100]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,26);
         if(Game.mode == Game.BATTLE)
         {
            graphic.point4.x += 50;
            graphic.point5.y += 25;
            graphic.point1.y += 25;
            graphic.point2.y += 25;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(Battle.foeCount() < 3 && Options.altFoes)
         {
            ++this.s;
         }
         if(this.s >= 3)
         {
            spawnFoe([BushSand,IdolStone,SlimeSand],this.level);
            spawnFoe([BushSand,IdolStone,SlimeSand],this.level);
            this.s = 0;
         }
         if(getHpPercent() <= this.pencil)
         {
            this.pencil -= 20;
            Battle.selectedTarget = Battle.randomPlayer(true);
            castSpell("PencilStab");
            turnTaken = false;
            return;
         }
         Text.speech(Text.library[15]);
         Text.speech(Text.library[16]);
         if(getHpPercent() < 50)
         {
            Text.speech(Text.library[13]);
         }
         var _loc1_:int = Math.random() * 5;
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 4;
         }
         if(getHpPercent() <= this.blood)
         {
            this.blood -= 25;
            _loc1_ = 5;
            turnTaken = false;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic1");
         }
      }
      
      public function attack1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(80);
      }
      
      public function attack1b() : *
      {
         Battle.targetType = ALL_STANDBY;
         Skills.basicFoeAttack(60);
      }
      
      public function magic1() : *
      {
         var _loc1_:int = 20;
         if(getHpPercent() <= 50)
         {
            _loc1_ = 40;
         }
         if(getHpPercent() <= 25)
         {
            _loc1_ = 60;
         }
         buff(Stats.ATTACK,_loc1_);
         buff(Stats.MAGIC_ATTACK,_loc1_);
         if(isHard)
         {
            Skills.giveStatus(this,Status.GOOD_LUCK,5);
         }
      }
      
      public function attack4(param1:int) : *
      {
         if(param1 == 1)
         {
            Skills.basicFoeAttack(60,null,null,Status.POISON,2,isHard ? 50 : 0);
         }
         else
         {
            Skills.basicFoeAttack(100,null,null,Status.STUN,isHard ? 3 : 1,100);
         }
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(110,null,null,Status.POISON,isHard ? 5 : 3,100);
      }
      
      public function magic3() : *
      {
         if(this.counterSpell)
         {
            castRandomMultiSpell(Spells.sketchRock,2);
         }
         else
         {
            castRandomMultiSpell(Spells.sketchRock,4);
         }
         this.counterSpell = false;
      }
      
      public function special4() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(50,Element.WIND,100,Status.DISPEL,1,isHard ? 100 : 50);
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.25);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic3");
      }
   }
}

