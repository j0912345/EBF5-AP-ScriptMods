package foes
{
   public class ChomperMutant extends Foe
   {
      public static var iconInfo:Array = [11,4];
      
      public function ChomperMutant(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Plant";
         graphicScale = 83;
         skin = 4;
         icon = 1060;
         catchRate = Catching.PLANT_RATE;
         boxSize = 2;
         HP = 588;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 3.8;
         hit2HP = 25;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.ICE] = 0.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.WATER] = 0.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = -1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = 0.5;
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
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.WIND] = 0.5;
            elementalResistance[Element.BOMB] = 0.5;
            elementalResistance[Element.DARK] = -1;
            buffResistance[Stats.ATTACK] = 1.6;
            buffResistance[Stats.DEFENCE] = 1.6;
         }
         EXP = 80;
         AP = 8.5;
         SP = 8.5;
         gold = 48;
         dropList = [[Items.root,100],[Items.spike,30],[Items.virus,50],[Items.scales,10],[Items.darkmatter,3]];
         init(param1,param2,param3,param4);
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 5;
         if(_loc1_ == 4 && Battle.randomPlayer(true).buffs[Stats.DEFENCE] <= 90)
         {
            _loc1_ = Math.random() * 4;
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 1;
         }
         if(status[Status.SYPHON])
         {
            _loc1_ = Math.random() * 2;
         }
         if(!Battle.selectedTarget && (_loc1_ == 0 || _loc1_ == 1))
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
            graphic.animate("magic1");
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
            "elementDegree":50
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
         if(isHard && (Math.random() < 0.33 || !FoeAI.getPlayersWeakTo(Element.BIO,false,true).length))
         {
            castSpell("DarkFlare");
         }
         else if(Math.random() < 0.5)
         {
            castSpell("AcidRain");
         }
         else
         {
            castRandomMultiSpell(Spells.acid,2);
         }
      }
      
      public function magic2() : *
      {
         if(Math.random() < 0.5)
         {
            castSpell("Tentacles");
         }
         else
         {
            castSpell("RootSpike4");
         }
      }
      
      public function special2() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":150,
            "buffEffect":Stats.DEFENCE,
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

