package foes
{
   public class DogFriend extends Foe
   {
      public static var iconInfo:Array = [2,19];
      
      public function DogFriend(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Dog";
         graphicScale = 70;
         skin = 1;
         icon = 1132;
         catchRate = Catching.DOG_RATE;
         boxSize = 2;
         HP = 138;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.8;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.HOLY] = -1;
            elementalResistance[Element.DARK] = 1;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0.5;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
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
         EXP = 17;
         AP = 2.2;
         SP = 2.2;
         gold = 15;
         dropList = [[Items.bru,20],[Items.beer,20],[Items.cola,20],[Items.energy,20],[Items.coffee,10]];
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
         if(!Battle.selectedTarget)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("special5");
            return;
         }
         var _loc1_:int = 0;
         if(getHpPercent() < 50)
         {
            _loc1_ = 1;
         }
         if(Battle.randomPlayer().buffs[Stats.ATTACK] >= 95 && Math.random() < 0.33)
         {
            _loc1_ = 2;
         }
         if(Battle.randomFoe().buffs[Stats.EVADE] <= 105 && Battle.randomFoe().buffs[Stats.EVADE] <= 105 && Math.random() < 0.5)
         {
            _loc1_ = 3;
         }
         if(getHpPercent() < 20)
         {
            _loc1_ = 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 3;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special5");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special7");
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(13);
      }
      
      public function special7() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in Battle.foes)
         {
            _loc1_.buff(Stats.EVADE,isHard ? 25 : 15);
         }
      }
      
      public function special4() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.REGEN,3);
         }
         getHeal({
            "damage":maxHP / 2,
            "randomness":0
         });
      }
      
      public function special5() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.LOVED,3);
         }
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":150,
            "buffEffect":Stats.ATTACK,
            "buffDegree":(isHard ? -25 : -20),
            "buffChance":100
         });
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
         if(Math.random() < 0.5)
         {
            graphic.animate("special7");
         }
         else
         {
            graphic.animate("special5");
         }
      }
   }
}

