package foes
{
   public class ClassicCrystalBlue extends Foe
   {
      public var counterSpell:Boolean = false;
      
      public function ClassicCrystalBlue(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicCrystalMC";
         graphicScale = 100;
         skin = 1;
         icon = 1188;
         catchRate = Catching.CRYSTAL_RATE;
         boxSize = 2;
         cantFlee = true;
         HP = 340;
         hit2HP = 33;
         attack = 4;
         magicAttack = 6;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 2;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = -1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 0;
         elementalResistance[Element.DARK] = 2;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.5;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
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
            elementalResistance[Element.FIRE] = 1.5;
            statusResistance[Status.DEATH] = 0;
            statusResistance[Status.STAGGER] = 0;
            statusResistance[Status.WEAKENED_TIRED] = 0;
            buffResistance[Stats.MAGIC_ATTACK] = 1.8;
         }
         EXP = 70;
         AP = 3;
         SP = 3;
         gold = 100;
         dropList = [[Items.water,50],[Items.water,50],[Items.glass,40],[Items.gems,20],[Items.sapphire,5]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(Game.mode == Game.BATTLE && Flags.battleEvent == Flags.THREE_PLAYER_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.EBF4_PRAETORIAN,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         var _loc1_:int = Math.random() * 6;
         if(status[Status.BERSERK])
         {
            _loc1_ = 2;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("magic1");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(50,Element.ICE,30,Status.SYPHON,1,isHard ? 50 : 25);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(70 / 9,Element.ICE,30,Status.SYPHON,1,isHard ? int(50 / 9) : int(25 / 9));
      }
      
      public function special1() : *
      {
         castSpell("SnowBlast");
      }
      
      public function special2() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in Battle.foes)
         {
            _loc1_.buff(Stats.DEFENCE,isHard ? 30 : 25,true);
            _loc1_.buff(Stats.MAGIC_DEFENCE,isHard ? 30 : 25,true);
         }
      }
      
      public function magic1() : *
      {
         var _loc1_:int = Math.random() * 2;
         if(this.counterSpell)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            castSpell("Blizzard");
         }
         if(_loc1_ == 1)
         {
            Battle.targetType = Target.ALL;
            castSpell("Rain");
         }
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
         this.counterSpell = true;
         graphic.animate("magic1");
      }
   }
}

