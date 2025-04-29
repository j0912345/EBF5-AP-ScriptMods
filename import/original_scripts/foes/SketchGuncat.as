package foes
{
   public class SketchGuncat extends Foe
   {
      public static var iconInfo:Array = [33,1];
      
      public var s:int = 0;
      
      public var pencil:int = 80;
      
      public var boost:int = 75;
      
      public function SketchGuncat(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Sketch";
         graphicScale = 100;
         skin = 5;
         icon = 1193;
         catchRate = Catching.DRAGON_RATE;
         boxSize = 3;
         hit2HP = 7;
         cantFlee = true;
         HP = 2007;
         attack = 5;
         magicAttack = 5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.4;
         evade = 4;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.8;
         elementalResistance[Element.WATER] = 1.3;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0;
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
            elementalResistance[Element.THUNDER] = -1;
            elementalResistance[Element.HOLY] = 0.5;
            elementalResistance[Element.DARK] = 0.5;
            statusResistance[Status.DISPEL] = 0.5;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
         }
         EXP = 259;
         AP = 20;
         SP = 32;
         gold = 150;
         dropList = [[Items.steel,75],[Items.spring,75],[Items.powder,75],[Items.bomb,75],[Items.kevlar,15]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,26);
         if(Game.mode == Game.BATTLE)
         {
            graphic.point4.x += 70;
            graphic.point5.y += 40;
            graphic.point1.y += 40;
            graphic.point2.y += 40;
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
            spawnFoe([FishJet],this.level);
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
         if(getHpPercent() < 90)
         {
            Text.speech(Text.library[4]);
         }
         if(getHpPercent() < 70)
         {
            Text.speech(Text.library[6]);
         }
         if(getHpPercent() < 50)
         {
            Text.speech(Text.library[5]);
         }
         if(getHpPercent() < 30)
         {
            Text.speech(Text.library[7]);
         }
         var _loc1_:int = Math.random() * 4;
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 1;
         }
         if(getHpPercent() <= this.boost)
         {
            this.boost -= 25;
            if(Math.random() < 0.5)
            {
               graphic.animate("defend");
            }
            else
            {
               graphic.animate("magic1");
            }
            turnTaken = false;
            return;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special3");
         }
      }
      
      public function attack1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(65,Element.NONE,0,Status.DRY,2,isHard ? 100 : 50);
      }
      
      public function defend1() : *
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
         Battle.selectedTarget = this;
         if(isHard)
         {
            Skills.giveStatus(this,Status.REGEN,3);
         }
      }
      
      public function magic1() : *
      {
         buff(Stats.ATTACK,50);
         buff(Stats.MAGIC_ATTACK,50);
         buff(Stats.ACCURACY,50);
         if(isHard)
         {
            Skills.giveStatus(this,Status.BRAVE,3);
         }
      }
      
      public function special1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(75,Element.BOMB,50,Status.STAGGER,2,isHard ? 50 : 25);
      }
      
      public function special2(param1:int) : *
      {
         if(param1 == 1)
         {
            Battle.targetType = ALL_ENEMY;
            Skills.basicFoeAttack(50 / 3,Element.BOMB,25,Status.DISABLE,1,isHard ? 50 : 25);
         }
         else
         {
            Battle.targetType = Target.ALL_STANDBY;
            Skills.basicFoeAttack(50 / 3,Element.BOMB,25);
         }
      }
      
      public function special3() : *
      {
         Battle.targetType = CENTER_ENEMY;
         Skills.basicFoeMagic(125 / 3,Element.BOMB,50,Status.STAGGER,2,isHard ? 100 : 50);
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.2);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         graphic.animate("special1");
      }
   }
}

