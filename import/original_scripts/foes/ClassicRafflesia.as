package foes
{
   public class ClassicRafflesia extends Foe
   {
      public var s:int = 0;
      
      public var h:int = 0;
      
      public var blood:int = 85;
      
      public function ClassicRafflesia(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicRafflesiaMC";
         graphicScale = 88;
         skin = 1;
         icon = 1186;
         catchRate = Catching.RAFFLESIA_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 2856;
         hit2HP = 6;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.3;
         evade = 3.8;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.5;
         buffResistance[Stats.MAGIC_ATTACK] = 1.5;
         buffResistance[Stats.DEFENCE] = 1.5;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
         buffResistance[Stats.ACCURACY] = 1.5;
         buffResistance[Stats.EVADE] = 1.5;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_HIGH;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = 1;
            statusResistance[Status.DRY_WET] = 0.5;
            statusResistance[Status.WEAKENED_TIRED] = 0.5;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.8;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.8;
         }
         EXP = 400;
         AP = 31;
         SP = 31;
         gold = 440;
         dropList = [[Items.flower,100],[Items.flower,100],[Items.flower,100],[Items.flower,100],[Items.starfragment,100]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function spawnFlower() : *
      {
         if(Options.altFoes)
         {
            spawnFoe([ClassicWaspBlack,ClassicWaspRed],this.level,0,-1);
         }
         spawnFoe([ClassicFlowerBlue,ClassicFlowerRed,ClassicFlowerWhite,ClassicFlowerYellow],this.level);
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         if(getHpPercent() < 90)
         {
            Text.speech(Text.ebf4[6]);
         }
         if(getHpPercent() < 70)
         {
            Text.speech(Text.ebf4[7]);
         }
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 70)
         {
            _loc1_ = Math.random() * 6 + 1;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 6 + 2;
         }
         if(this.h == 0 && getHpPercent() < 60 || this.h == 1 && getHpPercent() < 30)
         {
            if(status[Status.BERSERK])
            {
               ++this.h;
            }
            else
            {
               _loc1_ = 8;
            }
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 7;
         }
         if(Battle.foeCount() < 5)
         {
            ++this.s;
            if(this.s >= 1)
            {
               this.s = 0;
               this.spawnFlower();
               if(getHpPercent() < 50)
               {
                  this.spawnFlower();
               }
            }
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
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 4)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("special5");
         }
         if(_loc1_ == 7)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 8)
         {
            graphic.animate("special3");
            ++this.h;
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(140 / 2,Element.BIO,25,Status.TIRED,3,isHard ? 100 : 0);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(180 / 3,Element.BIO,25,Status.TIRED,3,isHard ? 100 : 0);
      }
      
      public function special1() : *
      {
         Battle.selectedTarget = FoeAI.targetStrongestPlayer();
         castSpell("ClassicRazorLeaf");
      }
      
      public function razorleaf(param1:int = 1) : *
      {
         Skills.basicFoeAttack(210 / 2,Element.BIO,25,null,null,null,85);
      }
      
      public function special5() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(110 / 3);
      }
      
      public function special2() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "statusOnly":true,
            "buffEffect":Stats.ATTACK,
            "buffDegree":-50,
            "buffChance":100,
            "statusEffect":Status.DOOM,
            "statusDegree":(isHard ? 3 : 5),
            "statusChance":100
         });
      }
      
      public function special4() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":60,
            "element":Element.BIO,
            "elementDegree":100,
            "buffEffect":Stats.HP,
            "buffDegree":(isHard ? -30 : -20),
            "buffChance":100,
            "statusEffect":Status.POISON,
            "statusDegree":6,
            "statusChance":100
         });
      }
      
      public function magic1() : *
      {
         if(getHpPercent() > 50)
         {
            castSpell("ClassicPlantSpikes");
         }
         else
         {
            Battle.targetType = Target.ALL_ENEMY;
            castSpell("ClassicPlantSpikes2");
         }
      }
      
      public function plantspikes() : *
      {
         Skills.basicFoeAttack(210 / 3,Element.BIO,25);
      }
      
      public function plantspikes2() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(140 / 3,Element.BIO,25);
      }
      
      public function special3() : *
      {
         var _loc1_:Foe = null;
         this.getHeal({"damage":this.maxHP / 15});
         this.dispelBadBuffs();
         this.dispelBadStatus();
         this.getHeal({
            "damage":this.maxHP * this.hit2HP / 300,
            "randomness":20
         });
         for each(_loc1_ in Battle.foes)
         {
            _loc1_.buff(Stats.ATTACK,25,true);
            _loc1_.buff(Stats.MAGIC_ATTACK,25,true);
            Skills.giveStatus(_loc1_,Status.REGEN,2);
         }
      }
      
      public function onHitFunction() : *
      {
         if(getHpPercent() < 15)
         {
            readyCounterAttack(1);
         }
         else
         {
            readyCounterAttack(0.25);
         }
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if(Math.random() < 0.66)
         {
            graphic.animate("special1");
         }
         else
         {
            graphic.animate("special5");
         }
      }
   }
}

