package foes
{
   public class NormalNatalie extends Foe
   {
      public var defended:Boolean = false;
      
      public var textCount:int = 1;
      
      public function NormalNatalie(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var level:int = param1;
         var X:int = param2;
         var Y:int = param3;
         var scale:int = param4;
         super();
         setStrings();
         graphicType = "Natalie";
         graphicScale = 68;
         skin = 1;
         icon = 1163;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 2;
         cantFlee = true;
         HP = 487;
         attack = 4;
         magicAttack = 8;
         defence = 3.6;
         magicDefence = 4.4;
         accuracy = 4;
         evade = 4;
         hit2Anim = "hit1";
         hit2HP = 30;
         zombieMode = true;
         zombieLimit = true;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 0.5;
         elementalResistance[Element.DARK] = 0.5;
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
            elementalResistance[Element.FIRE] = 0.5;
            elementalResistance[Element.THUNDER] = 0.5;
            elementalResistance[Element.ICE] = 0.5;
         }
         EXP = 60;
         AP = 3;
         SP = 3;
         gold = 16;
         dropList = [[Items.cupcake,100],[Items.pretzel,50],[Items.coffee,25]];
         init(level,X,Y,scale);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
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
         if(!startTurn())
         {
            return;
         }
         var _loc1_:int = Math.random() * 2;
         if(Boolean(status[Status.SYPHON]) || Boolean(status[Status.BERSERK]) || Math.random() < 0.25)
         {
            _loc1_ = -1;
         }
         if(Battle.playersDeadOrLoved())
         {
            Medals.unlock(Medals.niceGuy);
            Text.speech(Text.natalie[8]);
            Skills.giveStatus(this,Status.SURRENDER,99);
            return;
         }
         if(this.textCount == 1)
         {
            if(Text.speech(Text.natalie[2]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2)
         {
            if(Text.speech(Text.natalie[3]))
            {
               ++this.textCount;
            }
         }
         if(_loc1_ == -1)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 0)
         {
            graphic.animate("magic4");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic5");
         }
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(25,Element.DARK,25);
      }
      
      public function magic4() : *
      {
         var _loc1_:int = Math.random() * 4;
         if(isHard)
         {
            _loc1_ = Math.random() * 3;
            if(_loc1_ == 0)
            {
               castSpell("Fireball");
            }
            if(_loc1_ == 1)
            {
               castSpell("Iceshard");
            }
            if(_loc1_ == 2)
            {
               castSpell("Thunderbolt");
            }
         }
         else
         {
            if(_loc1_ == 0)
            {
               castSpell("LuckyStar");
            }
            if(_loc1_ == 1)
            {
               castSpell("Fire1");
            }
            if(_loc1_ == 2)
            {
               castSpell("Ice");
            }
            if(_loc1_ == 3)
            {
               castSpell("Thunder");
            }
         }
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(1);
      }
      
      override public function counter2() : *
      {
         if(dead || Boolean(status[Status.SYPHON]))
         {
            return;
         }
         FoeAI.targetLastAttackerOf(this);
         graphic.animate("magic4");
      }
   }
}

