package foes
{
   public class BossDevourer extends Foe
   {
      public static var gigadoomsday:Spell = new Spell({
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_ENEMY,
         "damage":[1600],
         "element":Element.BOMB,
         "elementDegree":30,
         "accuracy":300
      });
      
      public static var gigadoomsday2:Spell = new Spell({
         "type":Stats.MAGIC_ATTACK,
         "target":Target.ALL_STANDBY,
         "damage":[400],
         "element":Element.BOMB,
         "elementDegree":30,
         "accuracy":100
      });
      
      public var respawnCount:int = 0;
      
      public var healCount:int = 0;
      
      public var ultimates:int = 0;
      
      public var sp:int = 0;
      
      public var textCount:int = 1;
      
      public function BossDevourer(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         setStrings();
         graphicType = "Devourer";
         graphicScale = 100;
         skin = 1;
         icon = 1157;
         catchRate = Catching.UNCATCHABLE;
         if(SaveData.questNo != 1)
         {
            catchRate = Catching.MEGA_BOSS_RATE;
         }
         boxSize = 3;
         HP = 9999;
         attack = 4;
         magicAttack = 4;
         defence = 4;
         magicDefence = 4;
         accuracy = 4.4;
         evade = 3;
         hit2HP = 3;
         hit3HP = 6;
         elementalResistance[Element.FIRE] = 1;
         elementalResistance[Element.ICE] = 1;
         elementalResistance[Element.THUNDER] = 1;
         elementalResistance[Element.WATER] = 1;
         elementalResistance[Element.WIND] = 1;
         elementalResistance[Element.EARTH] = 1;
         elementalResistance[Element.BIO] = -0.5;
         elementalResistance[Element.BOMB] = 1;
         elementalResistance[Element.HOLY] = 1.8;
         elementalResistance[Element.DARK] = 1.8;
         if(Options.extraFoeResistance)
         {
            elementalResistance[Element.EARTH] = 0;
            elementalResistance[Element.WIND] = 0;
            elementalResistance[Element.BOMB] = -0.5;
            elementalResistance[Element.HOLY] = 1.5;
            elementalResistance[Element.DARK] = 1.5;
         }
         statusResistance[Status.BURN_SCORCH] = 1;
         statusResistance[Status.STUN] = 0;
         statusResistance[Status.FREEZE_CHILL] = 0;
         statusResistance[Status.POISON_VIRUS] = 1;
         statusResistance[Status.SYPHON_DISABLE] = 0;
         statusResistance[Status.CURSE_BAD_LUCK] = 0.5;
         statusResistance[Status.STAGGER_CONFUSE] = 1;
         statusResistance[Status.DRY_WET] = 1;
         statusResistance[Status.LIGHT_HEAVY] = 1;
         statusResistance[Status.WEAKENED_TIRED] = 0.5;
         statusResistance[Status.DISPEL] = 0.5;
         statusResistance[Status.DEATH] = 0;
         buffResistance[Stats.ATTACK] = 1.5;
         buffResistance[Stats.MAGIC_ATTACK] = 1.5;
         buffResistance[Stats.DEFENCE] = 1.5;
         buffResistance[Stats.MAGIC_DEFENCE] = 1.5;
         buffResistance[Stats.ACCURACY] = 1.5;
         buffResistance[Stats.EVADE] = 1;
         buffResistance[Stats.HP] = Constants.HP_RESISTANCE_LOW;
         EXP = 3000;
         AP = 300;
         SP = 300;
         gold = 10000;
         dropList = [[Items.orangejuice,0],[Items.espresso,0],[Items.chili,0],[Items.pizza,0]];
         BossDevourer.finalBossBuff(this);
         init(param1,param2,param3,param4);
      }
      
      public static function finalBossBuff(param1:Foe, param2:int = 0, param3:Boolean = false, param4:Number = 1) : *
      {
         var _loc8_:Object = null;
         var _loc9_:Boolean = false;
         if(!param1.maxHP)
         {
            param1.maxHP = param1.HP;
         }
         var _loc5_:Number = param2;
         if(Flags.GLITCH_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.UNDERLEGS_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.SUPER_CYCLOPS_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.SUPER_TANK_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.SUPER_GOLEM_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.SUPER_NEST_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.ICE_HYDRA_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.EVIL_MATT_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.EVIL_NATZ_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.EVIL_LANCE_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.EVIL_ANNA_DEFEATED.quantity)
         {
            _loc5_++;
         }
         if(Flags.EVIL_NOLEGS_DEFEATED.quantity)
         {
            _loc5_++;
         }
         var _loc6_:int = Medals.countMedals();
         if(_loc6_ > 100)
         {
            _loc5_++;
         }
         if(_loc6_ > 80)
         {
            _loc5_++;
         }
         if(_loc6_ > 65)
         {
            _loc5_++;
         }
         if(_loc6_ > 50)
         {
            _loc5_++;
         }
         if(param3)
         {
            _loc5_ = param2;
         }
         if(Flags.PAPER_DEFEATED.quantity)
         {
            _loc5_++;
         }
         _loc5_ += Cards.cardCount / 25;
         var _loc7_:int = 0;
         for each(_loc8_ in [Flags.P1_ARENA_DONE,Flags.P2_ARENA_DONE,Flags.P3_ARENA_DONE,Flags.P4_ARENA_DONE,Flags.P5_ARENA_DONE])
         {
            if(_loc8_.quantity)
            {
               _loc7_++;
            }
         }
         for each(_loc8_ in [Flags.EBF1A_DONE,Flags.EBF1B_DONE,Flags.EBF2A_DONE,Flags.EBF2B_DONE,Flags.EBF3A_DONE,Flags.EBF3B_DONE,Flags.EBF4A_DONE,Flags.EBF4B_DONE])
         {
            if(_loc8_.quantity)
            {
               _loc7_++;
            }
         }
         for each(_loc8_ in [Flags.CHAIR_DEFEATED,Flags.GLOB_DEFEATED,Flags.SNEK_DEFEATED,Flags.BOSH_DEFEATED,Flags.ROBO_DEFEATED,Flags.GUEYE_DEFEATED,Flags.TOTOM_DEFEATED,Flags.TRAEGURE_DEFEATED,Flags.PUMPKUS_DEFEATED,Flags.PHOENIX_DEFEATED,Flags.MAW_DEFEATED,Flags.MERMAID_DEFEATED])
         {
            if(_loc8_.quantity)
            {
               _loc7_++;
            }
         }
         _loc5_ += _loc7_ / 5;
         _loc9_ = Boolean(1 + _loc5_ / 100);
         _loc5_ *= param4;
         _loc5_ = 1 + _loc5_ / 100;
         param1.attack *= _loc5_;
         param1.magicAttack *= _loc5_;
         param1.maxHP *= _loc5_;
         param1.realHP = param1.maxHP;
         param1.accuracy *= _loc9_;
         param1.HP = param1.maxHP;
      }
      
      public static function levelBoost(param1:Foe, param2:int = 20) : *
      {
         var _loc3_:int = param1.level;
         if(_loc3_ > 36)
         {
            _loc3_ = 36;
         }
         var _loc4_:int = _loc3_ - param2;
         if(_loc4_ <= 0)
         {
            return;
         }
         var _loc5_:Number = 1 + 5 * (_loc4_ / 100);
         param1.attack *= _loc5_;
         param1.magicAttack *= _loc5_;
         _loc5_ = 1 + 2.5 * (_loc4_ / 100);
         param1.maxHP *= _loc5_;
         param1.realHP = param1.maxHP;
         param1.accuracy *= _loc5_;
         param1.HP = param1.maxHP;
      }
      
      public function killHelpers() : *
      {
         if(Boolean(Battle.foes[0]) && !Battle.foes[0].dead)
         {
            (Battle.foes[0] as Foe).quickKill2();
         }
         if(Boolean(Battle.foes[1]) && !Battle.foes[1].dead)
         {
            (Battle.foes[1] as Foe).quickKill2();
         }
         if(Boolean(Battle.foes[3]) && !Battle.foes[3].dead)
         {
            (Battle.foes[3] as Foe).quickKill2();
         }
         if(Boolean(Battle.foes[4]) && !Battle.foes[4].dead)
         {
            (Battle.foes[4] as Foe).quickKill2();
         }
      }
      
      public function takeTurn() : *
      {
         var _loc4_:Foe = null;
         if(!startTurn())
         {
            return;
         }
         if(Flags.deleting)
         {
            ++Flags.deleting;
         }
         var _loc1_:int = Math.random() * 4;
         var _loc2_:int = 5;
         if(skin == 3)
         {
            _loc2_ = 4;
         }
         if(skin == 4)
         {
            _loc2_ = 3;
         }
         if(this.respawnCount > 30)
         {
            this.respawnCount = 0;
            spawnFoe(Options.altFoes ? [Glitch2,BossDevourerTentacle,BossDevourerClub] : [BossDevourerTentacle,BossDevourerClub],this.level,0,4);
            spawnFoe(Options.altFoes ? [Glitch2,BossDevourerEyeball,BossDevourerEyeball,BossDevourerEyeball] : [BossDevourerEyeball],this.level,0,1);
            spawnFoe([BossDevourerTentacle,BossDevourerClub],this.level,0,0);
            spawnFoe(Options.altFoes ? [Glitch2,BossDevourerEyeball,BossDevourerEyeball,BossDevourerEyeball] : [BossDevourerEyeball],this.level,0,3);
         }
         if(Battle.foeCount() == 1)
         {
            this.respawnCount += 4;
         }
         else if(Battle.foeCount() < 3)
         {
            this.respawnCount += 3;
         }
         else if(Battle.foeCount() < 4)
         {
            this.respawnCount += 2;
         }
         else if(Battle.foeCount() < 5)
         {
            this.respawnCount += 1;
         }
         if(this.respawnCount >= _loc2_)
         {
            this.respawnCount -= _loc2_;
            if(!Battle.foes[4] || Boolean(Battle.foes[4].dead))
            {
               spawnFoe([BossDevourerTentacle,BossDevourerClub],this.level,0,4);
            }
            else if(!Battle.foes[1] || Boolean(Battle.foes[1].dead))
            {
               spawnFoe(Options.altFoes ? [Glitch2,BossDevourerEyeball,BossDevourerEyeball,BossDevourerEyeball] : [BossDevourerEyeball],this.level,0,1);
            }
            else if(!Battle.foes[0] || Boolean(Battle.foes[0].dead))
            {
               spawnFoe(Options.altFoes ? [Glitch2,BossDevourerTentacle,BossDevourerClub] : [BossDevourerTentacle,BossDevourerClub],this.level,0,0);
            }
            else if(!Battle.foes[3] || Boolean(Battle.foes[3].dead))
            {
               spawnFoe(Options.altFoes ? [Glitch2,BossDevourerEyeball,BossDevourerEyeball,BossDevourerEyeball] : [BossDevourerEyeball],this.level,0,3);
            }
         }
         var _loc3_:int = 0;
         for each(_loc4_ in Battle.foes)
         {
            if(!(!_loc4_ || _loc4_.dead))
            {
               if(Boolean(_loc4_.status[Status.STUN]) || Boolean(_loc4_.status[Status.SYPHON]) || Boolean(_loc4_.status[Status.FREEZE]))
               {
                  _loc3_++;
               }
            }
         }
         if(_loc3_ >= 2)
         {
            ++this.healCount;
         }
         else
         {
            this.healCount = 0;
         }
         if(this.healCount >= 2)
         {
            _loc1_ = 4;
            this.sp = 1;
         }
         else
         {
            if(status[Status.CHARGE] && !isHard || status[Status.CHARGE] && Math.random() < 0.5 || status[Status.CHARGE] == 1)
            {
               _loc1_ = 6;
            }
            if((getHpPercent() < 75 && this.ultimates == 0 || getHpPercent() < 50 && this.ultimates == 1) && !status[Status.CHARGE])
            {
               _loc1_ = 5;
               ++this.ultimates;
            }
            if(getHpPercent() < 30 && !Flags.deleting)
            {
               _loc1_ = 4;
               this.sp = 0;
               this.ultimates = 3;
            }
         }
         if(Flags.deleting)
         {
            Text.speech(Text.devourer[29]);
         }
         if(Flags.deleting)
         {
            Text.speech(Text.devourer[12]);
         }
         if(this.textCount >= 6 && getHpPercent() < 50)
         {
            Text.speech(Text.devourer[19]);
         }
         if(this.textCount >= 7 && getHpPercent() < 40)
         {
            Text.speech(Text.devourer[20]);
         }
         if(getHpPercent() < 40 && !Flags.deleting)
         {
            Text.speech(Text.devourer[11]);
         }
         if(_loc1_ == 6 && getHpPercent() > 52)
         {
            Text.speech(Text.devourer[9]);
         }
         else if(_loc1_ == 6 && getHpPercent() <= 52)
         {
            Text.speech(Text.devourer[10]);
         }
         else if(this.textCount == 1)
         {
            if(Text.speech(Text.devourer[2],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 2 && getHpPercent() < 85)
         {
            if(Text.speech(Text.devourer[3],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 3 && getHpPercent() < 75)
         {
            if(Text.speech(Text.devourer[4],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 4 && getHpPercent() < 70)
         {
            if(Text.speech(Text.devourer[5],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 5 && getHpPercent() < 60)
         {
            if(Text.speech(Text.devourer[6],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 6 && getHpPercent() < 55)
         {
            if(Text.speech(Text.devourer[7],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(this.textCount == 7 && getHpPercent() < 45)
         {
            if(Text.speech(Text.devourer[8],{"skin":graphic.skin}))
            {
               ++this.textCount;
            }
         }
         else if(getHpPercent() < 20)
         {
            Text.speech(Text.devourer[13]);
         }
         if(_loc1_ == 0)
         {
            graphic.animate("attack1");
         }
         if(_loc1_ == 1)
         {
            graphic.animate("special1");
         }
         if(_loc1_ == 2)
         {
            graphic.animate("special2");
         }
         if(_loc1_ == 3)
         {
            graphic.animate("magic2");
         }
         if(_loc1_ == 4)
         {
            graphic.animate("magic1");
            if(this.sp == 1)
            {
               this.healCount = 0;
               turnTaken = false;
            }
         }
         if(_loc1_ == 5)
         {
            graphic.animate("special4");
         }
         if(_loc1_ == 6)
         {
            graphic.animate("special3");
         }
      }
      
      public function skinDamage() : *
      {
         if(getHpPercent() < 75 && graphic.skin == 1)
         {
            ++graphic.skin;
            ++skin;
         }
         if(getHpPercent() < 50 && graphic.skin == 2)
         {
            ++graphic.skin;
            ++skin;
         }
         if(getHpPercent() < 30 && graphic.skin == 3)
         {
            ++graphic.skin;
            ++skin;
         }
      }
      
      public function special1() : *
      {
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(120 / 6,Element.WIND,50,Status.CONFUSE,1,isHard ? 100 : 30,300);
      }
      
      public function special2(param1:int) : *
      {
         var _loc2_:int = 0;
         Battle.targetType = ALL_ENEMY;
         if(param1 == 1)
         {
            _loc2_ = 70;
         }
         if(param1 == 2)
         {
            _loc2_ = 35;
         }
         if(param1 == 3)
         {
            _loc2_ = 30;
         }
         if(param1 == 4)
         {
            _loc2_ = 25;
         }
         if(param1 == 5)
         {
            _loc2_ = 15;
         }
         Skills.basicFoeMagic(_loc2_,Element.BOMB,50);
      }
      
      public function magic1() : *
      {
         if(this.sp == 0)
         {
            castSpell("DeleteEarth");
            this.respawnCount = 50;
         }
         if(this.sp == 1)
         {
            castAllyMultiSpell(Spells.devHeal);
         }
      }
      
      public function deleteEarth() : *
      {
         status[Status.CHARGE] = 0;
         Flags.deleting = 1;
         Game.fleeable = false;
         Backgrounds.changeBackground(54,true);
      }
      
      public function devHeal() : *
      {
         Battle.selectedTarget.getHeal({
            "damage":Battle.selectedTarget.maxHP * Battle.selectedTarget.hit2HP / 130,
            "randomness":20
         });
         Battle.selectedTarget.status[Status.STUN] = 0;
         Battle.selectedTarget.status[Status.SYPHON] = 0;
      }
      
      public function magic2() : *
      {
         castRandomMultiSpell(Spells.devTentacle,4);
      }
      
      public function attack1(param1:int) : *
      {
         var _loc2_:int = 0;
         Battle.targetType = ALL_ENEMY;
         if(param1 == 1)
         {
            _loc2_ = 45;
         }
         if(param1 == 2)
         {
            _loc2_ = 70;
         }
         if(param1 == 3)
         {
            _loc2_ = 45;
         }
         Skills.basicFoeAttack(_loc2_,Element.FIRE,50,Status.SCORCHED,isHard ? 4 : 2,100);
         graphic.makeMagic(EffectFire3,0,0,true);
      }
      
      public function special4() : *
      {
         Skills.giveStatus(this,Status.CHARGE,3);
         graphic.makeMagic(EffectThunder2,0,0,true);
         Battle.targetType = ALL_ENEMY;
         Skills.basicFoeMagic(60,Element.THUNDER,50,Status.DISPEL,1,isHard ? 100 : 0,100);
      }
      
      public function special3() : *
      {
         status[Status.CHARGE] = 0;
         castSpell("SliceEarth");
         this.respawnCount = 50;
      }
      
      public function special3b() : *
      {
         castSpell("DevExplosion");
      }
   }
}

