package foes
{
   public class DragonEarth extends Foe
   {
      public static var iconInfo:Array = [13,3];
      
      public var mag:Boolean = false;
      
      public function DragonEarth(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Dragon";
         graphicScale = 81;
         skin = 2;
         icon = 1013;
         catchRate = Catching.DRAGON_RATE;
         boxSize = 3;
         HP = 899;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 15;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.3;
         statusResistance[Status.FREEZE_CHILL] = 0.3;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0.3;
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
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.WATER] = 1;
            elementalResistance[Element.DARK] = -1;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
            buffResistance[Stats.ACCURACY] = 1.4;
            buffResistance[Stats.EVADE] = 1.4;
            statusResistance[Status.WEAKENED_TIRED] = 0.3;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.3;
         }
         EXP = 277;
         AP = 22;
         SP = 22;
         gold = 260;
         dropList = [[Items.brick,100],[Items.turd,100],[Items.scales,60],[Items.opal,35],[Items.potato,2]];
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
         var _loc1_:int = Math.random() * 7;
         if(Battle.randomPlayer().buffs[Stats.ATTACK] >= 90 && Battle.randomFoe().buffs[Stats.DEFENCE] <= 110 && Math.random() < 0.33)
         {
            _loc1_ = 7;
         }
         if(Battle.randomPlayer().status[Status.DRY] && Battle.randomPlayer().status[Status.DRY] && FoeAI.getPlayersWeakTo(Element.FIRE).length > 1 && Math.random() < 0.5)
         {
            _loc1_ = 4;
         }
         if(getHpPercent() < 50 && _loc1_ == 3)
         {
            _loc1_ = 4;
         }
         if(getHpPercent() < 25 && _loc1_ == 1)
         {
            _loc1_ = 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 3;
         }
         if(!Battle.selectedTarget)
         {
            if(_loc1_ == 1)
            {
               _loc1_ = 0;
            }
            if(_loc1_ == 2)
            {
               _loc1_ = 0;
            }
            if(_loc1_ == 3)
            {
               _loc1_ = 4;
            }
            if(_loc1_ == 6)
            {
               _loc1_ = 5;
            }
            if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
            {
               _loc1_ = 0;
            }
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("magic1");
            this.mag = true;
         }
         if(_loc1_ == 7)
         {
            graphic.animate("magic1");
            this.mag = false;
         }
      }
      
      public function attack4() : *
      {
         graphic.makeMagic(EffectEarth);
         Skills.groundPound(60);
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(100);
      }
      
      public function special3() : *
      {
         Skills.basicFoeMagic(120,Element.FIRE,100,Status.BURN,3,100,120);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(150);
      }
      
      public function special1() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":40 / 3,
            "element":Element.BIO,
            "elementDegree":100,
            "buffEffect":Stats.MAGIC_DEFENCE,
            "buffDegree":-20,
            "buffChance":(isHard ? 100 : 0),
            "statusEffect":Status.POISON,
            "statusDegree":5,
            "statusChance":100
         });
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(45,Element.FIRE,100,Status.DRY,3,100);
      }
      
      public function magic1() : *
      {
         var _loc1_:Foe = null;
         if(!this.mag)
         {
            for each(_loc1_ in Battle.foes)
            {
               _loc1_.buff(Stats.DEFENCE,isHard ? 30 : 20);
            }
            Battle.targetType = Target.ALL_ENEMY;
            Skills.customFoeAttack({
               "statusOnly":true,
               "accuracy":150,
               "buffEffect":Stats.ATTACK,
               "buffDegree":(isHard ? -30 : -20),
               "buffChance":100
            });
         }
         else if(Math.random() < 0.5)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.EARTH);
            castSpell("Cataclysm");
         }
         else
         {
            FoeAI.targetRandomPlayerWeakTo(Element.FIRE);
            castSpell("Eruption");
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.33);
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

