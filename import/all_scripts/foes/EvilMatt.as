package foes
{
   public class EvilMatt extends Foe
   {
      public var textCount:int = 1;
      
      public var summons:int = 0;
      
      internal var food:int = 1;
      
      public var spell:int = 0;
      
      public var multiattack:int = 0;
      
      public var counterSpell:Boolean = false;
      
      public function EvilMatt(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var level:int = param1;
         var X:int = param2;
         var Y:int = param3;
         var scale:int = param4;
         super();
         setStrings();
         graphicType = "Matt";
         graphicScale = 68;
         skin = 1;
         icon = 1151;
         catchRate = Catching.MEGA_BOSS_RATE;
         boxSize = 3;
         cantFlee = true;
         HP = 5501;
         attack = 5;
         magicAttack = 5;
         defence = 3.5;
         magicDefence = 3.5;
         accuracy = 5;
         evade = 3.8;
         hit2HP = 4;
         hit2Anim = "hit1";
         dieAnim = "die2";
         zombieMode = true;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 0;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = -1;
         elementalResistance[Element.BIO] = 1;
         elementalResistance[Element.BOMB] = 1.8;
         elementalResistance[Element.WATER] = 1.8;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.FIRE] = 0.5;
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.BIO] = 0.5;
            elementalResistance[Element.DARK] = 0.5;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 2;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.4;
         buffResistance[Stats.MAGIC_ATTACK] = 1.4;
         buffResistance[Stats.DEFENCE] = 1.8;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.8;
         buffResistance[Stats.ACCURACY] = 1.4;
         buffResistance[Stats.EVADE] = 1.4;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_HIGH;
         EXP = 1500;
         AP = 80;
         SP = 200;
         gold = 800;
         dropList = [[Items.turd,100],[Items.geode,100],[Items.steel,100],[Items.buckle,100],[Items.mythril,100]];
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
         if(this.textCount == 1)
         {
            if(Text.speech(Text.evilMatt[1]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2 && getHpPercent() < 90)
         {
            if(Text.speech(Text.evilMatt[2]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 70)
         {
            if(Text.speech(Text.evilMatt[3]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 50)
         {
            if(Text.speech(Text.evilMatt[4]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 35)
         {
            if(Text.speech(Text.evilMatt[5]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 6 && getHpPercent() < 20)
         {
            if(Text.speech(Text.evilMatt[5]))
            {
               ++this.textCount;
            }
         }
         var _loc1_:int = Math.random() * 2;
         if(getHpPercent() < 75)
         {
            _loc1_ = Math.random() * 5;
         }
         if(getHpPercent() < 40)
         {
            _loc1_ = Math.random() * 5 + 2;
         }
         if((_loc1_ == 4 || _loc1_ == 5) && Math.random() < 0.5)
         {
            if(FoeAI.getBestElement([Element.EARTH,Element.BOMB]) == Element.BOMB)
            {
               _loc1_ = 5;
            }
            else
            {
               _loc1_ = 4;
            }
         }
         if(Battle.foeCount() == 2)
         {
            ++this.summons;
         }
         if(Battle.foeCount() == 1)
         {
            this.summons += 2;
         }
         if(Boolean(this.food) && getHpPercent() < 50)
         {
            _loc1_ = 8;
         }
         else if(zombieLimit)
         {
            if(getHpPercent() > 33)
            {
               _loc1_ = 10;
            }
            else
            {
               _loc1_ = 9;
            }
         }
         else if(this.summons >= 7)
         {
            _loc1_ = 7;
            this.summons = 0;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
            this.multiattack = 1;
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("attack2");
            this.multiattack = 1;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special3");
            this.spell = 0;
            graphic.skin = 2;
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special3");
            this.spell = 1;
            graphic.skin = 6;
         }
         if(_loc1_ == 6)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 7)
         {
            graphic.animate("magic4");
         }
         if(_loc1_ == 8)
         {
            graphic.animate("itemeat");
            this.food = 0;
            Global.itemIcon = Items.bacon.icon;
         }
         if(_loc1_ == 9)
         {
            graphic.animate("attack6");
         }
         if(_loc1_ == 10)
         {
            graphic.animate("magic1");
         }
      }
      
      public function attack1() : *
      {
         if(this.multiattack == 0 && Battle.playerCount() == 1)
         {
            Battle.finalHit = false;
         }
         Skills.basicFoeAttack(110,Element.NONE,0,Status.DOOM,isHard ? 2 : 4,100);
      }
      
      public function bonusSpell() : *
      {
         if(this.multiattack == 0 && !this.counterSpell)
         {
            if(Math.random() < 0.5)
            {
               castSpell("Quake");
            }
            else
            {
               castSpell("Flood");
            }
         }
         this.counterSpell = false;
      }
      
      public function attack1b() : *
      {
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
         if(this.multiattack)
         {
            --this.multiattack;
            graphic.gotoAndPlay("attack1");
         }
         else
         {
            graphic.k();
         }
      }
      
      public function attack2() : *
      {
         if(this.multiattack == 0 && Battle.playerCount() == 1)
         {
            Battle.finalHit = false;
         }
         Skills.basicFoeAttack(140,Element.NONE,0,Status.WEAKEN,isHard ? 4 : 2,100,150);
      }
      
      public function attack2b() : *
      {
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
         if(this.multiattack)
         {
            --this.multiattack;
            graphic.gotoAndPlay("attack2");
         }
         else
         {
            graphic.k();
         }
      }
      
      public function magic2() : *
      {
         Text.speech(Text.evilMatt[12]);
         var _loc1_:int = Math.random() * 3;
         if(_loc1_ == 0)
         {
            castMultiSpell(Spells.surgingskewer);
         }
         if(_loc1_ == 1)
         {
            castMultiSpell(Spells.shreddingshrub);
         }
         if(_loc1_ == 2)
         {
            castMultiSpell(Spells.cataclysmiccut);
         }
      }
      
      public function special4() : *
      {
         Battle.finalHit = false;
         Battle.targetType = CENTER_ENEMY;
         Skills.basicFoeAttack(140,Element.NONE,33,Status.STAGGER,1,isHard ? 100 : 50);
      }
      
      public function special4b() : *
      {
         var _loc1_:int = Math.random() * 3;
         if(_loc1_ == 0)
         {
            castMultiSpell(Spells.earthedge);
         }
         if(_loc1_ == 1)
         {
            castMultiSpell(Spells.nettleknife);
         }
         if(_loc1_ == 2)
         {
            castMultiSpell(Spells.geysergush);
         }
      }
      
      public function attack3(param1:int) : *
      {
         if(param1 == 1)
         {
            Skills.basicFoeAttack(25,Element.NONE,0);
         }
         if(param1 == 2)
         {
            Skills.basicFoeAttack(150,Element.NONE,0,Status.DISPEL,1,isHard ? 100 : 0);
         }
      }
      
      public function eatItem() : *
      {
         this.buff(Stats.MAGIC_DEFENCE,50);
         this.buff(Stats.DEFENCE,50);
         this.buff(Stats.EVADE,50);
         this.getHeal({
            "damage":this.maxHP / 5,
            "randomness":10
         });
         this.food = 0;
      }
      
      public function special3() : *
      {
         Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
         if(this.spell == 0)
         {
            graphic.makeMagic(BoulderDirt1,graphic.x + 150,graphic.y - 800,false,2);
         }
         if(this.spell == 1)
         {
            graphic.makeMagic(BoulderBomb,graphic.x + 150,graphic.y - 800,false,6);
         }
      }
      
      public function boulderDirt() : *
      {
         Battle.targetType = Target.CENTER_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "element":Element.EARTH,
            "elementDegree":100,
            "damage":120,
            "statusEffect":Status.TIRED,
            "statusDegree":2,
            "statusChance":(isHard ? 50 : 25)
         });
      }
      
      public function bigBomb() : *
      {
         Battle.targetType = Target.ALL_ENEMY;
         Skills.basicFoeMagic(85,Element.BOMB,100,Status.STAGGER,1,isHard ? 33 : 0);
      }
      
      public function attack6() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":330 / 5,
            "critical":20,
            "element":Element.NONE,
            "accuracy":200
         });
         zombieLimit = false;
      }
      
      public function magic1() : *
      {
         zombieLimit = false;
         castSpell("Ragnarok");
      }
      
      public function magic4() : *
      {
         if(Options.altFoes)
         {
            spawnFoe([GolemAmethyst,GolemBone,GolemPearl,GolemTopaz],this.level + 1,0,0);
            spawnFoe([BitFire,BitHoly,BitIce,BitPoison,BitThunder,BitWater,BitWind],this.level + 1,0,2);
         }
         else
         {
            spawnFoe([SpriteRock,SpriteRock,WraithLeaf,CreepThorny],this.level + 1);
            spawnFoe([BoulderDirt,BoulderSandstone,BoulderCoral],this.level + 1);
            spawnFoe([SpriteRock,SpriteRock,WraithLeaf,CreepThorny],this.level + 1);
         }
      }
      
      override public function defend() : *
      {
         Skills.giveStatus(this,Status.DEFEND,1);
         castSpell("Protect");
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
         this.counterSpell = true;
         if(Math.random() < 0.5)
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

