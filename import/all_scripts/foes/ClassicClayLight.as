package foes
{
   public class ClassicClayLight extends Foe
   {
      public var counterSpell:Boolean = false;
      
      public function ClassicClayLight(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicClayMC";
         graphicScale = 86;
         skin = 4;
         icon = 1178;
         catchRate = Catching.CLAY_RATE;
         boxSize = 2;
         cantFlee = true;
         HP = 253;
         hit2HP = 40;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.1;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 2;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
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
            elementalResistance[Element.BOMB] = 1.3;
            elementalResistance[Element.WATER] = 0.5;
            statusResistance[Status.DEATH] = 0.5;
            statusResistance[Status.STUN] = 0.5;
         }
         EXP = 29;
         AP = 3.5;
         SP = 3.8;
         gold = 20;
         dropList = [[Items.brick,75],[Items.silk,25],[Items.satin,15],[Items.silver,10],[Items.grail,2]];
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
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 25)
         {
            _loc1_ = 1;
         }
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
         if(_loc1_ == 1 || _loc1_ == 2 || _loc1_ == 3)
         {
            graphic.animate("magic2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(22,Element.HOLY,25);
      }
      
      public function magic2() : *
      {
         var _loc1_:int = Math.random() * 4;
         if(this.counterSpell)
         {
            this.counterSpell = false;
            Battle.selectedTarget = this;
            castSpell("ClassicMaxPotion");
            return;
         }
         if(_loc1_ == 0)
         {
            Battle.selectedTarget = Battle.mostDamagedFoe();
            castSpell("ClassicMaxPotion");
         }
         if(_loc1_ == 1)
         {
            Battle.selectedTarget = Battle.mostDamagedFoe();
            castSpell("ClassicAttackPotion");
         }
         if(_loc1_ == 2)
         {
            Battle.selectedTarget = Battle.mostDamagedFoe();
            castSpell("ClassicMagicPotion");
         }
         if(_loc1_ == 3)
         {
            castSpell("ClassicMegalixir");
         }
         Text.speech(Text.ebf3[11]);
         Text.speech(Text.ebf3[12]);
         Text.speech(Text.ebf3[13]);
      }
      
      public function maxPotion() : *
      {
         Battle.selectedTarget.getHeal({
            "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 130,
            "randomness":20
         });
         Battle.selectedTarget.buff(Stats.ACCURACY,70,true);
         Battle.selectedTarget.buff(Stats.EVADE,70,true);
      }
      
      public function attackPotion() : *
      {
         Battle.selectedTarget.getHeal({
            "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 130,
            "randomness":20
         });
         Battle.selectedTarget.buff(Stats.ATTACK,70,true);
         Battle.selectedTarget.buff(Stats.DEFENCE,70,true);
      }
      
      public function magicPotion() : *
      {
         Battle.selectedTarget.getHeal({
            "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 130,
            "randomness":20
         });
         Battle.selectedTarget.buff(Stats.MAGIC_ATTACK,70,true);
         Battle.selectedTarget.buff(Stats.MAGIC_DEFENCE,70,true);
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
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.33);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         this.counterSpell = true;
         graphic.animate("magic2");
      }
   }
}

