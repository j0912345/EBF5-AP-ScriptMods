package foes
{
   public class TurretCannon extends Foe
   {
      public function TurretCannon(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Turret";
         graphicScale = 90;
         skin = 1;
         icon = 1054;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         HP = 322;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 2;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = 1.5;
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
            magicAttack = 2;
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
         dropList = [[Items.steel,50],[Items.bomb,100],[Items.powder,50]];
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
         if(!Battle.selectedTarget)
         {
            _loc1_ = 0;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = -1;
            Skills.giveStatus(this,Status.SURRENDER,99);
         }
         if(_loc1_ == -1)
         {
            graphic.animate("evade");
         }
         if(_loc1_ == 0)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special2");
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
         spawnFoe([TurretLaser],this.level,0,this.position);
      }
      
      public function special1() : *
      {
         castSpell("BigBlast");
      }
      
      public function special2() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         castSpell("EffectBomb");
         Skills.basicFoeMagic(120 / 3,Element.BOMB,100,Status.STAGGER,1,isHard ? 50 : 25);
      }
      
      public function magic1() : *
      {
         var _loc1_:int = Math.random() * 4;
         if(Boolean(Battle.selectedTarget.status[Status.TARGET]) && _loc1_ == 0)
         {
            _loc1_ = 1 + Math.random() * 3;
         }
         if(_loc1_ == 1)
         {
            Battle.selectedTarget = Battle.randomFoe();
            if(Battle.selectedTarget.buffs[Stats.ACCURACY] >= 110 && Battle.foeCount() >= 2)
            {
               Battle.selectedTarget = Battle.randomFoeButNot(Battle.selectedTarget);
            }
         }
         if(Boolean(Battle.selectedTarget.status[Status.SYPHON]) && _loc1_ == 2)
         {
            _loc1_ = 3;
         }
         if(_loc1_ == 0)
         {
            castSpell("SetTarget");
         }
         if(_loc1_ == 1)
         {
            castSpell("LockOn");
         }
         if(_loc1_ == 2)
         {
            castSpell("Syphon");
         }
         if(_loc1_ == 3)
         {
            castSpell("ElectronGun");
         }
      }
   }
}

