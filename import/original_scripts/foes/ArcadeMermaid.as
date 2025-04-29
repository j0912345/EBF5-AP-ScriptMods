package foes
{
   public class ArcadeMermaid extends Foe
   {
      public static var iconInfo:Array = [30,13];
      
      public var s:int = 1;
      
      public var c:int = 0;
      
      public var spell:int = 0;
      
      public var mirror:int = 0;
      
      public function ArcadeMermaid(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Arcade";
         graphicScale = 115;
         skin = 13;
         icon = 1207;
         catchRate = Catching.MERMAID_RATE;
         boxSize = 2;
         cantFlee = true;
         HP = 2878;
         attack = 3.6;
         magicAttack = 3.6;
         defence = 4;
         magicDefence = 4;
         accuracy = 5.5;
         evade = 4.5;
         hit2HP = 4;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.ICE] = -1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 1.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.WATER] = -1;
         elementalResistance[Element.WIND] = 0.5;
         elementalResistance[Element.HOLY] = -1;
         elementalResistance[Element.DARK] = 1.5;
         statusResistance[Status.BURN_SCORCH] = 0.3;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0.3;
         statusResistance[Status.SYPHON_DISABLE] = 0;
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
            elementalResistance[Element.DARK] = 1;
            elementalResistance[Element.WIND] = -1;
            elementalResistance[Element.FIRE] = 0.5;
            statusResistance[Status.POISON_VIRUS] = 0;
            statusResistance[Status.BURN_SCORCH] = 0;
            buffResistance[Stats.ACCURACY] = 1.8;
            buffResistance[Stats.EVADE] = 1.8;
         }
         EXP = 888;
         AP = 55;
         SP = 55;
         gold = 555;
         dropList = [[Items.ice,100],[Items.ice,100],[Items.ice,100],[Items.gold,100],[Items.grail,100]];
         init(param1,param2,param3,param4);
         if(Options.counterAttacks)
         {
            onHit = this.onHitFunction;
         }
         BossDevourer.finalBossBuff(this);
         BossDevourer.levelBoost(this,33);
         if(Game.mode == Game.BATTLE)
         {
            statusDisplay.x += 55;
            statusDisplay.y -= 15;
            graphic.point3.x += 50;
            graphic.point3.y -= 30;
            graphic.point4.x += 60;
         }
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Backgrounds.changeBackground(Backgrounds.MERMAID,true);
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         Text.speech(Text.mermaid[6]);
         if(getHpPercent() < 80)
         {
            Text.speech(Text.mermaid[7]);
         }
         if(getHpPercent() < 40)
         {
            Text.speech(Text.mermaid[9]);
         }
         if(getHpPercent() < 25)
         {
            Text.speech(Text.mermaid[10]);
         }
         if(getHpPercent() < 90)
         {
            Text.speech(Text.mermaid[11]);
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
         ++this.c;
         var _loc1_:int = Math.random() * 3;
         if(this.s)
         {
            if(Math.random() < 0.66)
            {
               _loc1_ = 4;
            }
            else
            {
               _loc1_ = 3;
            }
         }
         if(status[Status.BERSERK])
         {
            _loc1_ = 2;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("magic1");
            this.spell = 0;
         }
         if(_loc1_ == 1)
         {
            graphic.animate("magic1");
            this.spell = 1;
         }
         if(_loc1_ == 2)
         {
            graphic.animate("magic1");
            this.spell = 2;
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic3");
         }
      }
      
      public function magic1() : *
      {
         if(getHpPercent() < 90)
         {
            Text.speech(Text.mermaid[1]);
         }
         var _loc1_:int = 2;
         if(getHpPercent() < 70)
         {
            _loc1_++;
         }
         if(getHpPercent() < 40)
         {
            _loc1_++;
         }
         if(this.spell == 0)
         {
            castMultiSpell(Spells.arcadePoison);
         }
         if(this.spell == 1)
         {
            castRandomMultiSpell(Spells.arcadeFlood,_loc1_);
         }
         if(this.spell == 2)
         {
            castMultiSpell(Spells.arcadeFish);
         }
         if(this.spell == 3)
         {
            castSpell("MermaidFish");
         }
      }
      
      public function magic2() : *
      {
         if(getHpPercent() < 70)
         {
            Text.speech(Text.mermaid[3]);
         }
         Battle.selectedTarget = Battle.randomPlayer();
         graphic.setXY();
         graphic.makeMagic(MermaidSong,graphic.x - 30 - Math.random() * 25,graphic.y - 40 - Math.random() * 60);
      }
      
      public function mermaidsong() : *
      {
         Skills.customFoeAttack({
            "type":Stats.MAGIC_ATTACK,
            "damage":190 / 7,
            "element":Element.WIND,
            "elementDegree":25,
            "statusEffect":Status.SYPHON,
            "statusDegree":1,
            "statusChance":100,
            "buffEffect":Stats.STATS[int(Math.random() * 7)],
            "buffDegree":-25,
            "buffChance":(isHard ? 100 : 50)
         });
      }
      
      public function magic3() : *
      {
         if(getHpPercent() < 50)
         {
            Text.speech(Text.mermaid[2]);
         }
         if(getHpPercent() < 30)
         {
            Text.speech(Text.mermaid[4]);
         }
         if(getHpPercent() < 70)
         {
            Text.speech(Text.mermaid[8]);
         }
         if(this.mirror == 0)
         {
            if(isHard)
            {
               Skills.giveStatus(this,Status.LOVED,1);
            }
            buff(Stats.ATTACK,35,true);
            buff(Stats.DEFENCE,35,true);
            ++this.mirror;
         }
         else if(this.mirror == 1)
         {
            if(isHard)
            {
               Skills.giveStatus(this,Status.DEFEND,1);
            }
            buff(Stats.MAGIC_ATTACK,35,true);
            buff(Stats.MAGIC_DEFENCE,35,true);
            ++this.mirror;
         }
         else if(this.mirror == 2)
         {
            if(isHard)
            {
               Skills.giveStatus(this,Status.REGEN,1);
            }
            buff(Stats.DEFENCE,35,true);
            buff(Stats.MAGIC_DEFENCE,35,true);
            this.mirror = 0;
         }
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
         this.spell = 3;
         graphic.animate("magic1");
      }
   }
}

