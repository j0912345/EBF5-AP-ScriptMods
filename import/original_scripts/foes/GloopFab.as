package foes
{
   public class GloopFab extends Foe
   {
      public static var iconInfo:Array = [31,1];
      
      public var defended:Boolean = false;
      
      public var spell:int = 0;
      
      public function GloopFab(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Gloop";
         graphicScale = 86;
         skin = 9 + Math.random() * 2;
         icon = 1216;
         catchRate = Catching.GLOOP_RATE - 10;
         boxSize = 2;
         HP = 227;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 40;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 2;
         statusResistance[Status.STUN] = 2;
         statusResistance[Status.FREEZE_CHILL] = 2;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
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
            elementalResistance[Element.HOLY] = 1;
            elementalResistance[Element.WATER] = 0.5;
            statusResistance[Status.BURN_SCORCH] = 1;
            statusResistance[Status.STUN] = 1;
            statusResistance[Status.FREEZE_CHILL] = 1;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         }
         EXP = 23;
         AP = 2.2;
         SP = 2.2;
         gold = 16;
         dropList = [[Items.flower,50],[Items.raspberries,50],[Items.wood,50],[Items.root,25],[Items.cloudberries,5]];
         if(isHard)
         {
            status[Status.MORALE] = 3;
         }
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
         if(isScared(TREES))
         {
            Skills.giveStatus(this,Status.BERSERK,2);
         }
         var _loc1_:int = Math.random() * 5;
         if((Boolean(status[Status.LOVED]) || Boolean(status[Status.REGEN])) && _loc1_ == 1)
         {
            _loc1_ = 2;
         }
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("defend");
            return;
         }
         if(_loc1_ == 0)
         {
            if(getHpPercent() < 50)
            {
               graphic.animate("attack3");
            }
            else
            {
               graphic.animate("attack1");
            }
         }
         if(_loc1_ == 1)
         {
            graphic.animate("defend");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(20,Element.DARK,25,Status.INVISIBLE,2,isHard ? 20 : 0);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(40 / 4,Element.DARK,25,Status.INVISIBLE,2,isHard ? 20 : 0);
      }
      
      public function magic2() : *
      {
         this.spell = Math.random() * 16;
         if(this.spell == 0)
         {
            castSpell("Fireball");
         }
         if(this.spell == 1)
         {
            castSpell("Iceshard");
         }
         if(this.spell == 2)
         {
            castSpell("Thunderbolt");
         }
         if(this.spell == 3)
         {
            castSpell("Toxic");
         }
         if(this.spell == 4)
         {
            castSpell("Whirlwind");
         }
         if(this.spell == 5)
         {
            castSpell("Whirlpool");
         }
         if(this.spell == 6)
         {
            castSpell("Shine");
         }
         if(this.spell == 7)
         {
            castSpell("GaiaBloom");
         }
         if(this.spell >= 8)
         {
            castSpell("Spectrum");
         }
      }
      
      public function defend1() : *
      {
         this.dispelBadStatus();
         this.dispelBadBuffs();
         Skills.giveStatus(this,Status.LOVED,2);
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
         if(status[Status.SYPHON])
         {
            graphic.animate("defend");
         }
         else
         {
            graphic.animate("magic2");
         }
      }
   }
}

