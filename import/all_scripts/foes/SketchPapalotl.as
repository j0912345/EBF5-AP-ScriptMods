package foes
{
   public class SketchPapalotl extends Foe
   {
      public static var iconInfo:Array = [33,1];
      
      public var s:int = 0;
      
      public var blood:int = 75;
      
      public var pencil:int = 70;
      
      public var counterSpell:Boolean = false;
      
      public function SketchPapalotl(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Sketch";
         graphicScale = 100;
         skin = 1;
         icon = 1196;
         catchRate = Catching.DRAGON_RATE;
         boxSize = 3;
         hit2HP = 7;
         cantFlee = true;
         HP = 1878;
         attack = 5.5;
         magicAttack = 5.5;
         defence = 4.8;
         magicDefence = 3.5;
         accuracy = 4.4;
         evade = 4.4;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 1.3;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 1.5;
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
            elementalResistance[Element.BIO] = 1;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
            statusResistance[Status.WEAKENED_TIRED] = 0.5;
            statusResistance[Status.DISPEL] = 0.5;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
         }
         EXP = 198;
         AP = 20;
         SP = 24;
         gold = 122;
         dropList = [[Items.flower,100],[Items.herb,75],[Items.buckle,50],[Items.wood,25],[Items.stick,15]];
         init(param1,param2,param3,param4);
         onHit = this.onHitFunction;
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,26);
         if(Game.mode == Game.BATTLE)
         {
            statusDisplay.x += 30;
            statusDisplay.y += 90;
            graphic.point3.x += 30;
            graphic.point3.y += 90;
            graphic.point4.x += 40;
            graphic.point4.y += 110;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(Battle.foeCount() < 2 && Options.altFoes)
         {
            ++this.s;
         }
         if(this.s >= 3)
         {
            spawnFoe([GloopWood,GloopFab,GloopStone],this.level);
            this.s = 0;
         }
         if(getHpPercent() <= this.pencil)
         {
            this.pencil -= 30;
            Battle.selectedTarget = Battle.randomPlayer(true);
            castSpell("PencilStab");
            turnTaken = false;
            return;
         }
         Text.speech(Text.library[8]);
         if(getHpPercent() < 50)
         {
            Text.speech(Text.library[9]);
         }
         var _loc1_:int = Math.random() * 3;
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 1;
         }
         if(getHpPercent() <= this.blood)
         {
            this.blood -= 25;
            _loc1_ = 3;
            turnTaken = false;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("magic2");
         }
         if(_loc1_ == 2)
         {
            graphic.setXY();
            graphic.animate("magic2");
         }
         if(_loc1_ == 3)
         {
            graphic.setXY();
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
      }
      
      public function attack1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(50,null,null,Status.CONFUSE,1,isHard ? 50 : 25);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(60 / 2,null,null,Status.DISABLE,isHard ? 2 : 1,100);
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
         buff(Stats.DEFENCE,_loc1_);
         if(isHard)
         {
            Skills.giveStatus(this,Status.BRAVE,3);
         }
      }
      
      public function magic2() : *
      {
         if(this.counterSpell)
         {
            castRandomMultiSpell(Spells.sketchSpear,2);
            this.counterSpell = false;
         }
         else if(Math.random() < 0.5)
         {
            castRandomMultiSpell(Spells.sketchSpear,4);
         }
         else
         {
            castSpell("SketchSpears");
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
         Text.speech(Text.library[20]);
         if(Options.counterAttacks && Math.random() < 0.5)
         {
            this.counterSpell = true;
            graphic.animate("magic2");
         }
         else
         {
            graphic.animate("attack2");
         }
      }
   }
}

