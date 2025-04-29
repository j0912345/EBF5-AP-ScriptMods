package foes
{
   public class HydraOrigami extends Foe
   {
      public static var iconInfo:Array = [12,1];
      
      internal var c:int = 0;
      
      internal var spell:int = 0;
      
      public function HydraOrigami(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Wyrm";
         graphicScale = 69;
         skin = 7;
         icon = 1212;
         catchRate = Catching.HYDRA_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 525;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.2;
         evade = 6;
         hit2HP = 15;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.8;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.3;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 2;
         statusResistance[Status.LIGHT_HEAVY] = 2;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1.3;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         buffResistance[Stats.ACCURACY] = 1.3;
         buffResistance[Stats.EVADE] = 1.3;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 0.5;
            elementalResistance[Element.ICE] = 0.5;
            elementalResistance[Element.THUNDER] = 0.5;
            elementalResistance[Element.WATER] = 1.5;
            elementalResistance[Element.WIND] = 1.5;
            elementalResistance[Element.BIO] = 0;
            statusResistance[Status.POISON_VIRUS] = 0;
            statusResistance[Status.WEAKENED_TIRED] = 0;
            statusResistance[Status.CURSE] = 0;
         }
         EXP = 165;
         AP = 14;
         SP = 14;
         gold = 125;
         dropList = [[Items.claw,75],[Items.tape,75],[Items.spike,35],[Items.satin,35],[Items.map,2]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         var _loc1_:int = 0;
         if(!startTurn())
         {
            return;
         }
         _loc1_ = Math.random() * 5;
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 3 + Math.random() * 2;
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            graphic.animate("evade");
            return;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special6");
         }
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(120 / 3);
      }
      
      public function magic1() : *
      {
         this.spell = Math.random() * 3;
         if(this.spell == 1 && Boolean(Battle.randomPlayer().status[Status.SYPHON]))
         {
            this.spell = 0;
         }
         if(this.spell == 2 && !FoeAI.arePlayersBuffed(2300))
         {
            this.spell = 0;
         }
         if(this.spell == 0)
         {
            castMultiSpell(Spells.paperSword);
         }
         if(this.spell == 1)
         {
            castSpell("Syphon2");
         }
         if(this.spell == 2)
         {
            Battle.selectedSkill = Spells.dispel;
            Spells.dispel.target = Target.ALL_ENEMY;
            Battle.targetType = Target.ALL_ENEMY;
            castSpell("Dispel2");
         }
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(45,Element.FIRE,100,Status.BURN,3,100);
      }
      
      public function special6() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(35 / 3,Element.WIND,100,Status.DRY,2,100);
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
            graphic.animate("magic1");
         }
         else
         {
            graphic.animate("special2");
         }
      }
   }
}

