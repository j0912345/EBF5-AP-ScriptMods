package foes
{
   public class EvilLance extends Foe
   {
      public var textCount:int = 1;
      
      public var summons:int = 0;
      
      internal var food:int = 1;
      
      public var spell:int = 0;
      
      public var multiattack:int = 0;
      
      public function EvilLance(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var level:int = param1;
         var X:int = param2;
         var Y:int = param3;
         var scale:int = param4;
         super();
         setStrings();
         graphicType = "Lance";
         graphicScale = 68;
         skin = 1;
         icon = 1153;
         catchRate = Catching.MEGA_BOSS_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 4822;
         attack = 5;
         magicAttack = 5;
         defence = 12;
         magicDefence = 3.5;
         accuracy = 6.5;
         evade = 3.7;
         hit2HP = 4;
         hit2Anim = "hit1";
         dieAnim = "die2";
         zombieMode = true;
         elementalResistance[Element.FIRE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.EARTH] = 1.5;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.8;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         buffResistance[Stats.DEFENCE] = 1.8;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
         buffResistance[Stats.ACCURACY] = 1.8;
         buffResistance[Stats.EVADE] = 1.4;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_HIGH;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.THUNDER] = -1;
            elementalResistance[Element.FIRE] = -1;
            elementalResistance[Element.HOLY] = 1;
         }
         EXP = 1500;
         AP = 80;
         SP = 200;
         gold = 800;
         dropList = [[Items.powder,100],[Items.gear,100],[Items.spring,100],[Items.gamechild,100],[Items.titanium,100]];
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
         var _loc2_:String = null;
         if(!startTurn())
         {
            return;
         }
         Global.element = Element.NONE;
         if(this.textCount == 1)
         {
            if(Text.speech(Text.evilLance[1]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2 && getHpPercent() < 90)
         {
            if(Text.speech(Text.evilLance[2]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 70)
         {
            if(Text.speech(Text.evilLance[3]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 50)
         {
            if(Text.speech(Text.evilLance[4]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 30)
         {
            if(Text.speech(Text.evilLance[5]))
            {
               ++this.textCount;
            }
         }
         var _loc1_:int = Math.random() * 4;
         if(getHpPercent() < 75)
         {
            _loc1_ = Math.random() * 6 + 1;
         }
         if(getHpPercent() < 50)
         {
            _loc1_ = Math.random() * 7 + 3;
         }
         if(Battle.foeCount() == 2)
         {
            ++this.summons;
         }
         if(Battle.foeCount() == 1)
         {
            this.summons += 2;
         }
         if(zombieLimit)
         {
            _loc1_ = Math.random() * 2 + 11;
         }
         else if(this.summons >= 7)
         {
            _loc1_ = 10;
            this.summons = 0;
         }
         if(_loc1_ == 1 || _loc1_ == 2)
         {
            _loc2_ = FoeAI.getBestElement([Element.FIRE,Element.THUNDER]);
            if(_loc2_ == Element.THUNDER)
            {
               _loc1_ = 1;
            }
            if(_loc2_ == Element.FIRE)
            {
               _loc1_ = 2;
            }
         }
         if(_loc1_ >= 11)
         {
            _loc2_ = FoeAI.getBestElement([Element.FIRE,Element.THUNDER]);
            if(_loc2_ == Element.THUNDER)
            {
               _loc1_ = 11;
            }
            if(_loc2_ == Element.FIRE)
            {
               _loc1_ = 12;
            }
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("shoot1");
            this.spell = 0;
         }
         if(_loc1_ == 2)
         {
            graphic.animate("shoot1");
            this.spell = 1;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("special2");
            Global.element = Element.DARK;
         }
         if(_loc1_ == 4)
         {
            graphic.animate("attack4");
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special3");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("magic2");
            this.spell = 0;
         }
         if(_loc1_ == 7)
         {
            graphic.animate("attack5");
         }
         if(_loc1_ == 8)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 9)
         {
            graphic.animate("magic2");
            this.spell = 1;
         }
         if(_loc1_ == 10)
         {
            graphic.animate("equip");
         }
         if(_loc1_ == 11)
         {
            graphic.animate("magic1");
            this.spell = 0;
         }
         if(_loc1_ == 12)
         {
            graphic.animate("magic1");
            this.spell = 1;
         }
      }
      
      public function equip1() : *
      {
         this.buff(Stats.ACCURACY,50);
         this.buff(Stats.EVADE,50);
         this.buff(Stats.ATTACK,50);
         this.buff(Stats.MAGIC_ATTACK,50);
         spawnFoe(Options.altFoes ? [BombShockwave,BombEarthquake,BombAcid,TurretHarpoon2,TurretHarpoon2] : [TurretCannon,TurretHarpoon,TurretLaser],this.level + 1);
         spawnFoe(Options.altFoes ? [BombShockwave,BombEarthquake,BombAcid,TurretHarpoon2,TurretHarpoon2] : [TurretCannon,TurretHarpoon,TurretLaser],this.level + 1);
      }
      
      public function magic1() : *
      {
         if(this.spell == 0)
         {
            graphic.makeMagic(Ion,0,0);
         }
         if(this.spell == 1)
         {
            graphic.makeMagic(Nuke2,0,0);
         }
         zombieLimit = false;
      }
      
      public function magic2() : *
      {
         if(Math.random() < 0.4)
         {
            castSpell("PoisonGas");
            return;
         }
         if(this.spell == 0)
         {
            castMultiSpell(Spells.bigbullet);
         }
         if(this.spell == 1)
         {
            castMultiSpell(Spells.teradrill);
         }
      }
      
      public function hyperbeam() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.DARK,
            "elementDegree":50,
            "damage":170 / 3,
            "statusEffect":Status.CURSE,
            "statusDegree":(isHard ? 5 : 3),
            "statusChance":100,
            "accuracy":200
         });
      }
      
      public function special3() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.BOMB,
            "elementDegree":50,
            "damage":150 / 6,
            "statusEffect":Status.STUN,
            "statusDegree":1,
            "statusChance":(isHard ? 100 : 50),
            "accuracy":100
         });
      }
      
      public function special4() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "statusOnly":true,
            "accuracy":300,
            "statusEffect":Status.CONFUSE,
            "statusChance":(isHard ? 100 : 50),
            "statusDegree":2
         });
      }
      
      public function special4b() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.WIND,
            "elementDegree":100,
            "damage":100,
            "accuracy":300,
            "statusEffect":Status.DISABLE,
            "statusChance":(isHard ? 100 : 0),
            "statusDegree":3
         });
      }
      
      public function attack4() : *
      {
         Skills.basicFoeAttack(120,Element.BOMB,30,Status.DEATH,1,isHard ? 100 : 50,100);
      }
      
      public function attack4b() : *
      {
         Text.speech(Text.evilLance[10]);
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
      }
      
      public function attack5() : *
      {
         Text.speech(Text.evilLance[10]);
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.basicFoeAttack(600 / 6,Element.BOMB,30,Status.DEATH,1,30);
      }
      
      public function shoot1() : *
      {
         if(this.spell == 0)
         {
            castSpell("PlasmaCross");
         }
         if(this.spell == 1)
         {
            castSpell("BulletHell");
         }
      }
      
      public function deathExplosion() : *
      {
         Battle.currentFoe = this;
         Skills.user = this;
         graphic.makeMagic(DeathExplosion,0,0);
      }
      
      public function deathExplode() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "element":Element.BOMB,
            "elementDegree":50,
            "damage":600 / 6,
            "accuracy":300
         });
      }
      
      public function onHitFunction() : *
      {
         readyCounterAttack(0.5);
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

