package foes
{
   public class TurretHarpoon extends Foe
   {
      public function TurretHarpoon(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Turret";
         graphicScale = 90;
         skin = 3;
         icon = 1055;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         HP = 344;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 2;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.DARK] = -1;
         }
         if(Flags.battleEvent != Flags.LANCE_BATTLE_3 && Flags.battleEvent != Flags.BOSS_RUSH)
         {
            elementalResistance[Element.EARTH] = 1.8;
            attack = 2;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         EXP = 32;
         AP = 3.8;
         SP = 3.8;
         gold = 30;
         dropList = [[Items.steel,50],[Items.gear,75],[Items.spring,100],[Items.kevlar,10]];
         init(param1,param2,param3,param4);
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3 || Flags.battleEvent == Flags.BOSS_RUSH)
         {
            graphic.point1.y += 125;
            graphic.point2.y += 50;
            graphic.point2.x -= 50;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 4;
         if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 2;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = Math.random() * 2;
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
            graphic.animate("magic1");
         }
      }
      
      public function replaceMe() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3 || Flags.battleEvent == Flags.BOSS_RUSH)
         {
            Battle.counterStack.push(this);
         }
      }
      
      override public function counter2() : *
      {
         spawnFoe([TurretHarpoon],this.level,0,this.position);
      }
      
      public function attack1() : *
      {
         graphic.makeMagic(EffectStab,0,0,true);
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(45,Element.NONE,0,Status.STAGGER,1,isHard ? 20 : 0);
      }
      
      public function attack2() : *
      {
         graphic.makeMagic(EffectStab,0,0,true);
         Battle.targetType = ALL_ENEMY;
         Global.pushedPlayer = Battle.players.indexOf(Battle.randomPlayer());
         Skills.basicFoeAttack(45,Element.NONE,0,Status.PUSH_OUT,9,100);
      }
      
      public function magic1() : *
      {
         var _loc1_:int = Math.random() * 4;
         if(_loc1_ == 0 && !FoeAI.getBestRecycleTarget())
         {
            _loc1_ = 1 + Math.random() * 3;
         }
         else if(_loc1_ == 0)
         {
            Battle.selectedTarget = FoeAI.getBestRecycleTarget();
         }
         if(_loc1_ == 1)
         {
            Battle.selectedTarget = Battle.randomFoe();
            if(Battle.selectedTarget.buffs[Stats.ACCURACY] >= 110 && Battle.foeCount() >= 2)
            {
               Battle.selectedTarget = Battle.randomFoeButNot(Battle.selectedTarget);
            }
         }
         if(_loc1_ == 2 && Battle.selectedTarget.buffs[Stats.EVADE] <= 90)
         {
            _loc1_ = 3;
         }
         if(_loc1_ == 0)
         {
            castSpell("Recycle");
         }
         if(_loc1_ == 1)
         {
            castSpell("LockOn");
         }
         if(_loc1_ == 2)
         {
            castSpell("Bind");
         }
         if(_loc1_ == 3)
         {
            castSpell("ElectronGun");
         }
      }
   }
}

