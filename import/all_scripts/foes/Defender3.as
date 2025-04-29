package foes
{
   public class Defender3 extends Foe
   {
      public static var iconInfo:Array = [8,3];
      
      public function Defender3(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Defender";
         graphicScale = 84;
         skin = 4;
         icon = 1219;
         catchRate = Catching.DEFENDER_RATE;
         boxSize = 3;
         HP = 900;
         attack = 4;
         magicAttack = 6;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.1;
         hit2HP = 33;
         if(MapData.area == MapData.BATTLE_ARENA)
         {
            catchRate = 12;
         }
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.EARTH] = 0.5;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.2;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.2;
         buffResistance[Stats.EVADE] = 1.2;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BOMB] = 1;
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.ICE] = 0;
            elementalResistance[Element.BIO] = 0;
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.EARTH] = 0;
            statusResistance[Status.BURN_SCORCH] = 0;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.3;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         }
         EXP = 210;
         AP = 23;
         SP = 23;
         gold = 220;
         dropList = [[Items.steel,100],[Items.cpu,50],[Items.kevlar,50],[Items.rune,25],[Items.plutonium,5]];
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
         var _loc1_:int = Math.random() * 5;
         if(!Battle.selectedTarget && _loc1_ == 0)
         {
            _loc1_ = 4;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
         }
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(120,Element.DARK,50,Status.DISABLE,3,isHard ? 100 : 0,150,110);
      }
      
      public function special3() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeAttack(60 / 3,Element.DARK,50,Status.DISABLE,2,isHard ? 100 : 0,150,110);
      }
      
      public function special4(param1:int) : *
      {
         if(Battle.players.length < param1 || Boolean(Battle.players[param1 - 1].dead))
         {
            return;
         }
         Battle.selectedTarget = Battle.players[param1 - 1];
         graphic.makeMagic(EffectWind2);
         Skills.basicFoeMagic(70,Element.NONE,null,Status.DRY,3,isHard ? 100 : 50);
      }
      
      public function attack3() : *
      {
         if(Math.random() < 0.25)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
         Skills.basicFoeAttack(200 / 18,Element.BOMB,50);
      }
      
      public function magic1() : *
      {
         var _loc1_:int = Math.random() * 3;
         if(_loc1_ == 2 && Battle.randomPlayer().buffs[Stats.ACCURACY] < 90)
         {
            _loc1_ = 1;
         }
         if(_loc1_ == 0)
         {
            castSpell("EnergyBlast");
         }
         if(_loc1_ == 1)
         {
            castSpell("EnergyBlast");
         }
         if(_loc1_ == 2)
         {
            castSpell("Flare");
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.25);
      }
      
      override public function counter2() : *
      {
         if(dead)
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("attack3");
      }
   }
}

