package foes
{
   public class ArcadeTotom extends Foe
   {
      public static var iconInfo:Array = [30,14];
      
      public function ArcadeTotom(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 105;
         skin = 14;
         icon = 1209;
         catchRate = Catching.TOTOM_RATE;
         boxSize = 1;
         HP = 2042;
         attack = 2;
         magicAttack = 2;
         defence = 4.4;
         magicDefence = 3.7;
         accuracy = 4;
         evade = 4;
         hit2HP = 5;
         hit3HP = 15;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = -0.5;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = -0.5;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.6;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.6;
         buffResistance[Stats.EVADE] = 1.2;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 1.3;
            elementalResistance[Element.ICE] = 0.5;
            elementalResistance[Element.WATER] = 0.5;
            statusResistance[Status.WEAKENED_TIRED] = 0;
            statusResistance[Status.CURSE_BAD_LUCK] = 0;
            statusResistance[Status.DISPEL] = 0;
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.ATTACK] = 1.4;
         }
         EXP = 290;
         AP = 25;
         SP = 35;
         gold = 200;
         dropList = [[Items.wood,75],[Items.wood,75],[Items.wood,75],[Items.amber,75],[Items.opal,25]];
         init(param1,param2,param3,param4);
         onHit = this.onHitFunction;
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,22);
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.TOTOM,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(getHpPercent() < 80 && skin == 14)
         {
            hit3HP = 1;
         }
         else if(getHpPercent() < 40 && skin == 15)
         {
            hit3HP = 1;
         }
         else
         {
            hit3HP = 15;
         }
         if(getHpPercent() < 60)
         {
            Text.speech(Text.totom[7]);
         }
         var _loc1_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc1_ = 2;
         }
         if(skin == 15)
         {
            _loc1_ = 1 + Math.random() * 4;
         }
         if(skin == 16)
         {
            _loc1_ = 1 + Math.random() * 6;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 1;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ >= 2)
         {
            graphic.animate("magic2");
         }
      }
      
      public function loseBody() : *
      {
         if(skin != 16)
         {
            ++skin;
            ++graphic.skin;
         }
         hit3HP = 9999;
         if(skin == 15)
         {
            Text.speech(Text.totom[1]);
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.THUNDER] = 1;
            evade *= 1.25;
         }
         if(skin == 16)
         {
            Text.speech(Text.totom[2]);
            elementalResistance[Element.WIND] = 0.5;
            elementalResistance[Element.THUNDER] = 0.5;
            evade *= 1.2;
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(180 / 4,null,null,Status.SYPHON,2,isHard ? 100 : 33,90);
      }
      
      public function magic2() : *
      {
         var _loc1_:int = Math.random() * 3;
         var _loc2_:int = 1;
         if(skin == 15)
         {
            _loc2_ = 2;
         }
         if(skin == 16)
         {
            _loc2_ = 3;
         }
         if(_loc1_ == 0)
         {
            castRandomMultiSpell(Spells.arcadePoison,_loc2_);
         }
         if(_loc1_ == 1)
         {
            castRandomMultiSpell(Spells.arcadeLogs,_loc2_);
         }
         if(_loc1_ == 2)
         {
            castRandomMultiSpell(Spells.arcadeNettle,_loc2_);
         }
      }
      
      public function magic1() : *
      {
         Battle.selectedTarget = Battle.mostDamagedFoe();
         var _loc1_:int = 1;
         castSpell("TotomHeal");
      }
      
      public function totomHeal() : *
      {
         Battle.selectedTarget.getHeal({
            "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 130,
            "randomness":20
         });
         Skills.giveStatus(Battle.selectedTarget,Status.BLESS,isHard ? 4 : 2);
         Text.speech(Text.totom[3]);
      }
      
      public function onHitFunction() : *
      {
         if(getHpPercent() < 30 || Options.counterAttacks && getHpPercent() < 60)
         {
            readyCounterAttack(1);
         }
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         graphic.animate("magic1");
         Text.speech(Text.totom[9]);
         Text.speech(Text.totom[8]);
      }
   }
}

