package foes
{
   public class BombShockwave extends Foe
   {
      public function BombShockwave(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Nuke";
         graphicScale = 90;
         skin = 7;
         icon = 1047;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         HP = 446;
         attack = 4;
         magicAttack = 4;
         defence = 3.5;
         magicDefence = 3.5;
         accuracy = 4;
         evade = 2;
         elementalResistance[Element.FIRE] = 0;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.8;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0.3;
         statusResistance[Status.FREEZE_CHILL] = 0.3;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0.3;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.3;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1.3;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         buffResistance[Stats.ACCURACY] = 1.5;
         buffResistance[Stats.EVADE] = 1.5;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.BOMB] = -1;
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.THUNDER] = 1;
            statusResistance[Status.DEATH] = 0;
            statusResistance[Status.SYPHON_DISABLE] = 0;
         }
         EXP = 52;
         AP = 4;
         SP = 4;
         gold = 44;
         dropList = [[Items.steel,100],[Items.pipe,30],[Items.powder,30],[Items.spring,50],[Items.gear,75]];
         init(param1,param2,param3,param4);
         if(Flags.battleEvent == Flags.GIGA_TANK_BATTLE || Flags.battleEvent == Flags.SUPER_BOSS_RUSH)
         {
            if(position == 1)
            {
               graphic.point1.y += 202;
               graphic.point2.y += 22 + 22;
               graphic.point2.x -= 45 + 40;
            }
            if(position == 2)
            {
               graphic.point1.y += 152;
               graphic.point2.y += 55 + 22;
               graphic.point2.x -= 55 + 40;
            }
            if(position == 3)
            {
               graphic.point1.y += 66;
               graphic.point2.y += 22 + 22;
               graphic.point2.x -= 45 + 40;
            }
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
         Battle.selectedTarget = Battle.players[2];
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer();
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
         if(Flags.battleEvent == Flags.GIGA_TANK_BATTLE || Flags.battleEvent == Flags.SUPER_BOSS_RUSH)
         {
            Battle.counterStack.push(this);
         }
      }
      
      override public function counter2() : *
      {
         try
         {
            spawnFoe([TurretHarpoon2,BombAcid,BombEarthquake,BombShockwave],this.level,0,this.position);
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
      
      public function special5() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(250 / 3,Element.WIND,100,Status.DISPEL,1,isHard ? 100 : 50,300);
      }
   }
}

