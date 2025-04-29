package foes
{
   public class ArcadeBosh extends Foe
   {
      public static var iconInfo:Array = [30,2];
      
      private var berserked:Boolean = false;
      
      private var counterSpell:Boolean = false;
      
      public function ArcadeBosh(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 100;
         skin = 2;
         icon = 1202;
         catchRate = Catching.BOSH_RATE;
         boxSize = 1;
         hit2HP = 8;
         HP = 1187;
         attack = 2;
         magicAttack = 2;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.5;
         evade = 4.1;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = -0.5;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.2;
         statusResistance[Status.FREEZE_CHILL] = 0.2;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.6;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.6;
         buffResistance[Stats.ACCURACY] = 1.2;
         buffResistance[Stats.EVADE] = 1.2;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.DARK] = 1.3;
            elementalResistance[Element.FIRE] = 1.3;
            elementalResistance[Element.WIND] = 1.3;
            elementalResistance[Element.HOLY] = 0;
            statusResistance[Status.SYPHON] = 0.2;
            statusResistance[Status.DISPEL] = 0.5;
            statusResistance[Status.FREEZE_CHILL] = 0;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.ACCURACY] = 1.4;
         }
         EXP = 235;
         AP = 16;
         SP = 16;
         gold = 7;
         dropList = [[Items.herb,75],[Items.garlic,75],[Items.root,75],[Items.flower,75],[Items.cloudberries,25]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(Game.mode == Game.BATTLE)
         {
            statusDisplay.y += 40;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,22);
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.BOSH,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(Battle.foeCount() < 3 && !this.berserked)
         {
            Skills.giveStatus(this,Status.BERSERK,isHard ? 5 : 3);
            this.berserked = true;
         }
         if(Battle.foeCount() < 2)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("flee");
            return;
         }
         if(getHpPercent() < 60)
         {
            Text.speech(Text.bosh[2]);
         }
         if(getHpPercent() < 20)
         {
            Text.speech(Text.bosh[5]);
         }
         var _loc1_:int = Math.random() * 3;
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 2 && Battle.selectedTarget.buffs[Stats.DEFENCE] < 90)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 1)
         {
            Battle.selectedTarget = FoeAI.getBestDispelPlayer();
            graphic.animate("magic2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special1");
         }
      }
      
      public function special1(param1:int) : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         if(param1 == 1)
         {
            Skills.customFoeAttack({
               "statusOnly":true,
               "accuracy":200,
               "buffEffect":Stats.MAGIC_DEFENCE,
               "buffDegree":-25,
               "buffChance":100
            });
         }
         if(param1 == 2)
         {
            Skills.customFoeAttack({
               "statusOnly":true,
               "accuracy":200,
               "buffEffect":Stats.DEFENCE,
               "buffDegree":-25,
               "buffChance":100
            });
         }
         if(param1 == 3)
         {
            Skills.giveStatus(this,Status.REGEN,isHard ? 2 : 1);
         }
      }
      
      public function special2() : *
      {
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         Skills.basicFoeAttack(160 / 4,Element.BIO,25,null,null,null,90);
      }
      
      public function magic2() : *
      {
         var _loc1_:int = Math.random() * 2;
         if(_loc1_ == 0 || Boolean(this.counterSpell))
         {
            castSpell("MermaidWater");
         }
         else
         {
            castMultiSpell(Spells.arcadeVines);
         }
         this.counterSpell = false;
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.25);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         this.counterSpell = true;
         graphic.animate("magic2");
      }
   }
}

