package foes
{
   public class GolemBone extends Foe
   {
      public static var iconInfo:Array = [32,1];
      
      public function GolemBone(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Golem";
         graphicScale = 94;
         skin = 4;
         icon = 1218;
         catchRate = Catching.GOLEM_RATE;
         boxSize = 3;
         if(MapData.area == MapData.BATTLE_ARENA)
         {
            catchRate = 15;
         }
         HP = 535;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 5;
         accuracy = 4;
         evade = 3.2;
         hit2HP = 20;
         elementalResistance[Element.FIRE] = 0.5;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 0.5;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = 0.5;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
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
            elementalResistance[Element.WATER] = 1;
            elementalResistance[Element.HOLY] = 1;
            elementalResistance[Element.THUNDER] = 0;
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.BIO] = 0;
            buffResistance[Stats.ATTACK] = 1.6;
            buffResistance[Stats.MAGIC_ATTACK] = 1.6;
         }
         EXP = 100;
         AP = 12;
         SP = 12;
         gold = 75;
         dropList = [[Items.claw,60],[Items.buckle,50],[Items.silk,40],[Items.spike,30],[Items.emerald,20]];
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
         var _loc1_:int = Math.random() * 3;
         if(getHpPercent() < 80)
         {
            _loc1_ = Math.random() * 5;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 3 + 2;
         }
         if(!Battle.selectedTarget)
         {
            _loc1_ = 1 + Math.random() * 2;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = Math.random() * 2;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack6");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special5");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
         }
      }
      
      public function attack6(param1:int) : *
      {
         if(param1 == 1)
         {
            Battle.finalHit = false;
            Skills.basicFoeAttack(75 / 4);
         }
         if(param1 == 2)
         {
            Battle.finalHit = true;
            Skills.basicFoeAttack(75 / 2,null,null,Status.STAGGER,1,isHard ? 66 : 33,125);
         }
      }
      
      public function special5() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.WIND,
            "elementDegree":50,
            "damage":18,
            "statusEffect":Status.SHROUD,
            "statusDegree":(isHard ? 3 : 2),
            "statusChance":100,
            "accuracy":200
         });
      }
      
      public function magic1(param1:int) : *
      {
         if(param1 == 2)
         {
            return;
         }
         if(Math.random() < 0.5)
         {
            if(Battle.playerCount() == 1)
            {
               castSpell("BonePillar");
            }
            else
            {
               castRandomMultiSpell(Spells.bonePillar,2);
            }
         }
         else if(Battle.playerCount() == 1)
         {
            castSpell("SandDune");
         }
         else
         {
            castRandomMultiSpell(Spells.sanddune,2);
         }
      }
      
      public function attack4() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.groundPound(35);
      }
      
      public function spawnOres() : *
      {
         spawnFoe([IdolStone],this.level);
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

