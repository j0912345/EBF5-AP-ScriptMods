package foes
{
   public class FishSteam extends Foe
   {
      public static var iconInfo:Array = [4,23];
      
      public function FishSteam(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Fish";
         graphicScale = 78;
         skin = 1;
         icon = 1129;
         catchRate = Catching.FISH_RATE;
         boxSize = 1;
         HP = 135;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.3;
         hit2HP = 40;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
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
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.BIO] = 0;
            elementalResistance[Element.HOLY] = -1;
            buffResistance[Stats.EVADE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
         }
         EXP = 26;
         AP = 2.8;
         SP = 2.8;
         gold = 16;
         dropList = [[Items.spring,25],[Items.gear,50],[Items.pipe,75],[Items.leather,25]];
         init(param1,param2,param3,param4);
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 4;
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            quickFlee();
            return;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 3;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.WIND);
            graphic.animate("attack4");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(30);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(40 / 3,Element.WIND,25,Status.CONFUSE,2,isHard ? 33 : 0);
      }
      
      public function attack4() : *
      {
         Skills.basicFoeMagic(30,Element.WIND,100);
      }
      
      public function attack2() : *
      {
         graphic.makeMagic(EffectWind,0,0,true);
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeAttack(18,Element.WIND,100,Status.LIGHT,2,isHard ? 66 : 33,120);
      }
      
      public function counter1() : *
      {
         if(Boolean(status[Status.STUN]) || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         Battle.counterStack.push(this);
      }
      
      override public function counter2() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         graphic.makeMagic(FishMissile);
      }
   }
}

