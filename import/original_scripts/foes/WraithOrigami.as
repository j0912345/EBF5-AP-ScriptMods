package foes
{
   public class WraithOrigami extends Foe
   {
      public static var iconInfo:Array = [6,17];
      
      private var spell:String = "";
      
      public function WraithOrigami(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Wraith";
         graphicScale = 68;
         skin = 6;
         icon = 1213;
         catchRate = Catching.WRAITH_RATE;
         boxSize = 2;
         HP = 180;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.4;
         evade = 5;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 1.8;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.8;
         statusResistance[Status.BURN_SCORCH] = 2;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 2;
         statusResistance[Status.LIGHT_HEAVY] = 2;
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
            elementalResistance[Element.FIRE] = 0.5;
            elementalResistance[Element.ICE] = 0.5;
            elementalResistance[Element.THUNDER] = 0.5;
            elementalResistance[Element.WATER] = 1.5;
            elementalResistance[Element.WIND] = 1.5;
            statusResistance[Status.SYPHON] = 0;
            buffResistance[Stats.ATTACK] = 1.3;
            buffResistance[Stats.MAGIC_ATTACK] = 1.3;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         }
         EXP = 31;
         AP = 3.5;
         SP = 3.5;
         gold = 25;
         dropList = [[Items.leather,25],[Items.buckle,25],[Items.silk,10],[Items.satin,5],[Items.gold,5]];
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
         var _loc1_:int = Math.random() * 4;
         if(_loc1_ == 1 && Boolean(FoeAI.getBestDispelPlayer()))
         {
            Battle.selectedTarget = FoeAI.getBestDispelPlayer();
         }
         if(Battle.selectedTarget && Battle.selectedTarget.status[Status.ENCHANTED] && _loc1_ == 3)
         {
            _loc1_ = 0;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 2;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            if(Math.random() < 0.5)
            {
               graphic.animate("attack2");
            }
            else
            {
               graphic.animate("attack1");
            }
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
         }
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(38,null,null,Status.SYPHON,2,isHard ? 66 : 33);
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(44,Element.FIRE,100,Status.DRY,2,isHard ? 100 : 50,120);
      }
      
      public function magic2() : *
      {
         castSpell("DarkSwoop");
      }
      
      public function magic1() : *
      {
         castSpell("PaperStars");
      }
      
      public function special3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":24
         });
         graphic.makeMagic(EffectSlap,0,0,true);
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

