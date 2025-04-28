package foes
{
   public class EvilNoLegs extends Foe
   {
      public static var starshower:Spell = new Spell({
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[70],
         "element":Element.NONE,
         "statusEffect":Status.CONFUSE,
         "statusChance":[33],
         "statusDegree":[1],
         "randomness":150
      });
      
      public static var starblast:Spell = new Spell({
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[180],
         "element":Element.NONE,
         "statusEffect":Status.DISPEL,
         "statusChance":[100],
         "statusDegree":[1]
      });
      
      public static var spiritbomb:Spell = new Spell({
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[850 / 15],
         "element":Element.NONE,
         "accuracy":200
      });
      
      public static var spiritbomb2:Spell = new Spell({
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_STANDBY,
         "damage":[300 / 15],
         "element":Element.NONE,
         "accuracy":100
      });
      
      public var textCount:int = 1;
      
      public var summons:int = 0;
      
      internal var food:int = 1;
      
      public var spell:int = 0;
      
      public var s:int = 1;
      
      public var r:int = 0;
      
      public var multiattack:int = 0;
      
      public var spiritBomb:Boolean = false;
      
      public function EvilNoLegs(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var level:int = param1;
         var X:int = param2;
         var Y:int = param3;
         var scale:int = param4;
         super();
         setStrings();
         graphicType = "NoLegs";
         graphicScale = 72;
         skin = 1;
         icon = 1155;
         catchRate = Catching.MEGA_BOSS_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 14000;
         attack = 5.5;
         magicAttack = 6;
         defence = 2.7;
         magicDefence = 2.7;
         accuracy = 9;
         evade = 9;
         hit2HP = 3;
         hit2Anim = "hit1";
         dieAnim = "die2";
         zombieMode = true;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 0.5;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0.5;
         statusResistance[Status.SYPHON_DISABLE] = 0.5;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         buffResistance[Stats.DEFENCE] = 1.4;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1.4;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_HIGH;
         if(Options.extraFoeResistance)
         {
            buffResistance[Stats.ATTACK] = 1.5;
            buffResistance[Stats.MAGIC_ATTACK] = 1.5;
            buffResistance[Stats.DEFENCE] = 1.5;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
            buffResistance[Stats.ACCURACY] = 1.5;
            buffResistance[Stats.EVADE] = 1.5;
         }
         EXP = 3000;
         AP = 120;
         SP = 250;
         gold = 1200;
         dropList = [[Items.wool,100],[Items.wool,100],[Items.wool,100],[Items.wool,100],[Items.wool,100]];
         init(level,X,Y,scale);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         if(graphic)
         {
            graphic.zombieMode = true;
         }
         zombieAggroMax = 35;
         if(graphic)
         {
            onDeath = function():*
            {
               var _loc1_:Player = null;
               Flags.battleEvent = Flags.NONE;
               for each(_loc1_ in Battle.players)
               {
                  if(_loc1_.statusDisplay)
                  {
                     _loc1_.statusDisplay.update(_loc1_);
                  }
               }
            };
         }
         BossDevourer.finalBossBuff(this,0,true);
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         Global.element = Element.NONE;
         if(this.spiritBomb)
         {
            this.special4b();
            this.spiritBomb = false;
            turnTaken = false;
            return;
         }
         if(this.s)
         {
            turnTaken = false;
            this.s = 0;
         }
         else
         {
            this.s = 1;
         }
         if(this.textCount == 1)
         {
            if(Text.speech(Text.evilNolegs[2]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2 && getHpPercent() < 90)
         {
            if(Text.speech(Text.evilNolegs[3]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 70)
         {
            if(Text.speech(Text.evilNolegs[4]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 50)
         {
            if(Text.speech(Text.evilNolegs[5]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 30)
         {
            if(Text.speech(Text.evilNolegs[6]))
            {
               ++this.textCount;
            }
         }
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 75)
         {
            _loc1_ = Math.random() * 4 + 4;
         }
         if(getHpPercent() < 50)
         {
            _loc1_ = Math.random() * 4 + 6;
         }
         ++this.r;
         if(Battle.foeCount() < 3)
         {
            this.summons += 1;
         }
         if(Battle.foeCount() < 2)
         {
            this.summons += 1;
         }
         if(this.summons >= 3)
         {
            spawnFoe(Options.altFoes ? [CatSkeleton] : [CatWarrior,CatWizard,CatBomber,CatNinja,CatSniper],this.level + (Options.altFoes ? 4 : 2));
            this.summons = 0;
         }
         if(this.s == 0 && this.r > 2 && Math.random() < 0.2)
         {
            _loc1_ = Math.random() * 2 + 10;
            this.r = 0;
         }
         if(_loc1_ == 5 && this.s == 0)
         {
            _loc1_ = 4;
         }
         if(_loc1_ == 7 && this.s == 0)
         {
            _loc1_ = 9;
         }
         if(_loc1_ == 9 && this.s == 1)
         {
            _loc1_ = 6;
         }
         if(status[Status.POISON] >= 7 || status[Status.VIRUS] >= 7)
         {
            _loc1_ = 11;
         }
         if(status[Status.WEAKEN] >= 6 || status[Status.TIRED] >= 6 || status[Status.CURSE] >= 6 || status[Status.SYPHON] >= 1)
         {
            _loc1_ = 10;
         }
         if(zombieLimit)
         {
            _loc1_ = 12;
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
            graphic.animate("attack4");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic4");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack5");
            this.multiattack = 4;
         }
         if(_loc1_ == 5)
         {
            graphic.animate("equip");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 7)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 8)
         {
            graphic.animate("attack5");
            this.multiattack = 7;
         }
         if(_loc1_ == 9)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 10)
         {
            Global.itemIcon = Items.bacon.icon;
            graphic.animate("itemeat");
         }
         if(_loc1_ == 11)
         {
            graphic.animate("defend");
         }
         if(_loc1_ == 12)
         {
            graphic.animate("special4");
            turnTaken = true;
         }
      }
      
      public function eatItem() : *
      {
         this.buff(Stats.ATTACK,isHard ? 100 : 80);
         this.buff(Stats.MAGIC_ATTACK,isHard ? 100 : 80);
         status[Status.WEAKEN] = 0;
         status[Status.TIRED] = 0;
         status[Status.CURSE] = 0;
         status[Status.SYPHON] = 0;
         this.getHeal({
            "damage":this.maxHP / 40,
            "randomness":10
         });
      }
      
      public function defend2() : *
      {
         this.buff(Stats.DEFENCE,isHard ? 100 : 80);
         this.buff(Stats.MAGIC_DEFENCE,isHard ? 100 : 80);
         status[Status.POISON] = 0;
         status[Status.VIRUS] = 0;
         if(isHard)
         {
            Skills.giveStatus(this,Status.BLESS,2);
         }
         Skills.giveStatus(this,Status.DEFEND,1);
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(180,Element.NONE,0,Status.STAGGER,1,isHard ? 100 : 33);
      }
      
      public function attack2() : *
      {
         Skills.basicFoeAttack(220 / 4,Element.NONE,0,Status.WEAKEN,3,isHard ? 100 : 33);
      }
      
      public function attack4() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(80,Element.NONE,0);
      }
      
      public function magic4() : *
      {
         castSpell("StarShower");
         starshower.statusChance = [isHard ? 66 : 33];
      }
      
      public function attack3() : *
      {
         Skills.basicFoeAttack((getHpPercent() < 50 ? 720 : 440) / 11,Element.NONE,0,Status.WEAKEN,3,isHard ? 100 : 33);
      }
      
      public function attack5() : *
      {
         Skills.basicFoeAttack(120,Element.NONE,0);
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
         if(Battle.playerCount() == 0)
         {
            graphic.cuts = 0;
         }
      }
      
      public function attack5b() : *
      {
         graphic.cuts = this.multiattack - 1;
      }
      
      public function special3() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(360 / 4,Element.NONE,0);
      }
      
      public function equip1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(60,Element.NONE,0,Status.STUN,5,isHard ? 100 : 33);
      }
      
      public function equip2() : *
      {
         if(!isHard)
         {
            return;
         }
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(60,Element.NONE,0,Status.CONFUSE,2,isHard ? 100 : 33);
      }
      
      public function special4() : *
      {
         this.spiritBomb = true;
         zombieLimit = false;
      }
      
      public function special4b() : *
      {
         castSpell("SpiritBomb");
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
         if(Math.random() < 0.66)
         {
            graphic.animate("attack1");
         }
         else
         {
            graphic.animate("attack2");
         }
      }
   }
}

