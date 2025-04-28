package foes
{
   public class HydraIce extends Foe
   {
      public static var iconInfo:Array = [12,2];
      
      internal var c:int = 0;
      
      public var headOff:Boolean = false;
      
      public function HydraIce(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Wyrm";
         graphicScale = 77;
         skin = 5;
         icon = 1067;
         catchRate = Catching.HYDRA_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 3542;
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            HP = 999;
         }
         if(Flags.battleEvent == Flags.EVIL_ANNA)
         {
            HP = 1777;
         }
         attack = 4;
         magicAttack = 8;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         hit2HP = 15;
         hit3HP = 20;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = -1;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = -1;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 1.3;
            elementalResistance[Element.BOMB] = 1;
            elementalResistance[Element.THUNDER] = 1;
            elementalResistance[Element.DARK] = 0.5;
            elementalResistance[Element.BIO] = 0;
         }
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0.3;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
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
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         EXP = 555;
         AP = 24;
         SP = 24;
         gold = 222;
         dropList = [[Items.water,100],[Items.glass,75],[Items.sapphire,20]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(Foes.hydraCount() + 1 > Global.hydras)
         {
            Global.hydras = Foes.hydraCount() + 1;
         }
      }
      
      public function takeTurn() : *
      {
         var _loc1_:int = 0;
         if(!startTurn())
         {
            return;
         }
         if(getHpPercent() < 33 && !this.headOff)
         {
            hit3HP = 5;
         }
         _loc1_ = Math.random() * 6;
         if(getHpPercent() < 50)
         {
            _loc1_ = Math.random() * 5 + 2;
         }
         if(this.headOff)
         {
            _loc1_ = Math.random() * 3 + 4;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 6;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 6;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = int([2,3,4,5][int(Math.random() * 4)]);
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            graphic.animate("evade");
            return;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special5");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("attack2");
         }
         if(Battle.foeCount() < Global.hydras)
         {
            ++this.c;
            if(this.c >= 2)
            {
               spawnFoe([HydraIce],this.level);
               Text.speech(Text.hydra[16]);
               Text.speech(Text.hydra[6]);
               this.c = 0;
            }
         }
      }
      
      public function loseHead() : *
      {
         if(this.headOff)
         {
            return;
         }
         if(graphic.monster != 2)
         {
            elementalResistance[Element.EARTH] = 0;
            elementalResistance[Element.FIRE] = 1.5;
            elementalResistance[Element.HOLY] = -1;
            elementalResistance[Element.DARK] = 2;
            if(Options.extraFoeResistance)
            {
               elementalResistance[Element.FIRE] = 1.3;
               elementalResistance[Element.DARK] = 1.5;
            }
            recalculateElementalResistance();
            evade *= 2;
            this.headOff = true;
            hit3HP = 9999;
         }
      }
      
      public function attack1() : *
      {
         graphic.makeMagic(EffectIce2);
         Skills.basicFoeAttack(100,Element.ICE,30,Status.CHILL,2,isHard ? 66 : 33);
      }
      
      public function attack2() : *
      {
         if(Battle.finalHit)
         {
            graphic.makeMagic(EffectIce2);
         }
         Skills.basicFoeAttack(200 / 3,Element.ICE,30,Status.CHILL,2,isHard ? 66 : 33);
      }
      
      public function attack3() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "element":Element.ICE,
            "elementDegree":30,
            "damage":250,
            "statusEffect":Status.DEATH,
            "statusDegree":1,
            "statusChance":100,
            "accuracy":50
         });
      }
      
      public function magic1() : *
      {
         var _loc1_:int = Math.random() * 2;
         if(isHard)
         {
            _loc1_ = Math.random() * 3;
         }
         if(this.headOff)
         {
            _loc1_ = Math.random() * 2 + 3;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = Math.random() * 3;
         }
         if(_loc1_ == 0)
         {
            castSpell("Icestorm");
         }
         if(_loc1_ == 1)
         {
            castSpell("Hurricane");
         }
         if(_loc1_ == 2)
         {
            castSpell("Vortex");
         }
         if(_loc1_ == 3)
         {
            castSpell("HolySword");
            Text.speech(Text.hydra[9]);
         }
         if(_loc1_ == 4)
         {
            castSpell("Judgement");
            Text.speech(Text.hydra[9]);
         }
      }
      
      public function special4() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(40 / 3,Element.WIND,100,Status.SYPHON,1,isHard ? 100 : 33);
      }
      
      public function special5() : *
      {
         Battle.selectedTarget = Battle.extraRandomPlayer();
         Skills.basicFoeAttack(220 / 4,Element.ICE,100,Status.FREEZE,3,isHard ? 50 : 25);
      }
      
      public function onHitFunction() : *
      {
         if(this.headOff)
         {
            readyCounterAttack(1);
         }
         else
         {
            readyCounterAttack(0.25);
         }
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if(this.headOff || Boolean(status[Status.SYPHON]))
         {
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("magic1");
         }
      }
   }
}

