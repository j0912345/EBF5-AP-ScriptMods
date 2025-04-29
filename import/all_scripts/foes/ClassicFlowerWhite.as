package foes
{
   public class ClassicFlowerWhite extends Foe
   {
      public var counterSpell:Boolean = false;
      
      public function ClassicFlowerWhite(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicFlowerMC";
         graphicScale = 75;
         skin = 2;
         icon = 1182;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         cantFlee = true;
         HP = 143;
         hit2HP = 40;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.8;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
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
            elementalResistance[Element.ICE] = 1;
            statusResistance[Status.DEATH] = 0.5;
            statusResistance[Status.STUN] = 0.3;
            statusResistance[Status.FREEZE_CHILL] = 0.3;
            statusResistance[Status.DRY_WET] = 0.5;
         }
         EXP = 12;
         AP = 2.5;
         SP = 2.5;
         gold = 2;
         dropList = [[Items.flower,75],[Items.butterflywing,50],[Items.herb,30],[Items.garlic,30],[Items.moonpearl,5]];
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
         var _loc1_:int = Math.random() * 5;
         if(status[Status.SYPHON])
         {
            _loc1_ = -1;
         }
         if(_loc1_ == -1)
         {
            graphic.animate("evade");
         }
         if(_loc1_ == 0 || _loc1_ == 1)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ >= 2)
         {
            graphic.animate("magic5");
         }
      }
      
      public function magic5() : *
      {
         var _loc1_:int = Math.random() * 2;
         if(getHpPercent() < 50)
         {
            _loc1_++;
         }
         if(this.counterSpell)
         {
            this.counterSpell = false;
            Battle.selectedTarget = this;
            castSpell("Renew");
            return;
         }
         if(_loc1_ == 0)
         {
            Battle.selectedTarget = Battle.mostDamagedFoe();
            castSpell("Renew");
         }
         if(_loc1_ == 1)
         {
            Battle.selectedTarget = Battle.mostDamagedFoe();
            castSpell("Remedy");
         }
         if(_loc1_ == 2)
         {
            Battle.targetType = ALL_ALLY;
            castSpell("ClassicMegalixir");
         }
      }
      
      public function megalixir() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in Battle.foes)
         {
            if(!_loc1_.dead)
            {
               _loc1_.getHeal({
                  "damage":_loc1_.maxHP * _loc1_.hit2HP / 260,
                  "randomness":20
               });
            }
            Skills.giveStatus(_loc1_,Status.REGEN,3);
         }
      }
      
      public function magic1() : *
      {
         if(getHpPercent() < 50)
         {
            castSpell("GaiaBlossom");
         }
         else
         {
            castSpell("GaiaBloom");
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.5);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         this.counterSpell = true;
         graphic.animate("magic5");
      }
   }
}

