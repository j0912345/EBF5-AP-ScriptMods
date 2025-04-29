package foes
{
   public class ClassicBeholder extends Foe
   {
      public var c:int = 0;
      
      public function ClassicBeholder(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicBeholderMC";
         graphicScale = 101;
         skin = 1;
         icon = 1166;
         catchRate = Catching.BEHOLDER_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 2169;
         hit2HP = 6;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 400;
         evade = 0;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 2;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         buffResistance[Stats.DEFENCE] = 1.4;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1.4;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = 1.5;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 250;
         AP = 25;
         SP = 25;
         gold = 150;
         dropList = [[Items.virus,100],[Items.virus,100],[Items.virus,100],[Items.virus,100],[Items.scales,100]];
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
         var _loc1_:int = Math.random() * 6;
         if(status[Status.BERSERK])
         {
            _loc1_ = 2;
         }
         if(Boolean(status[Status.SYPHON]) && _loc1_ == 2)
         {
            _loc1_ = 5;
         }
         if(_loc1_ == 0 || _loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 2)
         {
            graphic.setXY();
            graphic.animate("special1");
         }
         if(_loc1_ == 3 || _loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 5)
         {
            graphic.setXY();
            graphic.animate("attack3");
         }
         if(Battle.foeCount() == 1)
         {
            ++this.c;
         }
         if(this.c >= 4)
         {
            this.c = 0;
            spawnFoe([ClassicEyeball,ClassicTree],this.level,0,-1,true);
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(160);
      }
      
      public function special1() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(140);
      }
      
      public function attack2() : *
      {
         castSpell("ClassicTentacles");
      }
      
      public function tentacles() : *
      {
         Skills.basicFoeAttack(190,Element.EARTH,25);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(200 / 4,Element.BIO,25,Status.POISON,5,100);
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
         graphic.animate("attack2");
      }
   }
}

