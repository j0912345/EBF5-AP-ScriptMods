package foes
{
   public class BossTankHover extends Foe
   {
      public static var iconInfo:Array = [16,0];
      
      public var s:int = 0;
      
      public function BossTankHover(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Hovertank";
         graphicScale = 90;
         skin = 1;
         icon = 1052;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 3;
         cantFlee = true;
         HP = 3400;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 2.5;
         hit2HP = 6;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1.8;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.5;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 1;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 0;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.2;
         buffResistance[Stats.MAGIC_ATTACK] = 1.2;
         buffResistance[Stats.DEFENCE] = 1.2;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.2;
         buffResistance[Stats.ACCURACY] = 1.2;
         buffResistance[Stats.EVADE] = 1.2;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.WATER] = 0;
            elementalResistance[Element.FIRE] = 0;
            elementalResistance[Element.EARTH] = 0.5;
            elementalResistance[Element.DARK] = -1;
            buffResistance[Stats.ATTACK] = 1.4;
            buffResistance[Stats.MAGIC_ATTACK] = 1.4;
            buffResistance[Stats.DEFENCE] = 1.4;
            buffResistance[Stats.MAGIC_DEFENCE] = 1.4;
            buffResistance[Stats.ACCURACY] = 1.4;
            buffResistance[Stats.EVADE] = 1.4;
            statusResistance[Status.WEAKENED_TIRED] = 0.5;
            statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         }
         EXP = 170;
         AP = 26;
         SP = 26;
         gold = 310;
         dropList = [[Items.kevlar,100],[Items.kevlar,100],[Items.powder,100],[Items.rune,100],[Items.plutonium,100]];
         init(param1,param2,param3,param4);
         if(MapData.area == MapData.TEMPLE_OF_TRIALS)
         {
            attack *= 1.5;
            magicAttack *= 1.5;
         }
         if(Options.surpriseAttack)
         {
            turnTaken = true;
         }
      }
      
      public function takeTurn() : *
      {
         if(!startTurn())
         {
            return;
         }
         if(!Battle.foes[1] || Boolean(Battle.foes[1].dead))
         {
            ++this.s;
         }
         if(this.s >= 3)
         {
            if(getHpPercent() > 70)
            {
               spawnFoe(Options.altFoes ? [BombNuke] : [TurretLaser],this.level,0,1);
            }
            else if(getHpPercent() > 40)
            {
               spawnFoe(Options.altFoes ? [BombNuke] : [TurretHarpoon],this.level,0,1);
            }
            else
            {
               spawnFoe([BombNuke],this.level,0,1);
            }
            this.s = 0;
         }
         var _loc1_:int = Math.random() * 2;
         if(getHpPercent() < 75 && Math.random() < 0.33 && Battle.randomPlayer().buffs[Stats.DEFENCE] >= 100)
         {
            _loc1_ = 2;
         }
         if(getHpPercent() < 40 && buffs[Stats.EVADE] <= 120)
         {
            _loc1_ = 4;
         }
         if(!Battle.foes[1] || Battle.foes[1].dead && Math.random() < 0.2 || Battle.foeCount() == 1 && Math.random() < 0.5)
         {
            _loc1_ = 3;
         }
         if(Boolean(status[Status.BERSERK]) || Boolean(status[Status.SYPHON]))
         {
            _loc1_ = Math.random() * 2;
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("attack3");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special1");
         }
      }
      
      public function skinDamage() : *
      {
         if(getHpPercent() < 75 && graphic.skin == 1)
         {
            ++graphic.skin;
            ++skin;
         }
         if(getHpPercent() < 40 && graphic.skin == 2)
         {
            ++graphic.skin;
            ++skin;
         }
      }
      
      public function hideTurrets() : *
      {
         if(Boolean(Battle.foes[1]) && !Battle.foes[1].dead)
         {
            (Battle.foes[1] as Foe).quickKill();
         }
      }
      
      public function attack1() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_1)
         {
            attack *= 100;
            accuracy *= 100;
         }
         Skills.user = this;
         graphic.makeMagic(EffectSmash,0,0,true);
         Battle.targetType = ALL_ENEMY;
         Global.counterEnabled = false;
         Skills.basicFoeAttack(70,Element.NONE,0,Status.STAGGER,1,isHard ? 25 : 0);
         Global.counterEnabled = true;
      }
      
      public function attack11() : *
      {
         graphic.makeMagic(BackupHit,0,0);
         Battle.targetType = Target.ALL_STANDBY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":70
         });
      }
      
      public function attack2() : *
      {
         graphic.makeMagic(EffectSmash,0,0,true);
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(110,Element.NONE,0,Status.BURN,2,isHard ? 50 : 0);
      }
      
      public function attack3() : *
      {
         if(Math.random() < 0.25)
         {
            Battle.selectedTarget = Battle.randomPlayer(true);
         }
         graphic.makeMagic(EffectSmash2,0,0);
         Skills.basicFoeAttack(200 / 15,Element.BOMB,100);
      }
      
      public function special1() : *
      {
         buff(Stats.ACCURACY,isHard ? 100 : 80);
         buff(Stats.EVADE,isHard ? 100 : 80);
      }
      
      public function special2() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "damage":22 / 2,
            "type":Stats.MAGIC_ATTACK,
            "element":Element.WIND,
            "elementDegree":100,
            "critical":0,
            "accuracy":200,
            "buffEffect":Stats.DEFENCE,
            "buffChance":100,
            "buffDegree":(isHard ? -30 : -20)
         });
      }
   }
}

