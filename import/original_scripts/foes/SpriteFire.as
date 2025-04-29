package foes
{
   public class SpriteFire extends Foe
   {
      public function SpriteFire(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Sprite";
         graphicScale = 68;
         skin = 5;
         icon = 1037;
         catchRate = Catching.SPRITE_RATE;
         boxSize = 1;
         HP = 166;
         attack = 5;
         magicAttack = 5;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = -0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1.5;
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
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.DARK] = 0.5;
            elementalResistance[Element.BIO] = 0.5;
            elementalResistance[Element.WATER] = 1.3;
            elementalResistance[Element.EARTH] = 1.3;
            statusResistance[Status.DEATH] = 0.5;
            statusResistance[Status.STUN] = 0.5;
            statusResistance[Status.SYPHON] = 0.5;
         }
         EXP = 21;
         AP = 3;
         SP = 2.2;
         gold = 20;
         dropList = [[Items.raspberries,25],[Items.watermelon,10]];
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
         var _loc1_:int = Math.random() * 4;
         if(_loc1_ == 2 && Battle.randomPlayer().buffs[Stats.ACCURACY] <= 90)
         {
            _loc1_ = 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = int([2,3][int(Math.random() * 2)]);
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
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
            graphic.animate("special6");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(18,Element.FIRE,25);
      }
      
      public function special4() : *
      {
         Skills.basicFoeMagic(26 / 3,Element.FIRE,100,Status.BURN,2,isHard ? 66 : 33);
      }
      
      public function special5() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "statusOnly":true,
            "statusEffect":Status.SHROUD,
            "statusDegree":2,
            "statusChance":(isHard ? 33 : 0),
            "buffEffect":Stats.ACCURACY,
            "buffDegree":(isHard ? -20 : -15),
            "buffChance":100
         });
      }
      
      public function special6() : *
      {
         castSpell("Ash");
         Text.speech(Text.sprites[2]);
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
         graphic.animate("special5");
      }
   }
}

