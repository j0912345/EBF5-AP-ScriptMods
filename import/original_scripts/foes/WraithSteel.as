package foes
{
   public class WraithSteel extends Foe
   {
      public static var iconInfo:Array = [6,8];
      
      public function WraithSteel(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Wraith";
         graphicScale = 68;
         skin = 1;
         icon = 1071;
         catchRate = Catching.WRAITH_RATE;
         boxSize = 2;
         HP = 185;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 1.5;
            elementalResistance[Element.HOLY] = 1.5;
            elementalResistance[Element.BOMB] = -1;
            buffResistance[Stats.ATTACK] = 1.3;
            buffResistance[Stats.MAGIC_ATTACK] = 1.3;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         }
         EXP = 31;
         AP = 3.5;
         SP = 3.5;
         gold = 25;
         dropList = [[Items.steel,75],[Items.iron,20],[Items.powder,20],[Items.bomb,33],[Items.shuriken,33]];
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
         if(isScared(GHOSTS))
         {
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            quickFlee();
            return;
         }
         var _loc1_:int = Math.random() * 5;
         FoeAI.targetStrongestPlayer();
         if(status[Status.BERSERK])
         {
            _loc1_ = 4;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 1;
         }
         if(!Battle.selectedTarget && Boolean(status[Status.SYPHON]))
         {
            _loc1_ = 5;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("evade");
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(38,Element.DARK,25);
      }
      
      public function attack5() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":28 / 2,
            "element":Element.NONE
         });
      }
      
      public function special1() : *
      {
         Skills.basicFoeAttack(70 / 3,Element.BOMB,100,Status.STAGGER,1,isHard ? 66 : 33);
      }
      
      public function magic1() : *
      {
         castSpell("Sawblade");
      }
      
      public function magic2() : *
      {
         castSpell("DarkSwoop");
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
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic1");
      }
   }
}

