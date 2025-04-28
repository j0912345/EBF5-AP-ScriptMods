package foes
{
   public class ClassicClayDark extends Foe
   {
      public function ClassicClayDark(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "ClassicClayMC";
         graphicScale = 86;
         skin = 3;
         icon = 1180;
         catchRate = Catching.CLAY_RATE;
         boxSize = 2;
         cantFlee = true;
         HP = 297;
         hit2HP = 40;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 4.1;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 2;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 1;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 0;
         statusResistance[Status.LIGHT_HEAVY] = 0;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 1;
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
            elementalResistance[Element.BOMB] = 1.3;
            elementalResistance[Element.WATER] = 0.5;
            statusResistance[Status.DEATH] = 0.5;
            statusResistance[Status.STUN] = 0.5;
         }
         EXP = 29;
         AP = 3.5;
         SP = 3.8;
         gold = 15;
         dropList = [[Items.brick,75],[Items.buckle,35],[Items.leather,25],[Items.opal,20],[Items.darkmatter,2]];
         if(Game.mode == Game.BATTLE && Flags.battleEvent == Flags.THREE_PLAYER_RUSH && Options.altFoes && !Foe.spawnedFoe)
         {
            Backgrounds.changeBackground(Backgrounds.EBF3_PROTECTOR,true);
         }
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
         Text.speech(Text.ebf3[15]);
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 25)
         {
            _loc1_ = 2;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.setXY();
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.setXY();
            graphic.animate("attack3");
         }
         if(_loc1_ == 2 || _loc1_ == 3)
         {
            graphic.animate("magic1");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(55,Element.DARK,25);
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack(75 / 3,Element.DARK,25,null,null,null,80);
      }
      
      public function magic1() : *
      {
         if(Math.random() < 0.5)
         {
            castSpell("ClassicQuake");
         }
         else
         {
            castSpell("ClassicHaunt");
         }
      }
      
      public function haunt(param1:int = 1) : *
      {
         if(param1 == 1)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":15,
               "element":Element.DARK,
               "elementDegree":100,
               "buffEffect":Stats.ATTACK,
               "buffChance":(isHard ? 50 : 33),
               "buffDegree":-30
            });
         }
         if(param1 == 2)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":15,
               "element":Element.DARK,
               "elementDegree":100,
               "buffEffect":Stats.DEFENCE,
               "buffChance":(isHard ? 50 : 33),
               "buffDegree":-30
            });
         }
         if(param1 == 3)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":15,
               "element":Element.DARK,
               "elementDegree":100,
               "buffEffect":Stats.MAGIC_ATTACK,
               "buffChance":(isHard ? 50 : 33),
               "buffDegree":-30
            });
         }
         if(param1 == 4)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":15,
               "element":Element.DARK,
               "elementDegree":100,
               "buffEffect":Stats.MAGIC_DEFENCE,
               "buffChance":(isHard ? 50 : 33),
               "buffDegree":-30
            });
         }
         if(param1 == 5)
         {
            Skills.customFoeAttack({
               "type":Stats.MAGIC_ATTACK,
               "damage":15,
               "element":Element.DARK,
               "elementDegree":100,
               "statusEffect":Status.DOOM,
               "statusChance":(isHard ? 100 : 50),
               "statusDegree":3
            });
         }
      }
      
      public function quake() : *
      {
         Skills.basicFoeAttack(70,Element.EARTH,75);
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
         graphic.animate("attack1");
      }
   }
}

