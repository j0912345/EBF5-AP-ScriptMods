package foes
{
   public class NormalNoLegs extends Foe
   {
      public var defended:Boolean = false;
      
      public var s:int = 1;
      
      public function NormalNoLegs(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var level:int = param1;
         var X:int = param2;
         var Y:int = param3;
         var scale:int = param4;
         super();
         setStrings();
         graphicType = "NoLegs";
         graphicScale = 68;
         skin = 1;
         icon = 1161;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 1;
         HP = 188;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 6.6;
         hit2Anim = "hit1";
         zombieMode = true;
         zombieLimit = true;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 0.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1;
         buffResistance[Stats.MAGIC_ATTACK] = 1;
         buffResistance[Stats.DEFENCE] = 1;
         buffResistance[Stats.MAGIC_DEFENCE] = 1;
         buffResistance[Stats.ACCURACY] = 1;
         buffResistance[Stats.EVADE] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 1;
            elementalResistance[Element.WATER] = 1.3;
         }
         EXP = 48;
         AP = 2;
         SP = 2;
         gold = 15;
         dropList = [[Items.wool,100],[Items.wool,75],[Items.wool,50]];
         init(level,X,Y,scale);
         if(graphic)
         {
            onDeath = function():*
            {
               Foes.scan(this,false);
            };
         }
      }
      
      public function takeTurn() : *
      {
         if(this.giveUp())
         {
            return;
         }
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 2;
         if(this.s % 3 == 0)
         {
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("defend2");
         }
         ++this.s;
      }
      
      public function giveUp() : *
      {
         if(status[Status.SURRENDER])
         {
            turnTaken = true;
            ++SaveData.foesSpared;
            graphic.animate("flee");
            getSP();
            Medals.unlock(Medals.catPerson);
            Text.speech(Text.nolegs[5]);
            return true;
         }
         return false;
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(26);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(36 / 4);
      }
      
      public function defend2() : *
      {
         Skills.giveStatus(this,Status.DEFEND,1);
         if(isHard)
         {
            Skills.giveStatus(this,Status.BRAVE,3);
         }
      }
   }
}

