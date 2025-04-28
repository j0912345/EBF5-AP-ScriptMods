package foes
{
   public class HydraZombie extends Foe
   {
      public static var iconInfo:Array = [12,1];
      
      internal var c:int = 0;
      
      public var headOff:Boolean = false;
      
      public function HydraZombie(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Wyrm";
         graphicScale = 77;
         skin = 1;
         icon = 1065;
         catchRate = Catching.HYDRA_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 1777;
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            HP = 999;
         }
         if(Flags.battleEvent == Flags.EVIL_ANNA)
         {
            HP = 1777;
         }
         attack = 4;
         magicAttack = 6;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.4;
         hit2HP = 15;
         hit3HP = 25;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = -1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BIO] = -1;
            elementalResistance[Element.FIRE] = -1;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.3;
         statusResistance[Status.FREEZE_CHILL] = 0;
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
         EXP = 333;
         AP = 22;
         SP = 22;
         gold = 200;
         dropList = [[Items.claw,50],[Items.spike,75],[Items.darkmatter,5]];
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
         _loc1_ = Math.random() * 4;
         if(this.headOff)
         {
            _loc1_ = Math.random() * 4 + 1;
         }
         if(getHpPercent() < 33 && _loc1_ == 1)
         {
            _loc1_ = 4;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 4;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 4;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 2;
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
            graphic.animate("magic2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack2");
         }
         if(Battle.foeCount() < Global.hydras)
         {
            ++this.c;
            if(this.c >= 2)
            {
               spawnFoe(Options.altFoes ? [HydraMagma,HydraZombie] : [HydraZombie],this.level);
               Text.speech(Text.hydra[5]);
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
            evade *= 1.5;
            this.headOff = true;
            hit3HP = 9999;
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(100);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(200 / 3);
      }
      
      public function attack3() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":250,
            "statusEffect":Status.DEATH,
            "statusDegree":1,
            "statusChance":100,
            "accuracy":50
         });
      }
      
      public function magic1() : *
      {
         if(Math.random() > 0.4)
         {
            castSpell("Death");
         }
         else if(Math.random() > 0.5 && isHard)
         {
            castSpell("HellFire");
         }
         else
         {
            castSpell("FireSpin");
         }
      }
      
      public function magic2() : *
      {
         if(getHpPercent() < 50 && Math.random() < 0.33)
         {
            castSpell("Screamer");
         }
         else if(Math.random() > 0.5)
         {
            if(Math.random() < 0.5)
            {
               castSpell("DarkFlare");
            }
            else
            {
               castSpell("AntiMatter");
            }
         }
         else
         {
            castMultiSpell(Spells.sacrifice);
         }
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

