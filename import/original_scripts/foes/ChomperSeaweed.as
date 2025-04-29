package foes
{
   public class ChomperSeaweed extends Foe
   {
      public static var iconInfo:Array = [11,2];
      
      public function ChomperSeaweed(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Plant";
         graphicScale = 83;
         skin = 2;
         icon = 1059;
         catchRate = Catching.PLANT_RATE;
         boxSize = 2;
         HP = 544;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 25;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1.8;
         elementalResistance[Element.THUNDER] = -0.5;
         elementalResistance[Element.WATER] = -0.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.5;
         statusResistance[Status.FREEZE_CHILL] = 0.5;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0.3;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.HOLY] = 1;
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.BIO] = -1;
            buffResistance[Stats.ATTACK] = 1.6;
            buffResistance[Stats.DEFENCE] = 1.6;
         }
         EXP = 80;
         AP = 8.5;
         SP = 8.5;
         gold = 48;
         dropList = [[Items.seashell,50],[Items.root,50],[Items.ice,50],[Items.spike,20],[Items.moonpearl,3]];
         init(param1,param2,param3,param4);
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(isScared(TREES))
         {
            Skills.giveStatus(this,Status.BERSERK,1);
         }
         var _loc1_:int = Math.random() * 5;
         if(_loc1_ == 4 && Battle.randomPlayer(true).buffs[Stats.MAGIC_DEFENCE] <= 90)
         {
            _loc1_ = Math.random() * 4;
         }
         if(_loc1_ == 2 && Boolean(Battle.randomPlayer(true).status[Status.WET]))
         {
            _loc1_ = 3;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget && (_loc1_ == 0 || _loc1_ == 1 || _loc1_ == 3))
         {
            if(status[Status.SYPHON])
            {
               Skills.giveStatus(this,Status.SURRENDER,99);
               graphic.animate("evade");
               return;
            }
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic3");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special2");
         }
      }
      
      public function attack1() : *
      {
         drainage = 0;
         drainage = sendHit(new DamageObject({
            "damage":65,
            "element":Element.BIO,
            "elementDegree":25
         }));
      }
      
      public function drain() : *
      {
         if(drainage > 0)
         {
            getHeal({
               "damage":maxHP * (isHard ? 0.2 : 0.1),
               "randomness":10
            });
         }
         else
         {
            graphic.k();
         }
         drainage = 0;
      }
      
      public function magic1() : *
      {
         castSpell("Rain");
      }
      
      public function magic2() : *
      {
         castSpell("RootSpike2");
      }
      
      public function magic3() : *
      {
         FoeAI.targetRandomPlayerWeakTo(Element.THUNDER);
         if(Math.random() < 0.5)
         {
            castSpell("LaserBlade");
         }
         else
         {
            castRandomMultiSpell(Spells.thunder,3);
         }
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":150,
            "buffEffect":Stats.MAGIC_DEFENCE,
            "buffDegree":(isHard ? -30 : -20),
            "buffChance":100
         });
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
         graphic.animate("magic2");
      }
   }
}

