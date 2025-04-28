package foes
{
   public class ClassicWaspRed extends Foe
   {
      public function ClassicWaspRed(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicWaspMC";
         graphicScale = 73;
         skin = 2;
         icon = 1173;
         catchRate = Catching.WASP_RATE;
         boxSize = 2;
         cantFlee = true;
         HP = 104;
         hit2HP = 35;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 5.5;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.3;
         elementalResistance[Element.ICE] = 1.3;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
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
            elementalResistance[Element.BIO] = -0.5;
            elementalResistance[Element.DARK] = -0.5;
            elementalResistance[Element.WIND] = 1.3;
            elementalResistance[Element.THUNDER] = 1;
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.HOLY] = 1;
         }
         EXP = 12;
         AP = 2.6;
         SP = 2.6;
         gold = 18;
         dropList = [[Items.butterflywing,50],[Items.butterflywing,50]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         var _loc1_:int = Math.random() * 3;
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special1");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(38,null,null,Status.STUN,1,isHard ? 20 : 5);
      }
      
      public function special1() : *
      {
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":35,
            "element":Element.WIND,
            "elementDegree":100,
            "buffEffect":Stats.MAGIC_DEFENCE,
            "buffChance":(isHard ? 100 : 50),
            "buffDegree":(isHard ? -30 : -20)
         });
         if(Math.random() < 0.5)
         {
            if(Flags.battleEvent == Flags.EBF4A || Flags.battleEvent == Flags.THREE_PLAYER_RUSH)
            {
               return;
            }
            if(spawnFoe([ClassicWaspBlack,ClassicWaspRed,ClassicWaspRed],this.level,0,-1,true))
            {
               Text.speech(Text.ebf2[11]);
            }
         }
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":25,
            "element":Element.BIO,
            "elementDegree":100,
            "buffEffect":Stats.ACCURACY,
            "buffChance":20,
            "buffDegree":-30
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
         graphic.animate("special2");
      }
   }
}

