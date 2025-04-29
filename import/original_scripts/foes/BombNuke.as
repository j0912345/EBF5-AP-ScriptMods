package foes
{
   public class BombNuke extends Foe
   {
      public function BombNuke(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Nuke";
         graphicScale = 90;
         skin = 2;
         icon = 1053;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         HP = 589;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 2;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 1;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
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
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.DARK] = -1;
            statusResistance[Status.DEATH] = 0.5;
            statusResistance[Status.SYPHON_DISABLE] = 0.5;
         }
         if(Flags.battleEvent != Flags.LANCE_BATTLE_3 && Flags.battleEvent != Flags.BOSS_RUSH)
         {
            elementalResistance[Element.EARTH] = 1.8;
         }
         EXP = 52;
         AP = 4;
         SP = 4;
         gold = 44;
         dropList = [[Items.steel,50],[Items.powder,50],[Items.spring,40],[Items.plutonium,2]];
         init(param1,param2,param3,param4);
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3 || Flags.battleEvent == Flags.BOSS_RUSH)
         {
            graphic.point1.y += 125;
            graphic.point2.y += 50;
            graphic.point2.x -= 50;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = 0;
         if(graphic.countdown == 1)
         {
            if(status[Status.SYPHON])
            {
               _loc1_ = -1;
               Skills.giveStatus(this,Status.SURRENDER,99);
            }
            else
            {
               _loc1_ = 1;
            }
         }
         if(_loc1_ == -1)
         {
            graphic.animate("evade");
         }
         if(_loc1_ == 0)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special2");
         }
      }
      
      public function replaceMe() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3 || Flags.battleEvent == Flags.BOSS_RUSH)
         {
            Battle.counterStack.push(this);
         }
      }
      
      override public function counter2() : *
      {
         try
         {
            spawnFoe([TurretHarpoon],this.level,0,this.position);
         }
         catch(e:Error)
         {
         }
      }
      
      public function special1() : *
      {
         if(graphic.countdown > 1)
         {
            --graphic.countdown;
         }
      }
      
      public function special2() : *
      {
         graphic.makeMagic(Nuke2,0,0);
      }
   }
}

