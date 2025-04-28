package foes
{
   public class ClassicFlowerBlue extends Foe
   {
      public var a:Boolean = true;
      
      public function ClassicFlowerBlue(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicFlowerMC";
         graphicScale = 75;
         skin = 4;
         icon = 1185;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         cantFlee = true;
         HP = 167;
         hit2HP = 40;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.ICE] = -1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1.3;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         buffResistance[Stats.ACCURACY] = 1.3;
         buffResistance[Stats.EVADE] = 1.3;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 0;
            statusResistance[Status.DEATH] = 0.5;
            statusResistance[Status.STUN] = 0.3;
            statusResistance[Status.DRY_WET] = 0.5;
         }
         EXP = 12;
         AP = 2.5;
         SP = 2.5;
         gold = 2;
         dropList = [[Items.flower,75],[Items.ice,50],[Items.herb,30],[Items.blueberries,15],[Items.sapphire,5]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(Game.mode == Game.BATTLE && Flags.battleEvent == Flags.THREE_PLAYER_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.EBF4_RAFFLESIA,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         var _loc1_:int = Math.random() * 5;
         if(this.a)
         {
            this.a = false;
            _loc1_ = 4;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 2 || _loc1_ == 3)
         {
            graphic.animate("magic4");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic2");
         }
      }
      
      public function special2() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":150,
            "statusEffect":Status.WET,
            "statusChance":100,
            "statusDegree":3,
            "buffEffect":Stats.EVADE,
            "buffDegree":-15,
            "buffChance":100
         });
      }
      
      public function magic2() : *
      {
         Battle.targetType = ALL_ENEMY;
         castSpell("Rain");
      }
      
      public function magic1() : *
      {
         castSpell("ClassicBulbSplash");
      }
      
      public function bulb() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":60,
            "element":Element.WATER,
            "elementDegree":50,
            "statusEffect":Status.WET,
            "statusChance":100,
            "statusDegree":3,
            "buffEffect":Stats.EVADE,
            "buffDegree":-25,
            "buffChance":(isHard ? 100 : 50)
         });
      }
      
      public function magic4() : *
      {
         castSpell("Iceshard");
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
         graphic.animate("magic1");
      }
   }
}

