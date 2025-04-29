package foes
{
   public class ClassicSlimeKing extends Foe
   {
      public function ClassicSlimeKing(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicKingSlimeMC";
         graphicScale = 100;
         skin = 1;
         icon = 1169;
         catchRate = Catching.KING_SLIME_RATE;
         boxSize = 2;
         cantFlee = true;
         HP = 1005;
         hit2HP = 8;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 400;
         evade = 0;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         statusResistance[Status.INVISIBLE] = 0;
         statusResistance[Status.ENCHANTED] = 0;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1.3;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         buffResistance[Stats.ACCURACY] = 1.3;
         buffResistance[Stats.EVADE] = 1.3;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 0.8;
            elementalResistance[Element.THUNDER] = 0.8;
            elementalResistance[Element.ICE] = 0.8;
            elementalResistance[Element.EARTH] = 0.8;
            elementalResistance[Element.BIO] = 0.8;
            elementalResistance[Element.BOMB] = 0.8;
            elementalResistance[Element.WATER] = 0.8;
            elementalResistance[Element.WIND] = 0.8;
            elementalResistance[Element.HOLY] = 0.8;
            elementalResistance[Element.DARK] = 0.8;
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 125;
         AP = 18;
         SP = 18;
         gold = 300;
         dropList = [[Items.wool,100],[Items.brick,100],[Items.powder,100],[Items.bomb,100],[Items.steel,100]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn(true))
         {
            return;
         }
         classicFoeStart();
         Text.speech(Text.ebf1[3]);
         Text.speech(Text.ebf1[4]);
         if(getHpPercent() < 60)
         {
            Text.speech(Text.ebf1[5]);
         }
         if(getHpPercent() < 40)
         {
            Text.speech(Text.ebf1[6]);
         }
         var _loc1_:int = Math.random() * 5;
         if(status[Status.BERSERK])
         {
            _loc1_ = 2 + Math.random() * 2;
         }
         if(Boolean(status[Status.SYPHON]) && _loc1_ == 2)
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special2");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(200);
      }
      
      public function attack2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeAttack(120,Element.EARTH,50);
         spawnFoe([ClassicSlime],this.level,null,null,true);
         spawnFoe([ClassicSlime],this.level,null,null,true);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeMagic(250,Element.BOMB,75);
      }
      
      public function special1() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(150,Element.BOMB,75);
      }
      
      public function special2() : *
      {
         Battle.selectedTarget = this;
         Battle.selectedTarget.getHeal({
            "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 50,
            "randomness":20
         });
         spawnFoe([ClassicSlime],this.level,0,-1,true);
         spawnFoe([ClassicSlime],this.level,0,-1,true);
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.5);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if(Boolean(status[Status.SYPHON]) || Math.random() < 0.5)
         {
            graphic.animate("attack2");
         }
         else
         {
            graphic.animate("attack3");
         }
      }
   }
}

