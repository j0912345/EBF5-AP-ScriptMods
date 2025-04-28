package foes
{
   public class FallenBurned extends Foe
   {
      public static var iconInfo:Array = [4,16];
      
      public function FallenBurned(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Fallen";
         graphicScale = 80;
         skin = 5;
         icon = 1020;
         catchRate = Catching.FALLEN_RATE;
         boxSize = 2;
         HP = 249;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4;
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = -0.5;
         elementalResistance[Element.HOLY] = 1.5;
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
            elementalResistance[Element.HOLY] = 0;
            elementalResistance[Element.BIO] = 0;
            elementalResistance[Element.ICE] = 0;
            buffResistance[Stats.ATTACK] = 1.3;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.ACCURACY] = 1.3;
         }
         EXP = 35;
         AP = 3.8;
         SP = 3.8;
         gold = 28;
         dropList = [[Items.pipe,75],[Items.gear,50],[Items.buckle,33],[Items.silk,20]];
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
            if(getHpPercent() < 50)
            {
               Skills.giveStatus(this,Status.SURRENDER,99);
               quickFlee();
               return;
            }
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         var _loc1_:int = Math.random() * 5;
         if(!FoeAI.getPlayersWeakTo(Element.FIRE,false,true).length && _loc1_ == 1)
         {
            _loc1_ = 3;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 2;
         }
         if(status[Status.CHARGE])
         {
            _loc1_ = 5;
         }
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]))
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget && (Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK])))
         {
            quickFlee();
            return;
         }
         if(_loc1_ == 0)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.FIRE);
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            FoeAI.targetRandomPlayerWeakTo(Element.FIRE);
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 3 || _loc1_ == 4)
         {
            graphic.animate("magic4");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special2");
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(42 / 2,Element.FIRE,100,Status.DRY,2,isHard ? 50 : 0);
      }
      
      public function throwWep() : *
      {
         graphic.makeMagic(FallenSword,graphic.x,graphic.y,false,skin);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(37 / 5,Element.FIRE,100);
      }
      
      public function special3() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.BURN,2);
         }
         Skills.giveStatus(this,Status.BRAVE,3);
         Skills.giveStatus(this,Status.CHARGE,3);
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         status[Status.CHARGE] = 0;
         Skills.basicFoeAttack(40,Element.FIRE,100,Status.BURN,2,50);
      }
      
      public function specialEffect() : *
      {
         if(isHard)
         {
            Skills.giveStatus(this,Status.BURN,2);
         }
      }
      
      public function magic4() : *
      {
         if(Math.random() < 0.25 && Boolean(FoeAI.getPlayersWeakTo(Element.BOMB,false,true).length))
         {
            castSpell("Bullet");
         }
         else if(Math.random() < 0.33 && FoeAI.getPlayersWeakTo(Element.FIRE,false,true).length > 1)
         {
            castSpell("FlameBurst");
         }
         else if(Math.random() < 0.5)
         {
            castSpell("SlowDown");
         }
         else
         {
            Battle.selectedTarget = Battle.randomFoe();
            castSpell("SpeedUp");
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
         graphic.animate("attack2");
      }
   }
}

