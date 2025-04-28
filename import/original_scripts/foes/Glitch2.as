package foes
{
   public class Glitch2 extends Foe
   {
      public var glitchDamage:int;
      
      public var glitchAcc:int;
      
      public var noType:Boolean = true;
      
      public function Glitch2(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Glitch";
         graphicScale = 45;
         skin = 2 + Math.random() * 2;
         icon = 1148;
         catchRate = Catching.GLITCH_RATE;
         boxSize = 1;
         HP = 101 * 2;
         attack = 4;
         magicAttack = 4;
         defence = 1;
         magicDefence = 1;
         accuracy = 400000;
         evade = 8;
         if(skin == 2)
         {
            defence *= -1;
         }
         if(skin == 3)
         {
            magicDefence *= -1;
         }
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.ICE] = -1;
         elementalResistance[Element.THUNDER] = -1;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = -1;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = -1;
         elementalResistance[Element.BOMB] = -1;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 0;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 0;
         buffResistance[Stats.MAGIC_ATTACK] = 0;
         buffResistance[Stats.DEFENCE] = 0;
         buffResistance[Stats.MAGIC_DEFENCE] = 0;
         buffResistance[Stats.ACCURACY] = 0;
         buffResistance[Stats.EVADE] = 0;
         if(Options.extraFoeResistance)
         {
            buffResistance[Stats.ATTACK] = 2;
            buffResistance[Stats.MAGIC_ATTACK] = 2;
            buffResistance[Stats.DEFENCE] = 2;
            buffResistance[Stats.MAGIC_DEFENCE] = 2;
            buffResistance[Stats.ACCURACY] = 2;
            buffResistance[Stats.EVADE] = 2;
            buffResistance[Stats.HP] = 2;
            catchRate *= 2;
         }
         EXP = 88;
         AP = 3.5;
         SP = 3.5;
         gold = 25;
         dropList = [[Items.apple,2]];
         init(param1,param2,param3,param4);
         this.glitchDamage = int.MAX_VALUE;
         this.glitchAcc = 99999;
         if(Options.twoPlayerMode)
         {
            this.glitchDamage = 120;
            this.glitchAcc = 120;
            this.noType = false;
         }
         if(Options.onePlayerMode)
         {
            this.glitchDamage = 90;
            this.glitchAcc = 100;
            this.noType = false;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 2;
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack4");
         }
      }
      
      public function attack1() : *
      {
         var _loc1_:String = Element.ELEMENTS[Math.floor(Math.random() * Element.ELEMENTS.length)];
         Skills.customFoeAttack({
            "type":(this.noType ? Stats.NONE : Stats.ATTACK),
            "damage":this.glitchDamage,
            "element":_loc1_,
            "elementDegree":100,
            "randomness":0,
            "critical":0,
            "accuracy":this.glitchAcc
         });
      }
      
      public function attack4() : *
      {
         Skills.customFoeAttack({
            "type":(this.noType ? Stats.NONE : Stats.MAGIC_ATTACK),
            "damage":this.glitchDamage,
            "element":Element.NONE,
            "randomness":0,
            "critical":0,
            "accuracy":this.glitchAcc
         });
      }
   }
}

