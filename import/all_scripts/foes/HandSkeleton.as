package foes
{
   public class HandSkeleton extends Foe
   {
      public static var iconInfo:Array = [11,5];
      
      public var weapon:Object;
      
      public function HandSkeleton(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Hand";
         graphicScale = 77;
         skin = 1;
         icon = 1024;
         catchRate = Catching.HAND_RATE;
         boxSize = 1;
         HP = 144;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.9;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 0.5;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = 0;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BIO] = -1;
            elementalResistance[Element.WATER] = 0.5;
            elementalResistance[Element.HOLY] = 1.3;
            elementalResistance[Element.EARTH] = 1.5;
            elementalResistance[Element.DARK] = -1;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         EXP = 21;
         AP = 2.2;
         SP = 2.2;
         gold = 14;
         dropList = [[Items.iron,25],[Items.wood,25],[Items.bomb,33],[Items.shuriken,33]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(graphic)
         {
            this.selectRandomWeapon();
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(!Battle.selectedTarget)
         {
            quickFlee();
            return;
         }
         var _loc1_:int = 0;
         if(Math.random() < 0.2)
         {
            _loc1_ = 2;
         }
         if(Battle.randomFoe().status[Status.GOOD_LUCK] == 0 && Battle.randomFoe().status[Status.GOOD_LUCK] == 0 && Math.random() < 0.33)
         {
            _loc1_ = 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(Boolean(status[Status.SYPHON]) && _loc1_ == 2)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack" + this.weapon.attacks[int(Math.random() * this.weapon.attacks.length)]);
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special2");
         }
      }
      
      public function selectRandomWeapon() : *
      {
         var _loc2_:String = null;
         if(status[Status.BERSERK])
         {
            return;
         }
         var _loc1_:Array = [HandWeapons.evilAxe,HandWeapons.evilAxe,HandWeapons.iceSword,HandWeapons.sword,HandWeapons.knife,HandWeapons.magmaSword];
         if(isHard)
         {
            _loc2_ = FoeAI.getBestElement([Element.DARK,Element.WIND,Element.ICE,Element.FIRE]);
            if(_loc2_ == Element.DARK)
            {
               _loc1_.push(HandWeapons.evilAxe);
               _loc1_.push(HandWeapons.evilAxe);
            }
            if(_loc2_ == Element.WIND)
            {
               _loc1_.push(HandWeapons.knife);
               _loc1_.push(HandWeapons.knife);
            }
            if(_loc2_ == Element.ICE)
            {
               _loc1_.push(HandWeapons.iceSword);
               _loc1_.push(HandWeapons.iceSword);
            }
            if(_loc2_ == Element.FIRE)
            {
               _loc1_.push(HandWeapons.magmaSword);
               _loc1_.push(HandWeapons.magmaSword);
            }
         }
         this.weapon = _loc1_[int(Math.random() * _loc1_.length)];
         graphic.weapon = this.weapon.skin;
      }
      
      public function changeWeapon() : *
      {
         if(Math.random() < (isHard ? 0.5 : 0.25))
         {
            this.selectRandomWeapon();
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(34 / 3 * this.weapon.damage,this.weapon.element,this.weapon.elementDegree,this.weapon.statusEffect,this.weapon.statusDegree,this.weapon.statusChance,this.weapon.accuracy);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(28 * this.weapon.damage,this.weapon.element,this.weapon.elementDegree,this.weapon.statusEffect,this.weapon.statusDegree,this.weapon.statusChance,this.weapon.accuracy);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(29 * this.weapon.damage,this.weapon.element,this.weapon.elementDegree,this.weapon.statusEffect,this.weapon.statusDegree,this.weapon.statusChance,this.weapon.accuracy);
      }
      
      public function special1() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in Battle.foes)
         {
            if(Math.random() > 0.33)
            {
               Skills.giveStatus(_loc1_,Status.GOOD_LUCK,Math.random() * 3 + (isHard ? 1 : 0));
            }
         }
      }
      
      public function special2() : *
      {
         castSpell("BoneStar");
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
         if(status[Status.SYPHON])
         {
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("special2");
         }
      }
   }
}

