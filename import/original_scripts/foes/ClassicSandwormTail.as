package foes
{
   public class ClassicSandwormTail extends Foe
   {
      public var a:String = "";
      
      public function ClassicSandwormTail(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicSandwormTailMC";
         graphicScale = 93;
         skin = 1;
         icon = 1192;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         cantFlee = true;
         HP = 303;
         hit2HP = 25;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0.5;
         statusResistance[Status.SYPHON_DISABLE] = 0.3;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0.5;
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
            elementalResistance[Element.BIO] = -1;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 17;
         AP = 7;
         SP = 7;
         gold = 0;
         dropList = [[Items.turd,100],[Items.turd,50],[Items.turd,25]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function nextAnimation() : *
      {
         if(this.a == "")
         {
            if(dead)
            {
               graphic.dead();
            }
            else
            {
               graphic.flee();
            }
         }
         else
         {
            graphic.gotoAndPlay(this.a);
            this.a = "";
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
         if(_loc1_ == 0)
         {
            graphic.setXY();
            this.a = "attack1";
            graphic.animate("flee");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            this.a = "attack2";
            graphic.animate("flee");
         }
         if(_loc1_ == 2)
         {
            graphic.setXY();
            this.a = "attack3";
            graphic.animate("flee");
         }
      }
      
      public function attack1() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":90 / 2,
            "element":Element.EARTH,
            "elementDegree":25
         });
      }
      
      public function attack2() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":60,
            "statusEffect":Status.STUN,
            "statusChance":(isHard ? 100 : 50),
            "statusDegree":2
         });
      }
      
      public function attack3() : *
      {
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":100 / 7,
            "accuracy":75,
            "element":Element.EARTH,
            "elementDegree":25
         });
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(1);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.setXY();
         this.a = "attack3";
         graphic.animate("flee");
      }
   }
}

