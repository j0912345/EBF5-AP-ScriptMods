package foes
{
   public class SlimeBigLava extends Foe
   {
      public static var iconInfo:Array = [17,1];
      
      public function SlimeBigLava(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "BigSlime";
         graphicScale = 75;
         skin = 1;
         icon = 1087;
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
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0;
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
            elementalResistance[Element.WATER] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.8;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.8;
         }
         EXP = 55;
         AP = 8.5;
         SP = 9;
         gold = 52;
         dropList = [[Items.magma,40],[Items.magma,40],[Items.magma,40],[Items.amber,20]];
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
            _loc1_ = Math.random() * 3;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = int([3,2][int(Math.random() * 2)]);
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("attack4");
         }
         if(_loc1_ == 2)
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
         if(_loc1_ == 3)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(40,Element.FIRE,50,Status.DRY,2,isHard ? 100 : 50);
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(60,Element.FIRE,100,Status.BURN,3,isHard ? 100 : 66);
      }
      
      public function attack2() : *
      {
         spawnFoe([SlimeLava],this.level);
         if(Math.random() > 0.5 && isHard)
         {
            spawnFoe([SlimeLava],this.level);
         }
         Skills.groundPound(22);
      }
      
      public function attack3() : *
      {
         if(Math.random() > 0.4)
         {
            spawnFoe([SlimeLava],this.level);
         }
         if(Math.random() > 0.7 && isHard)
         {
            spawnFoe([SlimeLava],this.level);
         }
         Skills.groundPound(28 / 2);
      }
      
      public function magic1() : *
      {
         castSpell("Eruption");
      }
      
      public function magic2() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         castSpell("FireRock");
      }
      
      public function special3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":16,
            "element":Element.DARK,
            "elementDegree":100,
            "statusEffect":Status.SHROUD,
            "statusDegree":3,
            "statusChance":(isHard ? 33 : 0),
            "randomness":20,
            "buffEffect":Stats.ACCURACY,
            "buffChance":100,
            "buffDegree":(isHard ? -25 : -15)
         });
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(1);
      }
      
      override public function counter2() : *
      {
         if(dead || status[Status.SYPHON] || getHpPercent() > 33)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic2");
      }
   }
}

