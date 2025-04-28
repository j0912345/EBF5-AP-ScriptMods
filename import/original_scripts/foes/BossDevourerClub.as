package foes
{
   public class BossDevourerClub extends Foe
   {
      public var headOff:Boolean = false;
      
      public function BossDevourerClub(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Tentacle";
         graphicScale = 100;
         skin = 2;
         icon = 1160;
         catchRate = Catching.UNCATCHABLE;
         HP = 656;
         attack = 8;
         magicAttack = 8;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.1;
         evade = 5.5;
         hit2HP = 15;
         hit3HP = 50;
         elementalResistance[Element.FIRE] = 1.8;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.5;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.5;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.2;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.2;
         buffResistance[Stats.EVADE] = 1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.EARTH] = 0;
            elementalResistance[Element.WATER] = -0.5;
            elementalResistance[Element.BOMB] = -0.5;
            statusResistance[Status.CURSE_BAD_LUCK] = 0;
         }
         onHit = this.onHitFunction;
         EXP = 90;
         AP = 6;
         SP = 6;
         gold = 20;
         dropList = [[Items.spike,25]];
         BossDevourer.finalBossBuff(this);
         init(param1,param2,param3,param4);
      }
      
      public function onHitFunction() : *
      {
         if(getHpPercent() < 33 && !this.headOff)
         {
            hit3HP = 5;
         }
         if(Options.counterAttacks)
         {
            readyCounterAttack(0.25);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = 0;
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]) || Math.random() < 0.2)
         {
            _loc1_ = 1;
         }
         if(skin == 3)
         {
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special1");
         }
      }
      
      public function loseHead() : *
      {
         if(this.headOff)
         {
            return;
         }
         if(graphic.skin != 3)
         {
            skin = 3;
            graphic.skin = 3;
            evade *= 1.1;
            this.headOff = true;
            hit3HP = 9999;
         }
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(120,Element.EARTH,30,Status.STAGGER,2,100,80);
      }
      
      public function attack2(param1:int) : *
      {
         if(Battle.players.length < param1 || Boolean(Battle.players[param1 - 1].dead))
         {
            return;
         }
         Battle.selectedTarget = Battle.players[param1 - 1];
         graphic.makeMagic(EffectWind);
         Skills.basicFoeAttack(50,Element.WIND,30,Status.STAGGER,1,isHard ? 0 : 0,80);
      }
      
      public function special1(param1:int) : *
      {
         if(Battle.players.length < param1 || Boolean(Battle.players[param1 - 1].dead))
         {
            return;
         }
         Battle.selectedTarget = Battle.players[param1 - 1];
         graphic.makeMagic(EffectDevourer,0,0);
         sendHit(new DamageObject({
            "type":Stats.MAGIC_ATTACK,
            "damage":30,
            "element":Element.BIO,
            "elementDegree":100,
            "statusEffect":(isHard ? Status.VIRUS : Status.POISON),
            "statusDegree":1,
            "statusChance":100
         }));
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         if(skin == 3)
         {
            graphic.animate("special1");
         }
         else
         {
            graphic.animate("attack3");
         }
      }
   }
}

