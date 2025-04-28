package foes
{
   public class BossTankGiga extends Foe
   {
      public static var iconInfo:Array = [16,0];
      
      public var textCount:int = 1;
      
      public var s:int = 1;
      
      public var r:int = 0;
      
      public function BossTankGiga(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Hovertank";
         graphicScale = 90;
         skin = 5;
         icon = 1044;
         catchRate = Catching.UNCATCHABLE;
         boxSize = 3;
         cantFlee = true;
         HP = 8000;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4;
         evade = 2.5;
         hit2HP = 6;
         elementalResistance[Element.FIRE] = 0;
         elementalResistance[Element.ICE] = 1.5;
         elementalResistance[Element.THUNDER] = 1.5;
         elementalResistance[Element.WATER] = 1.5;
         elementalResistance[Element.WIND] = 0;
         elementalResistance[Element.EARTH] = 1.8;
         elementalResistance[Element.BIO] = 0;
         elementalResistance[Element.BOMB] = 1.8;
         elementalResistance[Element.HOLY] = 1;
         elementalResistance[Element.DARK] = 1;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.ICE] = 1;
            elementalResistance[Element.THUNDER] = 1;
            elementalResistance[Element.WATER] = 1;
         }
         statusResistance[Status.BURN_SCORCH] = 0;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 0;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 1;
         statusResistance[Status.STAGGER_CONFUSE] = 0;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 1;
         statusResistance[Status.DISPEL] = 1;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.3;
         buffResistance[Stats.MAGIC_ATTACK] = 1.3;
         buffResistance[Stats.DEFENCE] = 1.3;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.3;
         buffResistance[Stats.ACCURACY] = 1.8;
         buffResistance[Stats.EVADE] = 1.8;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         EXP = 270;
         AP = 44;
         SP = 44;
         gold = 420;
         dropList = [[Items.steel,100],[Items.pipe,100],[Items.powder,100],[Items.cpu,100],[Items.titanium,100]];
         init(param1,param2,param3,param4);
         if(Flags.battleEvent == Flags.GIGA_TANK_BATTLE || Flags.battleEvent == Flags.SUPER_BOSS_RUSH)
         {
            graphic.point1.y += 25;
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
         ++this.r;
         if(this.textCount == 1)
         {
            if(Text.speech(Text.gigaFortress[2]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2)
         {
            if(Text.speech(Text.gigaFortress[3]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 60)
         {
            if(Text.speech(Text.gigaFortress[4]))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 30)
         {
            if(Text.speech(Text.gigaFortress[5]))
            {
               ++this.textCount;
            }
         }
         if(this.s)
         {
            turnTaken = false;
            this.s = 0;
            getHeal({
               "damage":maxHP * (isHard ? 0.035 : 0.02),
               "randomness":5
            });
            return;
         }
         this.s = 1;
         var _loc1_:int = Math.random() * 2;
         if(getHpPercent() < 75 && Math.random() < 0.25 && (Battle.randomPlayer().buffs[Stats.ATTACK] || Battle.randomPlayer().buffs[Stats.MAGIC_ATTACK] >= 100))
         {
            _loc1_ = 2;
         }
         if(Battle.foeCount() == 1 && Math.random() < 0.5)
         {
            _loc1_ = 3;
         }
         if(Boolean(status[Status.BERSERK]) || Boolean(status[Status.SYPHON]))
         {
            _loc1_ = Math.random() * 2;
         }
         if(this.r >= 7)
         {
            _loc1_ = 4;
            this.r = 0;
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
            graphic.animate("special3");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("attack2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("special4");
         }
      }
      
      public function skinDamage() : *
      {
         if(getHpPercent() < 75 && graphic.skin == 5)
         {
            ++graphic.skin;
            ++skin;
         }
         if(getHpPercent() < 40 && graphic.skin == 6)
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
         if(Boolean(Battle.foes[2]) && !Battle.foes[2].dead)
         {
            (Battle.foes[2] as Foe).quickKill();
         }
         if(Boolean(Battle.foes[3]) && !Battle.foes[3].dead)
         {
            (Battle.foes[3] as Foe).quickKill();
         }
      }
      
      public function attack1() : *
      {
         Skills.user = this;
         graphic.makeMagic(EffectSmash,0,0,true);
         Battle.targetType = ALL_ENEMY;
         Global.counterEnabled = false;
         Skills.basicFoeAttack(90,Element.NONE,0,Status.STAGGER,1,isHard ? 50 : 25);
         Global.counterEnabled = true;
      }
      
      public function attack11() : *
      {
         graphic.makeMagic(BackupHit,0,0);
         Battle.targetType = Target.ALL_STANDBY;
         Skills.customFoeAttack({
            "type":Stats.ATTACK,
            "damage":90
         });
      }
      
      public function attack2() : *
      {
         graphic.makeMagic(EffectSmash,0,0,true);
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeAttack(120,Element.NONE,0,Status.DISABLE,1,isHard ? 100 : 25);
      }
      
      public function attack3() : *
      {
         if(Math.random() < 0.25)
         {
            Battle.selectedTarget = Battle.randomPlayer(true);
         }
         graphic.makeMagic(EffectSmash2,0,0);
         Skills.basicFoeAttack(240 / 15,Element.BOMB,100);
      }
      
      public function special4() : *
      {
         buff(Stats.ATTACK,isHard ? 50 : 30);
         buff(Stats.MAGIC_ATTACK,isHard ? 50 : 30);
      }
      
      public function special4A() : *
      {
         var _loc1_:Foe = null;
         Global.tankSpawn = true;
         for each(_loc1_ in Battle.foes)
         {
            if((Boolean(_loc1_.status[Status.STUN]) || Boolean(_loc1_.status[Status.FREEZE]) || Boolean(_loc1_.status[Status.SYPHON])) && _loc1_ != this)
            {
               _loc1_.graphic.animate("flee");
            }
         }
      }
      
      public function special4B() : *
      {
         spawnFoe(Options.altFoes ? [TurretHarpoon2,BombAcid,BombEarthquake,BombShockwave,BombNuke] : [TurretHarpoon2,BombAcid,BombEarthquake,BombShockwave],level,0,1);
         spawnFoe(Options.altFoes ? [TurretHarpoon2,BombAcid,BombEarthquake,BombShockwave,BombNuke] : [TurretHarpoon2,BombAcid,BombEarthquake,BombShockwave],level,0,2);
         spawnFoe(Options.altFoes ? [TurretHarpoon2,BombAcid,BombEarthquake,BombShockwave,BombNuke] : [TurretHarpoon2,BombAcid,BombEarthquake,BombShockwave],level,0,3);
         Global.tankSpawn = false;
      }
      
      public function special3() : *
      {
         graphic.makeMagic(EffectWind,0,0,true);
         Battle.targetType = ALL_ENEMY;
         Skills.customFoeAttack({
            "statusOnly":true,
            "critical":0,
            "accuracy":200,
            "buffEffect":Stats.MAGIC_ATTACK,
            "buffChance":100,
            "buffDegree":(isHard ? -30 : -20)
         });
         Skills.customFoeAttack({
            "damage":44 / 3,
            "type":Stats.MAGIC_ATTACK,
            "element":Element.WIND,
            "elementDegree":100,
            "critical":0,
            "accuracy":200,
            "buffEffect":Stats.ATTACK,
            "buffChance":100,
            "buffDegree":(isHard ? -30 : -20)
         });
      }
   }
}

