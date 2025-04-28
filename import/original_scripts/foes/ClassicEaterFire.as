package foes
{
   public class ClassicEaterFire extends Foe
   {
      public function ClassicEaterFire(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicTurtleMC";
         graphicScale = 87;
         skin = 3;
         icon = 1171;
         catchRate = Catching.EATER_RATE;
         boxSize = 2;
         cantFlee = true;
         HP = 324;
         hit2HP = 30;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.5;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0.5;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.5;
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
            elementalResistance[Element.ICE] = 0.5;
            statusResistance[Status.DISPEL] = 0.3;
            statusResistance[Status.STUN] = 0.3;
            statusResistance[Status.SYPHON_DISABLE] = 0.3;
            statusResistance[Status.DEATH] = 0.3;
         }
         EXP = 55;
         AP = 9;
         SP = 7;
         gold = 60;
         dropList = [[Items.magma,100],[Items.magma,50],[Items.magma,25],[Items.ruby,5],[Items.scales,5]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(Game.mode == Game.BATTLE && Flags.battleEvent == Flags.TWO_PLAYER_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.EBF2_GOLEM,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         var _loc1_:int = Math.random() * 4;
         if(Math.random() < 0.15)
         {
            _loc1_ = 3;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 3;
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
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special3");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(75);
      }
      
      public function attack2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeAttack(43 / 2,Element.EARTH,50);
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeAttack(21,Element.EARTH,50);
         buff(Stats.DEFENCE,30,true);
         buff(Stats.MAGIC_DEFENCE,30,true);
         buff(Stats.ATTACK,30,true);
         buff(Stats.MAGIC_ATTACK,30,true);
      }
      
      public function special3(param1:int = 1) : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         if(param1 == 1)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":65 / 4,
               "element":Element.FIRE,
               "elementDegree":100,
               "accuracy":90
            });
         }
         if(param1 == 2)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":65 / 4,
               "element":Element.FIRE,
               "elementDegree":100,
               "buffEffect":Stats.MAGIC_DEFENCE,
               "buffChance":(isHard ? 100 : 30),
               "buffDegree":-30
            });
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.2);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         graphic.animate("special3");
      }
   }
}

