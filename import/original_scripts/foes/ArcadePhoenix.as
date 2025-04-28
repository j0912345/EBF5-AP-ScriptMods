package foes
{
   public class ArcadePhoenix extends Foe
   {
      public static var iconInfo:Array = [30,12];
      
      public var s:Boolean = false;
      
      internal var fcount:int = 0;
      
      internal var fcount2:int = 0;
      
      public function ArcadePhoenix(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 92;
         skin = 12;
         icon = 1206;
         catchRate = Catching.PHOENIX_RATE;
         boxSize = 1;
         hit2HP = 15;
         HP = 534;
         attack = 4;
         magicAttack = 4;
         defence = 3;
         magicDefence = 6;
         accuracy = 4;
         evade = 5;
         if(Options.difficulty == Options.EPIC || Options.difficulty == Options.HARD)
         {
            evade = 6;
         }
         elementalResistance[Element.FIRE] = -1;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.EARTH] = 0;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 1.5;
         elementalResistance[Element.HOLY] = 1.5;
         elementalResistance[Element.DARK] = -1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0.2;
         statusResistance[Status.FREEZE_CHILL] = 0.2;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0.2;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.6;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.6;
         buffResistance[Stats.EVADE] = 1.2;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WIND] = 1;
            elementalResistance[Element.HOLY] = 1;
            elementalResistance[Element.THUNDER] = -1;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.2;
            statusResistance[Status.WEAKENED_TIRED] = 0.2;
            buffResistance[Stats.EVADE] = 1.4;
            buffResistance[Stats.ATTACK] = 1.4;
         }
         EXP = 75;
         AP = 10;
         SP = 10;
         gold = 100;
         dropList = [[Items.feather,75],[Items.cactus,75],[Items.amber,75],[Items.magma,75],[Items.claw,25]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         status[Status.AUTOLIFE] = 1;
         if(Game.mode == Game.BATTLE)
         {
            statusDisplay.y += 35;
            statusDisplay.x += 20;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,23);
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.PHOENIX,true);
         }
      }
      
      public function takeTurn() : *
      {
         var _loc1_:int = 0;
         if(!startTurn())
         {
            return;
         }
         if(getHpPercent() < 30)
         {
            Text.speech(Text.phoenix[7]);
         }
         if(getHpPercent() < 30)
         {
            Text.speech(Text.phoenix[9]);
         }
         if(!this.s)
         {
            _loc1_ = Math.random() * 3;
            if(!Battle.selectedTarget)
            {
               _loc1_ = 3;
            }
            if(!Options.altFoes && Battle.foeCount() < 3 || Options.altFoes && Battle.foeCount() < 2)
            {
               _loc1_ = 3;
            }
            if(status[Status.SYPHON])
            {
               _loc1_ = 0;
            }
            if(status[Status.BERSERK])
            {
               _loc1_ = 0;
            }
            if(!Battle.selectedTarget && _loc1_ == 0)
            {
               graphic.animate("flee");
               return;
            }
            if(_loc1_ == 0)
            {
               graphic.setXY();
               graphic.animate("attack1");
            }
            if(_loc1_ == 1)
            {
               graphic.animate("special6");
            }
            if(_loc1_ == 2)
            {
               graphic.animate("magic2");
            }
            if(_loc1_ == 3)
            {
               graphic.animate("magic1");
            }
            turnTaken = false;
            this.s = true;
         }
         else
         {
            if(!status[Status.SYPHON] && !status[Status.BERSERK] && !status[Status.AUTOLIFE])
            {
               Skills.giveStatus(this,Status.AUTOLIFE,1);
            }
            this.s = false;
         }
      }
      
      public function autorevive() : *
      {
         status[Status.AUTOLIFE] = 0;
         graphic.gotoAndPlay("intro6");
      }
      
      public function selfBurn() : *
      {
         dead = false;
         realHP = maxHP;
         Skills.giveStatus(this,Status.BURN,3);
         Battle.menu.updateFoeBars();
      }
      
      public function attack1() : *
      {
         Skills.basicFoeAttack(50 / 2);
      }
      
      public function magic1() : *
      {
         Skills.giveStatus(this,Status.REGEN,3);
         if(!Options.altFoes && Battle.foeCount() < 3 || Options.altFoes && Battle.foeCount() < 2)
         {
            Text.speech(Text.phoenix[3]);
            Text.speech(Text.phoenix[4]);
            Text.speech(Text.phoenix[5]);
         }
         spawnFoe([ArcadePhoenix],this.level,0,-1,true);
      }
      
      public function magic2() : *
      {
         Battle.selectedTarget = Battle.randomPlayer();
         Skills.user = this;
         graphic.setXY();
         graphic.makeMagic(BirdSong,graphic.x - 30 - Math.random() * 25,graphic.y - 40 - Math.random() * 60);
      }
      
      public function birdsong() : *
      {
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":80 / 6,
            "element":Element.DARK,
            "elementDegree":25,
            "statusEffect":(isHard ? Status.DEATH : Status.DOOM),
            "statusDegree":3,
            "statusChance":25,
            "buffEffect":Stats.DEFENCE,
            "buffDegree":-10,
            "buffChance":(isHard ? 100 : 50)
         });
      }
      
      public function special6() : *
      {
         Battle.selectedTarget = Battle.extraRandomPlayer();
         Skills.user = this;
         graphic.setXY();
         graphic.makeMagic(BirdBall,graphic.x - 90,graphic.y - 70);
      }
      
      public function fireball() : *
      {
         ++this.fcount;
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":35 / 3,
            "element":Element.FIRE,
            "elementDegree":25,
            "statusEffect":(isHard ? Status.SCORCHED : Status.BURN),
            "statusDegree":2,
            "statusChance":25,
            "buffEffect":Stats.MAGIC_DEFENCE,
            "buffDegree":-10,
            "buffChance":(isHard ? 50 : 25)
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
         graphic.animate("attack1");
      }
   }
}

