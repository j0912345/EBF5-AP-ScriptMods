package foes
{
   public class SlimeBigIcecream extends Foe
   {
      public static var iconInfo:Array = [17,4];
      
      public function SlimeBigIcecream(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "BigSlime";
         graphicScale = 75;
         skin = 3;
         icon = 1084;
         catchRate = Catching.BIG_SLIME_RATE;
         boxSize = 2;
         textFont = GUI.SLIME_FONT;
         HP = 470;
         attack = 5;
         magicAttack = 5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 2.5;
         hit2HP = 20;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = -1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 2;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BOMB] = 1;
            elementalResistance[Element.DARK] = 1;
            elementalResistance[Element.EARTH] = 0;
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.FIRE] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.8;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.8;
         }
         EXP = 55;
         AP = 8.5;
         SP = 9;
         gold = 52;
         dropList = [[Items.snowball,100],[Items.snowball,100],[Items.snowball,100],[Items.snowball,100],[Items.snowball,100]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(isScared(SLIMES))
         {
            Skills.giveStatus(this,Status.BERSERK,2);
         }
         var _loc1_:int = Math.random() * 6;
         if(Boolean(status[Status.BERSERK]) || Boolean(status[Status.SYPHON]))
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = int([1,4,2][int(Math.random() * 3)]);
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            if(getHpPercent() < 50)
            {
               graphic.animate("attack3");
            }
            else
            {
               graphic.animate("attack2");
            }
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic3");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(40,Element.ICE,20,Status.HUNGRY,2,isHard ? 100 : 50);
      }
      
      public function attack2() : *
      {
         spawnFoe([SlimeIcecream],this.level);
         if(Math.random() > 0.5 && isHard)
         {
            spawnFoe([SlimeIcecream],this.level);
         }
         Skills.groundPound(22);
      }
      
      public function attack3() : *
      {
         if(Math.random() > 0.4)
         {
            spawnFoe([SlimeIcecream],this.level);
         }
         if(Math.random() > 0.7 && isHard)
         {
            spawnFoe([SlimeIcecream],this.level);
         }
         Skills.groundPound(28 / 2);
      }
      
      public function magic1() : *
      {
         castSpell("Blizzard");
      }
      
      public function magic3() : *
      {
         if(Math.random() > 0.5)
         {
            castMultiSpell(Spells.frost);
         }
         else
         {
            castMultiSpell(Spells.wafer);
         }
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":20,
            "element":Element.ICE,
            "elementDegree":100,
            "statusEffect":Status.FREEZE,
            "statusDegree":2,
            "statusChance":(isHard ? 20 : 5),
            "randomness":20
         });
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(1);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic3");
      }
   }
}

