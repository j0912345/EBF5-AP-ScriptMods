package foes
{
   public class CatBomber extends Foe
   {
      public static var iconInfo:Array = [2,25];
      
      public var shieldDropped:Boolean = false;
      
      public var defended:Boolean = false;
      
      public function CatBomber(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Cat";
         graphicScale = 54;
         skin = 4;
         icon = 1108;
         catchRate = Catching.CAT_RATE;
         boxSize = 1;
         hit2HP = 50;
         HP = 60;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.4;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.8;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 1;
            elementalResistance[Element.THUNDER] = 1;
            elementalResistance[Element.BIO] = 1.3;
            elementalResistance[Element.WATER] = 1.3;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
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
         EXP = 10;
         AP = 1.2;
         SP = 1.2;
         gold = 9;
         dropList = [[Items.wool,50],[Items.banana,15],[Items.apple,10],[Items.coffee,5]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function dropShield() : *
      {
         this.shieldDropped = true;
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(!Battle.selectedTarget || Battle.foeCount() == 1)
         {
            Skills.giveStatus(this,Status.SURRENDER,99);
            graphic.animate("evade");
            return;
         }
         FoeAI.targetStrongestPlayer();
         var _loc1_:int = 1;
         if(this.shieldDropped)
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("special1");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("special2");
         }
      }
      
      public function special1() : *
      {
         Skills.basicFoeMagic(40,Element.BOMB,100,Status.STAGGER,1,isHard ? 50 : 10,150);
      }
      
      public function special2() : *
      {
         Skills.basicFoeMagic(70,Element.BOMB,100,Status.STAGGER,1,isHard ? 100 : 20,150);
      }
      
      public function special3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Battle.selectedSkill = new Object();
         Battle.selectedSkill.target = Target.ALL_ENEMY;
         Weather.weatherPlayer.sendHit(new DamageObject({
            "type":Stats.MAGIC_ATTACK,
            "damage":25,
            "element":Element.BOMB,
            "elementDegree":100,
            "accuracy":9999
         }));
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
         if(this.shieldDropped)
         {
            graphic.setXY();
            graphic.animate("special1");
         }
         else
         {
            graphic.setXY();
            graphic.animate("special2");
         }
      }
   }
}

