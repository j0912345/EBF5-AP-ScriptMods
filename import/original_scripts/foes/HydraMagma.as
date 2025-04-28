package foes
{
   public class HydraMagma extends Foe
   {
      public static var iconInfo:Array = [12,3];
      
      internal var c:int = 0;
      
      public var headOff:Boolean = false;
      
      public function HydraMagma(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Wyrm";
         graphicScale = 77;
         skin = 3;
         icon = 1066;
         catchRate = Catching.HYDRA_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 1888;
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
         hit3HP = 24;
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = 0;
            elementalResistance[Element.BOMB] = -1;
            elementalResistance[Element.DARK] = -1;
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
         EXP = 400;
         AP = 24;
         SP = 24;
         gold = 222;
         dropList = [[Items.magma,50],[Items.iron,75],[Items.amber,50]];
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
         _loc1_ = Math.random() * 5;
         if(getHpPercent() < 50)
         {
            _loc1_ = Math.random() * 5 + 2;
         }
         if(this.headOff)
         {
            _loc1_ = Math.random() * 5 + 2;
         }
         if(_loc1_ == 3 && Battle.randomPlayer().buffs[Stats.ACCURACY] <= 95)
         {
            _loc1_ = 2;
         }
         if((_loc1_ == 4 || _loc1_ == 5) && Math.random() < 0.66 && Math.random() > FoeAI.getPlayersWeakTo(Element.FIRE,false,true).length / 3)
         {
            _loc1_ = 2;
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
            _loc1_ = int([3,4][int(Math.random() * 2)]);
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
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special3");
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
               spawnFoe(Options.altFoes ? [HydraMagma,HydraZombie] : [HydraMagma],this.level);
               Text.speech(Text.hydra[5]);
               Text.speech(Text.hydra[16]);
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
         graphic.makeMagic(EffectFire3);
         Skills.basicFoeAttack(100,Element.FIRE,20,Status.DRY,2,isHard ? 66 : 0);
      }
      
      public function attack2() : *
      {
         graphic.makeMagic(EffectFire3);
         Skills.basicFoeAttack(200 / 3,Element.FIRE,20,Status.DRY,2,isHard ? 66 : 0);
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
         if(Math.random() < 0.5)
         {
            castMultiSpell(Spells.bullet);
         }
         else
         {
            castMultiSpell(Spells.scald);
         }
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(30,Element.FIRE,100,Status.DRY,3,100);
      }
      
      public function special3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(50,Element.FIRE,100,Status.SCORCHED,isHard ? 5 : 2,100);
      }
      
      public function special1() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":20,
            "element":Element.DARK,
            "elementDegree":100,
            "statusEffect":Status.SHROUD,
            "statusDegree":3,
            "statusChance":(isHard ? 50 : 0),
            "randomness":20,
            "buffEffect":Stats.ACCURACY,
            "buffChance":100,
            "buffDegree":(isHard ? -25 : -15)
         });
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
            graphic.animate("special1");
         }
      }
   }
}

