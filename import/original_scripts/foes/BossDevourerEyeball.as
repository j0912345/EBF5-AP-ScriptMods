package foes
{
   public class BossDevourerEyeball extends Foe
   {
      public var firstTurn:Boolean = true;
      
      public var sp:int = 0;
      
      public function BossDevourerEyeball(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Eyeball";
         graphicScale = 100;
         skin = 1;
         icon = 1158;
         catchRate = Catching.UNCATCHABLE;
         HP = 512;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.4;
         evade = 4.2;
         hit2HP = 25;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = 1.8;
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
         statusResistance[Status.DEATH] = 0.3;
         buffResistance[Stats.ATTACK] = 1.5;
         buffResistance[Stats.MAGIC_ATTACK] = 1.5;
         buffResistance[Stats.DEFENCE] = 1.5;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
         buffResistance[Stats.ACCURACY] = 1.5;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.EARTH] = 0;
            elementalResistance[Element.WATER] = -0.5;
            elementalResistance[Element.BOMB] = -0.5;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
            statusResistance[Status.WEAKENED_TIRED] = 0.5;
            statusResistance[Status.STUN] = 0;
         }
         EXP = 60;
         AP = 12;
         SP = 12;
         gold = 10;
         dropList = [[Items.claw,25]];
         BossDevourer.finalBossBuff(this);
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         var _loc2_:Foe = null;
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 3;
         if(Math.random() < 0.3 && FoeAI.getBestRecycleTarget() != null && !this.firstTurn)
         {
            Battle.selectedTarget = FoeAI.getBestRecycleTarget();
            _loc1_ = 2;
            this.sp = 1;
         }
         else
         {
            this.sp = 0;
         }
         for each(_loc2_ in [Battle.foes[2],Battle.foes[1],Battle.foes[3],Battle.foes[0],Battle.foes[4]])
         {
            if(!(!_loc2_ || _loc2_.dead))
            {
               if(_loc2_.buffs[Stats.ACCURACY] < 80 || _loc2_.buffs[Stats.DEFENCE] < 80 || _loc2_.buffs[Stats.ATTACK] < 80 || _loc2_.buffs[Stats.MAGIC_DEFENCE] < 80 || _loc2_.buffs[Stats.MAGIC_ATTACK] < 80)
               {
                  Battle.selectedTarget = _loc2_;
                  this.sp = 1;
                  _loc1_ = 3;
                  break;
               }
               if(Boolean(_loc2_.status[Status.STUN]) || Boolean(_loc2_.status[Status.SYPHON]) || Boolean(_loc2_.status[Status.FREEZE]) || _loc2_.getHpPercent() <= 25)
               {
                  Battle.selectedTarget = _loc2_;
                  this.sp = 0;
                  _loc1_ = 3;
                  break;
               }
            }
         }
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]) || Math.random() < 0.2)
         {
            _loc1_ = Math.random() * 2;
         }
         if(_loc1_ == 0)
         {
            Battle.selectedTarget = Battle.randomPlayer();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            Battle.selectedTarget = Battle.randomPlayer();
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
         }
         this.firstTurn = false;
      }
      
      public function skinDamage() : *
      {
         if(getHpPercent() < 50 && graphic.skin == 1)
         {
            ++graphic.skin;
            ++skin;
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(50,Element.NONE,100,Status.STUN,1,isHard ? 50 : 0);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(30,Element.NONE,100,Status.STUFFED,3,isHard ? 100 : 50);
      }
      
      public function magic2() : *
      {
         if(this.sp == 0)
         {
            castSpell("DevHeal");
         }
         if(this.sp == 1)
         {
            castSpell("DevDef");
         }
      }
      
      public function devDef() : *
      {
         Battle.selectedTarget.buff(Stats.ATTACK,30);
         Battle.selectedTarget.buff(Stats.MAGIC_ATTACK,30);
         Battle.selectedTarget.buff(Stats.DEFENCE,30);
         Battle.selectedTarget.buff(Stats.MAGIC_DEFENCE,30);
         Battle.selectedTarget.buff(Stats.ACCURACY,30);
      }
      
      public function devHeal() : *
      {
         Battle.selectedTarget.getHeal({
            "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 130,
            "randomness":20
         });
         Battle.selectedTarget.status[Status.STUN] = 0;
         Battle.selectedTarget.status[Status.SYPHON] = 0;
      }
      
      public function magic1() : *
      {
         if(this.sp == 0)
         {
            castSpell("DevWind");
         }
         if(this.sp == 1)
         {
            castSpell("Recycle2");
         }
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

