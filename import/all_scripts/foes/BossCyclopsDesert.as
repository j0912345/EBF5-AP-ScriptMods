package foes
{
   public class BossCyclopsDesert extends Foe
   {
      public static var iconInfo:Array = [9,1];
      
      public var textCount:int = 1;
      
      public var s:int = 0;
      
      public function BossCyclopsDesert(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Cyclops";
         graphicScale = 80;
         skin = 1;
         icon = 1081;
         catchRate = Catching.BOSS_RATE * 2;
         boxSize = 3;
         cantFlee = true;
         HP = 2100;
         attack = 3.5;
         magicAttack = 3.5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 6;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BIO] = 1;
            elementalResistance[Element.WATER] = 1;
            elementalResistance[Element.EARTH] = 0.5;
         }
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
         buffResistance[Stats.ATTACK] = 1.1;
         buffResistance[Stats.MAGIC_ATTACK] = 1.1;
         buffResistance[Stats.DEFENCE] = 1.1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.1;
         buffResistance[Stats.ACCURACY] = 1.1;
         buffResistance[Stats.EVADE] = 1.1;
         EXP = 150;
         AP = 25;
         SP = 25;
         gold = 300;
         dropList = [[Items.bomb,100],[Items.pretzel,100],[Items.leather,100],[Items.burger,100],[Items.topaz,100]];
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
         if(Battle.foeCount() < 2)
         {
            ++this.s;
         }
         if(this.s >= 3)
         {
            if(MapData.area == MapData.TEMPLE_OF_TRIALS)
            {
               if(isHard && getHpPercent() < 50)
               {
                  spawnFoe(Options.altFoes ? [BoulderObsidian] : [BoulderMarble],this.level);
               }
               else
               {
                  spawnFoe(Options.altFoes ? [GloopAsh] : [IdolGem],this.level);
               }
            }
            else if(isHard && getHpPercent() < 33)
            {
               spawnFoe(Options.altFoes ? [BatBone,BatBlood] : [GloopStone],this.level);
            }
            else
            {
               spawnFoe(Options.altFoes ? [IdolGem,BushMud,IdolStone,IdolWood,SlimeSand,SlimeWater,SlimeMud] : [IdolStone,BushSand,SlimeSand],this.level);
            }
            this.s = 0;
         }
         if(this.textCount == 1)
         {
            if(Text.speech(Text.cyclops[2],{
               "skin":skin,
               "skinDamage":graphic.skinDamage
            }))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2)
         {
            if(Text.speech(Text.cyclops[3],{
               "skin":skin,
               "skinDamage":graphic.skinDamage
            }))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 90)
         {
            if(Text.speech(Text.cyclops[4],{
               "skin":skin,
               "skinDamage":graphic.skinDamage
            }))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 70)
         {
            if(Text.speech(Text.cyclops[5],{
               "skin":skin,
               "skinDamage":graphic.skinDamage
            }))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 50)
         {
            if(Text.speech(Text.cyclops[6],{
               "skin":skin,
               "skinDamage":graphic.skinDamage
            }))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 6 && getHpPercent() < 30)
         {
            if(Text.speech(Text.cyclops[7],{
               "skin":skin,
               "skinDamage":graphic.skinDamage
            }))
            {
               ++this.textCount;
            }
         }
         var _loc1_:int = Math.random() * 3;
         if(getHpPercent() < 75)
         {
            _loc1_ = Math.random() * 5 + 1;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 4 + 2;
         }
         if(getHpPercent() < 40 && buffs[Stats.ATTACK] <= 110 && buffs[Stats.MAGIC_ATTACK] <= 110)
         {
            _loc1_ = 6;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = int([2,2,5,4,6][int(Math.random() * 5)]);
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack3");
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
            graphic.animate("magic2");
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
         Skills.basicFoeAttack(180 / 3);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(120);
      }
      
      public function attack22() : *
      {
         Battle.targetType = Target.ALL_STANDBY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":120
         });
      }
      
      public function attack3() : *
      {
         Battle.targetType = CENTER_ENEMY;
         Skills.basicFoeAttack(100,Element.EARTH,33,Status.STAGGER,1,isHard ? 100 : 50);
      }
      
      public function magic1() : *
      {
         graphic.makeMagic(EffectEarth2,0,0,true);
         Skills.groundPound(60);
      }
      
      public function magic11() : *
      {
         if(isHard && getHpPercent() < 66)
         {
            if(Math.random() < 0.5)
            {
               castMultiSpell(Spells.earthedge);
            }
            else
            {
               castSpell("Quake");
            }
         }
      }
      
      public function bigBomb() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(80,Element.BOMB,100,Status.STAGGER,1,isHard ? 33 : 0);
      }
      
      public function magic2() : *
      {
         buff(Stats.ATTACK,50);
         buff(Stats.MAGIC_ATTACK,50);
         if(isHard)
         {
            Skills.giveStatus(this,Status.BRAVE,5);
         }
      }
      
      public function special2() : *
      {
         if(Battle.playerCount() <= 1)
         {
            Battle.selectedTarget = Battle.extraRandomPlayer();
         }
         else
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         }
         graphic.makeMagic(EffectBomb);
         Skills.basicFoeMagic(220 / 4,Element.BOMB,100,Status.DISPEL,1,isHard ? 33 : 0);
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
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic1");
      }
   }
}

