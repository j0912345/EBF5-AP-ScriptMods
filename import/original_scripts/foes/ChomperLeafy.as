package foes
{
   public class ChomperLeafy extends Foe
   {
      public static var iconInfo:Array = [11,1];
      
      public function ChomperLeafy(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Plant";
         graphicScale = 83;
         skin = 1;
         icon = 1057;
         catchRate = Catching.PLANT_RATE;
         boxSize = 2;
         HP = 522;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 25;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.5;
         statusResistance[Status.FREEZE_CHILL] = 0.5;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.3;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.BIO] = -1;
            buffResistance[Stats.ATTACK] = 1.6;
            buffResistance[Stats.DEFENCE] = 1.6;
         }
         EXP = 80;
         AP = 8.5;
         SP = 8.5;
         gold = 48;
         dropList = [[Items.herb,100],[Items.wood,75],[Items.root,75],[Items.cactus,50],[Items.emerald,5]];
         init(param1,param2,param3,param4);
         if(isHard)
         {
            status[Status.POISON] = 3;
         }
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
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         var _loc1_:int = Math.random() * 5;
         if(_loc1_ == 4 && Battle.randomFoe().buffs[Stats.MAGIC_ATTACK] >= 110)
         {
            _loc1_ = Math.random() * 4;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget && (_loc1_ == 0 || _loc1_ == 1))
         {
            if(status[Status.SYPHON])
            {
               Skills.giveStatus(this,Status.SURRENDER,99);
               graphic.animate("evade");
               return;
            }
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special1");
         }
      }
      
      public function attack1() : *
      {
         drainage = 0;
         drainage = sendHit(new DamageObject({
            "damage":65,
            "element":Element.BIO,
            "elementDegree":25,
            "statusEffect":Status.POISON,
            "statusDegree":2,
            "statusChance":(isHard ? 66 : 33)
         }));
      }
      
      public function drain() : *
      {
         if(drainage > 0)
         {
            getHeal({
               "damage":maxHP * (isHard ? 0.2 : 0.1),
               "randomness":10
            });
         }
         else
         {
            graphic.k();
         }
         drainage = 0;
      }
      
      public function magic1() : *
      {
         if(Math.random() < 0.33 && Battle.mostDamagedFoe().getHpPercent() < 50 && level > 10)
         {
            Battle.selectedTarget = Battle.mostDamagedFoe();
            castSpell("Remedy");
         }
         else if(Math.random() < 0.5 && Boolean(Battle.selectedTarget))
         {
            castSpell("Toxic");
         }
         else
         {
            castSpell("RazorLeaf");
         }
      }
      
      public function magic2() : *
      {
         castSpell("RootSpike");
      }
      
      public function special1() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in Battle.foes)
         {
            _loc1_.buff(Stats.MAGIC_ATTACK,isHard ? 30 : 20);
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.33);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic2");
      }
   }
}

