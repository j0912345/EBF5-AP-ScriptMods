package foes
{
   public class BossCyclopsInfernal extends Foe
   {
      public static var iconInfo:Array = [9,3];
      
      public var textCount:int = 1;
      
      public var s:int = 1;
      
      public function BossCyclopsInfernal(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Cyclops";
         graphicScale = 77;
         skin = 3;
         icon = 1083;
         catchRate = Catching.BOSS_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 1900;
         attack = 3.3;
         magicAttack = 3.3;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 7;
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BIO] = 1;
            elementalResistance[Element.WATER] = 1;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.DARK] = 0;
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
         EXP = 120;
         AP = 20;
         SP = 20;
         gold = 220;
         dropList = [[Items.leather,100],[Items.magma,100],[Items.satin,100],[Items.magma,100],[Items.ruby,100]];
         Global.cyclopsSisDown = false;
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         BossDevourer.finalBossBuff(this);
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(Global.cyclopsSisDown && Boolean(this.s))
         {
            turnTaken = false;
            this.s = 0;
         }
         else
         {
            this.s = 1;
         }
         if(this.textCount == 1)
         {
            ++this.textCount;
         }
         else if(this.textCount == 2)
         {
            if(Text.speech(Text.sisters[2],{
               "skin":skin,
               "skinDamage":graphic.skinDamage
            }))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3)
         {
            ++this.textCount;
         }
         else if(this.textCount == 4)
         {
            if(Text.speech(Text.sisters[4],{
               "skin":skin,
               "skinDamage":graphic.skinDamage
            }))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 20)
         {
            if(Text.speech(Text.sisters[5],{
               "skin":skin,
               "skinDamage":graphic.skinDamage
            }))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && Battle.foeCount() == 1)
         {
            if(Text.speech(Text.sisters[7],{
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
            _loc1_ = Math.random() * 4;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 4 + 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 3;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 4)
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
         Skills.basicFoeAttack(100,Element.FIRE,30,Status.BURN,2,isHard ? 66 : 33);
      }
      
      public function attack5() : *
      {
         Skills.basicFoeAttack(120 / 2,Element.FIRE,50,isHard ? Status.SCORCHED : Status.BURN,2,isHard ? 100 : 66);
      }
      
      public function magic1() : *
      {
         graphic.makeMagic(EffectEarth2,0,0,true);
         Skills.groundPound(60);
         if(Options.altFoes)
         {
            spawnFoe([BitFire,BitThunder],this.level);
         }
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
               castSpell("FireSpire");
            }
         }
      }
      
      public function magic2() : *
      {
         if(Options.altFoes)
         {
            spawnFoe([BitFire,BitThunder],this.level);
         }
         if(isHard)
         {
            Skills.giveStatus(this,Status.BURN,3);
         }
         if(Math.random() < 0.66 || !isHard)
         {
            castSpell("LavaLance");
         }
         else
         {
            castSpell("Cataclysm");
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
         graphic.animate("attack3");
      }
   }
}

