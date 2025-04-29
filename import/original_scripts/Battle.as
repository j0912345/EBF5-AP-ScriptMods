package
{
   import flash.display.MovieClip;
   import flash.system.*;
   
   public class Battle
   {
      public static var stage:BattleStage;
      
      public static var menu:BattleMenu;
      
      public static var players:Array;
      
      public static var standbyPlayers:Array;
      
      public static var foeWaves:Array;
      
      public static var currentPlayer:Player;
      
      public static var swapPlayer:Player;
      
      public static var currentFoe:Foe;
      
      public static var selectedSkill:Object;
      
      public static var selectedTarget:Target;
      
      public static var targetType:String;
      
      public static var SP:int;
      
      public static var maxSP:int;
      
      public static var counterSkill:Spell;
      
      public static var foes:Array = [];
      
      public static var counterStack:Array = [];
      
      public static var finalHit:Boolean = true;
      
      public static var foeTurnOver:Boolean = false;
      
      public static var multiSpell:int = -1;
      
      public static var arrows:int = 0;
      
      public static var goldPool:int = 0;
      
      public static var experiencePool:int = 0;
      
      public static var abilityPool:int = 0;
      
      public static var scorePool:int = 0;
      
      public static var dropPool:Array = [];
      
      public static var playerScore:int = 1;
      
      public static var foeScore:int = 1;
      
      public static var afterTurns:int = 0;
      
      public static var wave:int = 0;
      
      public static var end:Boolean = false;
      
      public static var turnPhase:int = 0;
      
      public static var soundStack:int = 0;
      
      public static var standbySwitch:int = 0;
      
      public static var counter:Boolean = false;
      
      public static var bonusSpellFlag:Boolean = false;
      
      public static var summonFlag:Boolean = false;
      
      public static var summonAnimation:int = 1;
      
      public static var autoSpellFlag:Boolean = false;
      
      public static var weatherFlag:Boolean = true;
      
      public static var autoSpellState:int = 0;
      
      public static var busy:Boolean = false;
      
      public static var foeCounter:Boolean = false;
      
      public static var rating:int = 1;
      
      public function Battle()
      {
         super();
      }
      
      public static function reset() : *
      {
         maxSP = Constants.spmStarting;
         SP = maxSP;
         if(Debug.infiniteSP)
         {
            SP = 999;
            maxSP = 999;
         }
      }
      
      public static function calculateSP() : *
      {
         var _loc1_:Player = null;
         maxSP = Constants.spmStarting + Math.ceil(Players.getAverageLevel()) * Constants.spmGrowth;
         maxSP += Cards.spBoost;
         for each(_loc1_ in Players.PLAYERS)
         {
            _loc1_.ramEffect();
         }
         if(Options.summoner)
         {
            Battle.maxSP *= 1.3;
         }
         if(Battle.SP > Battle.maxSP)
         {
            Battle.SP = Battle.maxSP;
         }
         try
         {
            if(Game.mode == Game.BATTLE && !end)
            {
               menu.updatePlayerBars();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function init(param1:int = 1) : *
      {
         var party:Array;
         var i:int;
         var background:int = param1;
         Battles.calculateFoeLevels();
         afterTurns = 0;
         Flags.deleting = 0;
         Flags.stonedTimer = Flags.stonedTimerInit;
         Weather.initWeatherTargets();
         stage = new BattleStage();
         Game.root.addChild(stage);
         menu = new BattleMenu();
         Game.root.addChild(menu);
         Backgrounds.createBackground(background);
         party = Game.party;
         if(Options.threePlayerMode || Flags.battleEvent == Flags.EBF3A || Flags.battleEvent == Flags.EBF3B || Flags.battleEvent == Flags.EBF4A || Flags.battleEvent == Flags.EBF4B || Flags.battleEvent == Flags.THREE_PLAYER_RUSH)
         {
            party = Game.party.slice(0,3);
         }
         if(Options.twoPlayerMode || Flags.battleEvent == Flags.EBF1A || Flags.battleEvent == Flags.EBF1B || Flags.battleEvent == Flags.EBF2A || Flags.battleEvent == Flags.EBF2B || Flags.battleEvent == Flags.TWO_PLAYER_RUSH)
         {
            party = Game.party.slice(0,2);
         }
         if(Options.onePlayerMode)
         {
            party = Game.party.slice(0,1);
         }
         if(party.length < 4)
         {
            standbyPlayers = [null,null];
            players = party;
         }
         else if(party.length < 5)
         {
            standbyPlayers = [party[3],null];
            players = party.slice(0,3);
         }
         else
         {
            standbyPlayers = [party[3],party[4]];
            players = party.slice(0,3);
         }
         i = 0;
         while(i < players.length)
         {
            players[i].initBattle(i);
            i++;
         }
         currentPlayer = players[0];
         try
         {
            System.pauseForGCIfCollectionImminent(0.5);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function bossDefeated() : *
      {
         if(Flags.battleEvent != Flags.MINIBOSS_RUSH && Flags.battleEvent != Flags.BOSS_RUSH && Flags.battleEvent != Flags.SUPER_BOSS_RUSH)
         {
            Game.fleeable = false;
            Catching.bossDefeated = true;
         }
         extremeMedal();
      }
      
      public static function extremeMedal() : *
      {
         if(Options.lessPlayerResistance && Options.extraFoeResistance && Options.counterAttacks && Options.offensiveFoes && Options.evasiveFoes && Options.bulkyFoes && Options.turnTimeLimit && Options.noFoeHPbars && Options.noReviveTurn && Options.surpriseAttack && Options.noRareFood && Options.comboBreaker && Options.statusAntibody)
         {
            Medals.unlock(Medals.extremeDifficulty);
         }
      }
      
      public static function teardown() : *
      {
         var p:Player = null;
         var t:Target = null;
         Players.playerJustUnlocked = -1;
         selectedSkill = null;
         selectedTarget = null;
         targetType = null;
         multiSpell = -1;
         Global.hydras = 0;
         GUI.textColor = 16777215;
         goldPool = 0;
         experiencePool = 0;
         abilityPool = 0;
         scorePool = 0;
         dropPool = [];
         playerScore = 1;
         foeScore = 1;
         Backgrounds.tempBackground = 1;
         wave = 0;
         end = false;
         turnPhase = 0;
         soundStack = 0;
         standbySwitch = 0;
         counter = false;
         counterSkill = null;
         bonusSpellFlag = 0;
         autoSpellFlag = false;
         autoSpellState = 0;
         busy = false;
         foeCounter = false;
         menu.tearDown();
         if(Boolean(stage) && Boolean(stage.parent))
         {
            Game.root.removeChild(stage);
         }
         stage = null;
         if(Boolean(menu) && Boolean(menu.parent))
         {
            Game.root.removeChild(menu);
         }
         menu = null;
         for each(p in players)
         {
            p.clearBattleVars();
         }
         for each(t in players.concat(foes))
         {
            if(t)
            {
               t.removeGraphic();
            }
         }
         if(!Options.onePlayerMode)
         {
            if(!(Options.threePlayerMode || Flags.battleEvent == Flags.EBF3A || Flags.battleEvent == Flags.EBF3B || Flags.battleEvent == Flags.EBF4A || Flags.battleEvent == Flags.EBF4B || Flags.battleEvent == Flags.THREE_PLAYER_RUSH))
            {
               if(!(Options.twoPlayerMode || Flags.battleEvent == Flags.EBF1A || Flags.battleEvent == Flags.EBF1B || Flags.battleEvent == Flags.EBF2A || Flags.battleEvent == Flags.EBF2B || Flags.battleEvent == Flags.TWO_PLAYER_RUSH))
               {
                  if(Game.party.length != 1)
                  {
                     if(Game.party.length < 4)
                     {
                        Game.party = players;
                     }
                     else
                     {
                        Game.party = players;
                        if(standbyPlayers[0])
                        {
                           Game.party = Game.party.concat(standbyPlayers[0]);
                           standbyPlayers[0].clearBattleVars();
                        }
                        if(standbyPlayers[1])
                        {
                           Game.party = Game.party.concat(standbyPlayers[1]);
                           standbyPlayers[1].clearBattleVars();
                        }
                     }
                  }
               }
            }
         }
         for each(p in Game.party)
         {
            if(!Options.noAutoRevive)
            {
               p.dead = false;
            }
         }
         players = null;
         standbyPlayers = [null,null];
         foeWaves = null;
         foes = [];
         currentPlayer = null;
         swapPlayer = null;
         currentFoe = null;
         counterStack = [];
         try
         {
            System.pauseForGCIfCollectionImminent(0.5);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function addDrops(param1:Array) : Array
      {
         var _loc4_:Player = null;
         var _loc5_:Array = null;
         var _loc6_:Equip = null;
         var _loc7_:Boolean = false;
         var _loc8_:Array = null;
         var _loc2_:Array = [];
         var _loc3_:Number = 1;
         for each(_loc4_ in Game.party)
         {
            for each(_loc6_ in _loc4_.equips)
            {
               if(Boolean(_loc6_.specials[0]) && _loc6_.specials[0][0] == Equip.MORE_ITEMS)
               {
                  _loc3_ *= 1 + _loc6_.level / 9;
               }
            }
         }
         for each(_loc5_ in param1)
         {
            if(_loc5_[1] * _loc3_ / 100 > Math.random())
            {
               _loc2_.push(_loc5_[0].icon);
               ++(_loc5_[0] as Item).quantity;
               _loc7_ = false;
               for each(_loc8_ in dropPool)
               {
                  if(_loc8_[0] == _loc5_[0])
                  {
                     ++_loc8_[1];
                     _loc7_ = true;
                     break;
                  }
               }
               if(!_loc7_)
               {
                  dropPool.push([_loc5_[0],1]);
               }
            }
         }
         return _loc2_;
      }
      
      public static function standby(param1:Player = null) : *
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Player = null;
         var _loc5_:int = 0;
         if(standbySwitch)
         {
            _loc2_ = standbySwitch - 1;
            if(standbySwitch == 3)
            {
               _loc2_ = 0;
            }
            if(standbySwitch == 4)
            {
               selectedTarget = players[1];
               _loc2_ = 1;
            }
            if(standbySwitch == 3)
            {
               standbySwitch = 4;
            }
            else
            {
               standbySwitch = 0;
            }
            if(!param1)
            {
               _loc3_ = int(players.indexOf(selectedTarget));
               _loc4_ = selectedTarget as Player;
            }
            else
            {
               _loc3_ = int(players.indexOf(param1));
               _loc4_ = param1;
            }
            _loc5_ = _loc4_.graphic.parent.getChildIndex(_loc4_.graphic);
            _loc4_.removeGraphic();
            players[_loc3_] = standbyPlayers[_loc2_];
            standbyPlayers[_loc2_].initBattle(_loc3_,_loc5_);
            standbyPlayers[_loc2_] = _loc4_;
            menu.updatePlayerBars();
         }
      }
      
      public static function gameover() : *
      {
         if((standbyPlayers[0] && !standbyPlayers[0].dead || standbyPlayers[1] && !standbyPlayers[1].dead) && (Flags.battleEvent != Flags.EVIL_MATT || Flags.stonedTimer > 0))
         {
            if(standbySwitch != 4)
            {
               standbySwitch = 3;
            }
            if(Boolean(standbyPlayers[0]) && !standbyPlayers[0].dead)
            {
               selectedTarget = players[1];
               if(standbyPlayers[0])
               {
                  standbyPlayers[0].turnTaken = true;
               }
               Battle.selectedTarget.graphic.animate("dragout");
            }
            if(Boolean(standbyPlayers[1]) && !standbyPlayers[1].dead)
            {
               selectedTarget = players[0];
               if(standbyPlayers[1])
               {
                  standbyPlayers[1].turnTaken = true;
               }
               Battle.selectedTarget.graphic.animate("dragout");
            }
         }
         else
         {
            end = true;
            if(Flags.devSummoned)
            {
               menu.transitions.gotoAndPlay("gameover");
               Flags.devSummoned = false;
            }
            else if(Flags.battleEvent == Flags.LANCE_BATTLE_1 || Flags.battleEvent == Flags.ARENA_BATTLE || Flags.battleEvent == Flags.ARCADE_RUSH || Flags.battleEvent == Flags.TWO_PLAYER_RUSH || Flags.battleEvent == Flags.THREE_PLAYER_RUSH || Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent >= 47 && Flags.battleEvent <= 54)
            {
               Game.win = false;
               if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
               {
                  Text.speech(Text.arcade[10],null,true);
               }
               menu.transitions.gotoAndPlay("fadeout");
            }
            else
            {
               menu.transitions.gotoAndPlay("gameover");
            }
         }
      }
      
      public static function nextWave() : *
      {
         var _loc1_:Player = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Class = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Foe = null;
         if(Options.surpriseAttack && wave != 0)
         {
            for each(_loc1_ in players)
            {
               _loc1_.turnTaken = true;
            }
         }
         if(Flags.battleEvent == Flags.MIMIC && !Options.threeOrLessPlayers())
         {
            for each(_loc1_ in players)
            {
               _loc1_.turnTaken = true;
            }
            Flags.battleEvent = Flags.NONE;
         }
         if(Options.preemptiveStrike)
         {
            for each(_loc1_ in players)
            {
               _loc1_.turnTaken = false;
            }
         }
         Global.catchTip = false;
         foes = [];
         if(wave != 0)
         {
            Game.fleeable = true;
            Catching.bossDefeated = false;
         }
         if(wave >= foeWaves.length && !Global.endlessBattle)
         {
            busy = false;
            winBattle();
         }
         else
         {
            counterStack = [];
            if(Debug.expoDemo && Global.endlessBattleWave >= Debug.limitedWaves)
            {
               Battles.generateEndlessBattleWave(true);
            }
            else
            {
               if(!Global.endlessBattle)
               {
                  _loc2_ = foeWaves[wave];
               }
               else
               {
                  _loc2_ = Battles.generateEndlessBattleWave(true);
               }
               _loc3_ = 0;
               while(_loc3_ < _loc2_.length)
               {
                  _loc4_ = _loc2_[_loc3_][0];
                  if(Options.catSimulator)
                  {
                     _loc4_ = Battles.getCat();
                  }
                  _loc5_ = int(_loc2_[_loc3_][1]);
                  _loc6_ = int(_loc2_[_loc3_][2]);
                  _loc7_ = int(_loc2_[_loc3_][3]);
                  if(_loc2_[_loc3_].length == 5)
                  {
                     _loc8_ = int(_loc2_[_loc3_][4]);
                  }
                  else
                  {
                     _loc8_ = 0;
                  }
                  _loc9_ = new _loc4_(_loc5_,_loc6_,_loc7_,_loc8_);
                  foes.push(_loc9_);
                  _loc3_++;
               }
            }
            menu.updateFoeBars();
            ++wave;
            menu.updateWave();
         }
      }
      
      public static function calculateRating() : *
      {
         var _loc1_:Number = playerScore / foeScore;
         _loc1_ *= 0.5 + Options.getDifficulty() / 2;
         _loc1_ *= 1 + Players.getAverageLevel() / 30;
         if(_loc1_ > 20)
         {
            rating = 4;
         }
         else if(_loc1_ > 15)
         {
            rating = 3;
         }
         else if(_loc1_ > 10)
         {
            rating = 2;
         }
         else
         {
            rating = 1;
         }
      }
      
      public static function winBattle() : *
      {
         if(Debug.trailerMode)
         {
            menu.visible = true;
         }
         calculateRating();
         end = true;
         menu.awardDisplay.fader.gotoAndPlay("popin");
         menu.awardDisplay.init();
         menu.playerBars.gotoAndStop(2);
         Text.victory();
         Game.clearBattle();
         if(Options.counterAttacks)
         {
            ++SaveData.battlesWithCounter;
         }
         if(Options.extraFoeResistance && Options.lessPlayerResistance)
         {
            ++SaveData.battlesWithResistance;
         }
         if(SaveData.battlesWithCounter >= Medals.retaliation.value)
         {
            Medals.unlock(Medals.retaliation);
         }
         if(SaveData.battlesWithResistance >= Medals.newStrats.value)
         {
            Medals.unlock(Medals.newStrats);
         }
         if(Game.foes == Battles.natalie || Game.foes == BattlesAlt.natalie)
         {
            Game.clearBattle(2);
            Game.clearBattle(3);
            Game.clearBattle(4);
            Game.clearBattle(5);
         }
         if(Game.foes == Battles.anna || Game.foes == BattlesAlt.anna)
         {
            Game.clearBattle(2);
            Game.clearBattle(3);
         }
         if(Game.foes == Battles.superboss1 || Game.foes == BattlesAlt.superboss1)
         {
            Game.clearBattle(0);
            Game.clearBattle(1);
         }
         if(Game.foes == Battles.superboss2 || Game.foes == BattlesAlt.superboss2)
         {
            Game.clearBattle(1);
            Game.clearBattle(2);
            Game.clearBattle(3);
            Game.clearBattle(4);
         }
         if(Game.foes == Battles.boss2 || Game.foes == BattlesAlt.boss2)
         {
            Game.clearBattle(3);
            Game.clearBattle(4);
         }
         if(Game.foes == Battles.rapture59 || Game.foes == BattlesAlt.rapture59)
         {
            Game.clearBattle(0);
            Game.clearBattle(1);
         }
         if(Game.foes == Battles.space6 || Game.foes == BattlesAlt.space6)
         {
            Game.clearBattle(3);
            Game.clearBattle(4);
            Game.clearBattle(5);
         }
         if(Game.foes == Battles.superboss5 || Game.foes == BattlesAlt.superboss5)
         {
            Game.clearBattle(0);
            Game.clearBattle(1);
            Game.clearBattle(2);
         }
         if(Game.foes == Battles.rapture39 || Game.foes == BattlesAlt.rapture39)
         {
            Game.clearBattle(2);
            Game.clearBattle(3);
         }
         if(Flags.battleEvent == Flags.FOE_RUSH)
         {
            Flags.BOSS_RUSH_1.quantity = 1;
            Medals.unlock(Medals.deathbringer);
         }
         if(Flags.battleEvent == Flags.MINIBOSS_RUSH)
         {
            Flags.BOSS_RUSH_2.quantity = 1;
            Medals.unlock(Medals.minibossSlayer);
         }
         if(Flags.battleEvent == Flags.BOSS_RUSH)
         {
            Flags.BOSS_RUSH_3.quantity = 1;
            Medals.unlock(Medals.bossSlayer);
         }
         if(Flags.battleEvent == Flags.SUPER_BOSS_RUSH)
         {
            Flags.BOSS_RUSH_4.quantity = 1;
            Medals.unlock(Medals.megaBossSlayer);
         }
         if(Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Medals.unlock(Medals.retroGamer);
         }
         if(Flags.battleEvent == Flags.TWO_PLAYER_RUSH)
         {
            Medals.unlock(Medals.epicDuo);
         }
         if(Flags.battleEvent == Flags.THREE_PLAYER_RUSH)
         {
            Medals.unlock(Medals.epicTrio);
         }
         Flags.EBF1A_DONE.quantity;
         if(Flags.battleEvent == Flags.EBF1A && (Flags.EBF1A_DONE.quantity < 2 || !Flags.EBF1A_DONE.quantity))
         {
            Flags.EBF1A_DONE.quantity = Options.difficulty == Options.EPIC && !Options.cheatsOn() ? 2 : 1;
         }
         if(Flags.battleEvent == Flags.EBF1B && (Flags.EBF1B_DONE.quantity < 2 || !Flags.EBF1B_DONE.quantity))
         {
            Flags.EBF1B_DONE.quantity = Options.difficulty == Options.EPIC && !Options.cheatsOn() ? 2 : 1;
         }
         if(Flags.battleEvent == Flags.EBF2A && (Flags.EBF2A_DONE.quantity < 2 || !Flags.EBF2A_DONE.quantity))
         {
            Flags.EBF2A_DONE.quantity = Options.difficulty == Options.EPIC && !Options.cheatsOn() ? 2 : 1;
         }
         if(Flags.battleEvent == Flags.EBF2B && (Flags.EBF2B_DONE.quantity < 2 || !Flags.EBF2B_DONE.quantity))
         {
            Flags.EBF2B_DONE.quantity = Options.difficulty == Options.EPIC && !Options.cheatsOn() ? 2 : 1;
         }
         if(Flags.battleEvent == Flags.EBF3A && (Flags.EBF3A_DONE.quantity < 2 || !Flags.EBF3A_DONE.quantity))
         {
            Flags.EBF3A_DONE.quantity = Options.difficulty == Options.EPIC && !Options.cheatsOn() ? 2 : 1;
         }
         if(Flags.battleEvent == Flags.EBF3B && (Flags.EBF3B_DONE.quantity < 2 || !Flags.EBF3B_DONE.quantity))
         {
            Flags.EBF3B_DONE.quantity = Options.difficulty == Options.EPIC && !Options.cheatsOn() ? 2 : 1;
         }
         if(Flags.battleEvent == Flags.EBF4A && (Flags.EBF4A_DONE.quantity < 2 || !Flags.EBF4A_DONE.quantity))
         {
            Flags.EBF4A_DONE.quantity = Options.difficulty == Options.EPIC && !Options.cheatsOn() ? 2 : 1;
         }
         if(Flags.battleEvent == Flags.EBF4B && (Flags.EBF4B_DONE.quantity < 2 || !Flags.EBF4B_DONE.quantity))
         {
            Flags.EBF4B_DONE.quantity = Options.difficulty == Options.EPIC && !Options.cheatsOn() ? 2 : 1;
         }
         if((Flags.battleEvent == Flags.EBF1A || Flags.battleEvent == Flags.EBF1B) && Flags.EBF1A_DONE.quantity == 2 && Flags.EBF1B_DONE.quantity == 2)
         {
            Medals.unlock(Medals.ebf1);
         }
         if((Flags.battleEvent == Flags.EBF2A || Flags.battleEvent == Flags.EBF2B) && Flags.EBF2A_DONE.quantity == 2 && Flags.EBF2B_DONE.quantity == 2)
         {
            Medals.unlock(Medals.ebf2);
         }
         if((Flags.battleEvent == Flags.EBF3A || Flags.battleEvent == Flags.EBF3B) && Flags.EBF3A_DONE.quantity == 2 && Flags.EBF3B_DONE.quantity == 2)
         {
            Medals.unlock(Medals.ebf3);
         }
         if((Flags.battleEvent == Flags.EBF4A || Flags.battleEvent == Flags.EBF4B) && Flags.EBF4A_DONE.quantity == 2 && Flags.EBF4B_DONE.quantity == 2)
         {
            Medals.unlock(Medals.ebf4);
         }
         if(Flags.battleEvent == Flags.PAPER_BATTLE)
         {
            Flags.PAPER_DEFEATED.quantity = 1;
            Medals.unlock(Medals.paperShredder);
         }
         if(Flags.battleEvent == Flags.BOSH)
         {
            Flags.BOSH_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.SNEK)
         {
            Flags.SNEK_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.GLOB)
         {
            Flags.GLOB_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.ROBO)
         {
            Flags.ROBO_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.TOTOM)
         {
            Flags.TOTOM_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.GUOYE)
         {
            Flags.GUEYE_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.MAW)
         {
            Flags.MAW_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.CHAIR)
         {
            Flags.CHAIR_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.PUMPKUS)
         {
            Flags.PUMPKUS_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.PHOENIX)
         {
            Flags.PHOENIX_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.TREAGURE)
         {
            Flags.TRAEGURE_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.MERMAID)
         {
            Flags.MERMAID_DEFEATED.quantity = 1;
         }
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            if(Options.difficulty == Options.EPIC && !Options.cheatsOnForMedals())
            {
               if((players[0] as Player).playerNo == 1)
               {
                  ++Flags.P1_ARENA_EPIC.quantity;
               }
               if((players[0] as Player).playerNo == 2)
               {
                  ++Flags.P2_ARENA_EPIC.quantity;
               }
               if((players[0] as Player).playerNo == 3)
               {
                  ++Flags.P3_ARENA_EPIC.quantity;
               }
               if((players[0] as Player).playerNo == 4)
               {
                  ++Flags.P4_ARENA_EPIC.quantity;
               }
               if((players[0] as Player).playerNo == 5)
               {
                  ++Flags.P5_ARENA_EPIC.quantity;
               }
            }
         }
         if(Flags.isArcadeBattle())
         {
            if(Boolean(Flags.BOSH_DEFEATED.quantity) && Boolean(Flags.SNEK_DEFEATED.quantity) && Boolean(Flags.GLOB_DEFEATED.quantity) && Boolean(Flags.ROBO_DEFEATED.quantity) && Boolean(Flags.PHOENIX_DEFEATED.quantity) && Boolean(Flags.GUEYE_DEFEATED.quantity) && Boolean(Flags.MAW_DEFEATED.quantity) && Boolean(Flags.TOTOM_DEFEATED.quantity) && Boolean(Flags.MERMAID_DEFEATED.quantity) && Boolean(Flags.CHAIR_DEFEATED.quantity) && Boolean(Flags.TRAEGURE_DEFEATED.quantity) && Boolean(Flags.PUMPKUS_DEFEATED.quantity))
            {
               Medals.unlock(Medals.gameCollector);
            }
         }
         for each(p in players)
         {
            if(!p.dead && !p.status[Status.FREEZE])
            {
               p.graphic.animate("cheer");
            }
         }
         if(Game.foes == Battles.pier4 || Game.foes == BattlesAlt.pier4)
         {
            Players.getNoLegs();
         }
         if(Game.foes == Battles.natalie || Game.foes == BattlesAlt.natalie)
         {
            Players.getNatalie();
         }
         if(Game.foes == Battles.lance1 || Game.foes == BattlesAlt.lance1)
         {
            Players.loseNatalie();
         }
         if(Game.foes == Battles.anna || Game.foes == BattlesAlt.anna)
         {
            Players.getAnna();
         }
         if(Game.foes == Battles.boss2 || Game.foes == BattlesAlt.boss2)
         {
            Players.getLance();
         }
      }
      
      public static function shake(param1:String = "small", param2:Boolean = false) : *
      {
         if(!Options.screenShake && !param2)
         {
            return;
         }
         if(Game.frame)
         {
            Game.frame.shake.gotoAndPlay(param1);
         }
      }
      
      public static function makeEffect(param1:Class, param2:Number = 0, param3:Number = 0, param4:Boolean = false, param5:int = 1, param6:Boolean = false) : *
      {
         var t:Target = null;
         var mc:SpellMC = null;
         var magic:Class = param1;
         var X:Number = param2;
         var Y:Number = param3;
         var multiple:Boolean = param4;
         var skin:int = param5;
         var isSummon:Boolean = param6;
         try
         {
            if(multiple)
            {
               if(Skills.user is Player)
               {
                  for each(t in foes)
                  {
                     if(!t.dead)
                     {
                        mc = new magic();
                        Battle.stage.addChild(mc);
                        Battle.selectedTarget = t;
                        mc.gotoAndPlay(1);
                        mc.skin = skin;
                        mc.isSummon = isSummon;
                     }
                  }
               }
               if(!(Skills.user is Player))
               {
                  for each(t in players)
                  {
                     if(!t.dead)
                     {
                        mc = new magic();
                        Battle.stage.addChild(mc);
                        Battle.selectedTarget = t;
                        mc.gotoAndPlay(1);
                        mc.skin = skin;
                        mc.isSummon = isSummon;
                     }
                  }
               }
            }
            else
            {
               mc = new magic();
               Battle.stage.addChild(mc);
               if(X != 0 || Y != 0)
               {
                  (mc as SpellMC).skipPositioning = true;
                  mc.x = X;
                  mc.y = Y;
               }
               mc.skin = skin;
               mc.isSummon = isSummon;
               mc.gotoAndPlay(mc.totalFrames);
               mc.gotoAndPlay(1);
            }
         }
         catch(e:Error)
         {
            Main.log("\nThat multi-spell bug happened. Here\'s a data dump:");
            try
            {
               Main.log("\nA:" + multiple + " / " + skin + " / " + isSummon + " / " + magic + " / " + X + "|" + Y);
            }
            catch(e:Error)
            {
            }
            try
            {
               Main.log("\nB:" + (Skills.user is Player) + " / " + Battle.selectedTarget);
            }
            catch(e:Error)
            {
            }
            try
            {
               Main.log("\nC:" + Battle.selectedSkill.target);
            }
            catch(e:Error)
            {
            }
            try
            {
               Main.log("\nD:" + Battle.multiSpell + " / " + Battle.players.length + " / " + Battle.arrows);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public static function whiteFlash() : *
      {
         var _loc1_:MovieClip = new WhiteFlash2();
         Battle.stage.addChild(_loc1_);
         _loc1_.gotoAndPlay(_loc1_.totalFrames);
         _loc1_.gotoAndPlay(1);
      }
      
      public static function hidePlayers() : *
      {
         var _loc1_:Player = null;
         for each(_loc1_ in players)
         {
            if(!_loc1_.dead && (_loc1_.graphic.lastAnim != "magic4" || _loc1_.playerNo != 3))
            {
               _loc1_.graphic.animate("flee");
            }
            else if(_loc1_.graphic.lastAnim != "magic4" || _loc1_.playerNo != 3)
            {
               _loc1_.graphic.animate("dragout");
            }
         }
      }
      
      public static function showPlayers() : *
      {
         var _loc1_:Player = null;
         for each(_loc1_ in players)
         {
            if(!_loc1_.dead)
            {
               _loc1_.graphic.resetPosition();
               _loc1_.graphic.animate("intro");
            }
            else
            {
               _loc1_.graphic.animate("dragin");
            }
         }
      }
      
      public static function hideFoes() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in foes)
         {
            if(!_loc1_.dead)
            {
               _loc1_.graphic.animate("flee");
            }
         }
      }
      
      public static function showFoes() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in foes)
         {
            if(!_loc1_.dead)
            {
               _loc1_.graphic.animate("intro");
               _loc1_.graphic.dirtyStatus = true;
            }
         }
      }
      
      public static function invisiblePlayers() : *
      {
         var _loc1_:Player = null;
         for each(_loc1_ in players)
         {
            _loc1_.graphic.visible = false;
            _loc1_.statusDisplay.alpha = 0;
         }
      }
      
      public static function visiblePlayers() : *
      {
         var _loc1_:Player = null;
         for each(_loc1_ in players)
         {
            _loc1_.graphic.visible = true;
            _loc1_.statusDisplay.alpha = 1;
         }
      }
      
      public static function invisibleFoes() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in foes)
         {
            _loc1_.graphic.visible = false;
            _loc1_.statusDisplay.alpha = 0;
         }
      }
      
      public static function visibleFoes() : *
      {
         var _loc1_:Foe = null;
         for each(_loc1_ in foes)
         {
            _loc1_.graphic.visible = true;
            _loc1_.statusDisplay.alpha = 1;
         }
      }
      
      public static function isPlayerInBattle(param1:Player) : Boolean
      {
         if(players.indexOf(param1) != -1)
         {
            return true;
         }
         if(standbyPlayers[0] == param1 || standbyPlayers[1] == param1)
         {
            return true;
         }
         return false;
      }
      
      public static function playerCount() : int
      {
         var _loc2_:Target = null;
         var _loc1_:int = 0;
         for each(_loc2_ in players)
         {
            if(!_loc2_.dead)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public static function playerCountUnloved() : int
      {
         var _loc2_:Target = null;
         var _loc1_:int = 0;
         for each(_loc2_ in players)
         {
            if(!_loc2_.dead && !_loc2_.status[Status.LOVED])
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public static function playerCountPlusBackup(param1:Boolean = false) : int
      {
         var _loc3_:Target = null;
         var _loc2_:int = 0;
         for each(_loc3_ in players.concat(standbyPlayers))
         {
            if(Boolean(_loc3_) && (!_loc3_.dead || param1))
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public static function foeCount() : int
      {
         var _loc2_:Target = null;
         var _loc1_:int = 0;
         for each(_loc2_ in foes)
         {
            if(!_loc2_.dead || Boolean(_loc2_.status[Status.AUTOLIFE]))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public static function foeCountUnloved() : int
      {
         var _loc2_:Target = null;
         var _loc1_:int = 0;
         for each(_loc2_ in foes)
         {
            if(!_loc2_.dead && !_loc2_.status[Status.LOVED])
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public static function counterStackEmpty() : Boolean
      {
         var _loc1_:Target = null;
         for each(_loc1_ in counterStack)
         {
            if(_loc1_)
            {
               return false;
            }
         }
         return true;
      }
      
      public static function runBattle() : *
      {
         var _loc1_:Foe = null;
         var _loc2_:Player = null;
         var _loc3_:Target = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Item = null;
         var _loc7_:Array = null;
         var _loc8_:Spell = null;
         Battle.bonusSpellFlag = false;
         Global.counter = false;
         for each(_loc3_ in players.concat(foes))
         {
            _loc3_.damageNumber = null;
         }
         for each(_loc3_ in counterStack)
         {
            if(_loc3_)
            {
               if(_loc3_.isPlayer && (_loc3_.dead || _loc3_.lastAttacker.dead || _loc3_.lastAttacker == Weather.weatherFoe || !_loc3_.canMove() || _loc3_.lastAttacker && (_loc3_.lastAttacker.dead || _loc3_.lastAttacker == Weather.weatherPlayer)))
               {
                  counterStack[counterStack.indexOf(_loc3_)] = null;
               }
               if(!_loc3_.isPlayer && (_loc3_.dead || !_loc3_.canMove() || _loc3_.status[Status.SURRENDER]))
               {
                  if(!(_loc3_.isFish() || _loc3_.isDoll() || _loc3_.isMirror()))
                  {
                     counterStack[counterStack.indexOf(_loc3_)] = null;
                  }
               }
            }
         }
         if(!menu.turnStarted && !end)
         {
            if(playersDead())
            {
               gameover();
            }
            else if(foesDead() && counterStackEmpty())
            {
               busy = true;
               for each(_loc1_ in foes)
               {
                  if(_loc1_ && _loc1_.gone && !_loc1_.unreplacable)
                  {
                     _loc1_.removeGraphic();
                  }
               }
               nextWave();
               busy = false;
            }
            else
            {
               currentPlayer = null;
               Spell.SUMMON = false;
               Spell.SUMMON2 = false;
               currentFoe = null;
               _loc5_ = 0;
               while(_loc5_ < counterStack.length)
               {
                  if(!counterStack[_loc5_])
                  {
                     counterStack.splice(_loc5_,1);
                     _loc5_--;
                  }
                  _loc5_++;
               }
               if(Boolean(counterStack.length) && Boolean(counterStack[counterStack.length - 1].isPlayer))
               {
                  Battle.multiSpell = -1;
                  counterSkill = counterStack[counterStack.length - 1].getCounterSkill();
                  currentPlayer = counterStack.pop();
                  counter = true;
               }
               else if(counterStack.length)
               {
                  Battle.multiSpell = -1;
                  currentFoe = counterStack.pop();
                  foeCounter = true;
               }
               else if(swapPlayer)
               {
                  currentPlayer = swapPlayer;
                  swapPlayer = null;
               }
               else
               {
                  for each(_loc2_ in players)
                  {
                     if(_loc2_.canTakeTurn())
                     {
                        currentPlayer = _loc2_;
                        break;
                     }
                  }
               }
               if(!currentFoe && !counter && !foeCounter)
               {
                  _loc5_ = autoSpellState;
                  while(_loc5_ < players.length)
                  {
                     autoSpellState = _loc5_ + 1;
                     if(players[_loc5_].autoSpell())
                     {
                        foeTurnOver = true;
                        if(!(Battle.selectedSkill is Summon))
                        {
                           Skills.user = players[_loc5_];
                        }
                        else
                        {
                           Skills.user = Weather.weatherPlayer;
                        }
                        currentPlayer = players[_loc5_];
                        multiSpell = -1;
                        autoSpellFlag = true;
                        break;
                     }
                     _loc5_++;
                  }
               }
               if(!currentPlayer && !foeCounter)
               {
                  currentPlayer = null;
                  for each(_loc2_ in players)
                  {
                     if(!_loc2_.status[Status.FREEZE] && _loc2_.graphic.freeze && _loc2_.graphic.lastAnim != "stand" && !_loc2_.dead)
                     {
                        currentPlayer = _loc2_;
                        break;
                     }
                  }
                  if(currentPlayer)
                  {
                     if(currentPlayer.graphic.freeze)
                     {
                        currentPlayer.graphic.gotoAndStop("stand");
                        currentPlayer.graphic.lastAnim = "stand";
                        currentPlayer.graphic.k();
                     }
                  }
                  else if(turnPhase == 0)
                  {
                     turnPhase = 1;
                     weatherFlag = true;
                     foeTurnOver = false;
                     currentPlayer = null;
                     --Flags.stonedTimer;
                     fadeCooldowns();
                     SaveData.buildRelationships();
                     for each(_loc2_ in players.concat(standbyPlayers))
                     {
                        if(_loc2_)
                        {
                           _loc2_.negativeEffects();
                           _loc2_.turnTaken = true;
                        }
                     }
                     for each(_loc1_ in foes)
                     {
                        if(_loc1_)
                        {
                           _loc1_.positiveEffects();
                        }
                     }
                  }
                  else
                  {
                     currentFoe = null;
                     if(!foeTurnOver)
                     {
                        for each(_loc1_ in foes)
                        {
                           if(Boolean(_loc1_) && _loc1_.canTakeTurn())
                           {
                              _loc1_.takeTurn();
                              menu.turnStarted = false;
                              currentFoe = _loc1_;
                              break;
                           }
                        }
                     }
                     if(!currentFoe)
                     {
                        afterTurns = 0;
                        if(turnPhase == 1)
                        {
                           foeTurnOver = true;
                           turnPhase = 2;
                           if(Boolean(standbyPlayers[0]) && !standbyPlayers[0].dead)
                           {
                              standbyPlayers[0].outsideHeal(standbyPlayers[0].maxHP / 5);
                           }
                           if(Boolean(standbyPlayers[1]) && !standbyPlayers[1].dead)
                           {
                              standbyPlayers[1].outsideHeal(standbyPlayers[1].maxHP / 5);
                           }
                           for each(_loc2_ in players.concat(standbyPlayers))
                           {
                              if(_loc2_)
                              {
                                 _loc2_.positiveEffects();
                              }
                           }
                           for each(_loc1_ in foes)
                           {
                              if(_loc1_ && _loc1_.graphic.lastAnim == "freeze" && _loc1_.status[Status.FREEZE] == 1)
                              {
                                 _loc1_.graphic.gotoAndPlay("stand");
                              }
                              _loc1_.negativeEffects();
                              _loc1_.turnTaken = true;
                           }
                        }
                        else if(turnPhase == 2)
                        {
                           if(Options.turnTimeLimit)
                           {
                              menu.timesUp = false;
                              menu.turnTimer.resetTime();
                           }
                           for each(_loc2_ in players)
                           {
                              _loc2_.autoStatus();
                              _loc2_.turnTaken = false;
                           }
                           Global.element = Element.NONE;
                           if(standbyPlayers[0])
                           {
                              standbyPlayers[0].turnTaken = false;
                           }
                           if(standbyPlayers[1])
                           {
                              standbyPlayers[1].turnTaken = false;
                           }
                           for each(_loc1_ in foes)
                           {
                              if(_loc1_)
                              {
                                 _loc1_.turnTaken = false;
                              }
                           }
                           turnPhase = 0;
                           selectedTarget = null;
                           autoSpellState = 0;
                        }
                     }
                  }
               }
               else if(counter)
               {
                  selectedTarget = currentPlayer.lastAttacker;
                  targetType = counterSkill.target;
                  if(currentPlayer.canMove() && currentPlayer.lastAttacker && !currentPlayer.lastAttacker.dead)
                  {
                     currentPlayer.useSkill(counterSkill);
                  }
                  counter = false;
                  Global.counter = true;
               }
               else if(foeCounter)
               {
                  if(Boolean(currentFoe) && Boolean(currentFoe.counter2))
                  {
                     selectedTarget = randomPlayer();
                     Skills.user = currentFoe;
                     targetType = Target.ONE_ENEMY;
                     currentFoe.graphic.dirtyStatus = true;
                     currentFoe.counter2();
                  }
                  foeCounter = false;
               }
               else if(!autoSpellFlag && weatherFlag && (Weather.currentWeather != Weather.NONE || Weather.tempWeather != Weather.NONE) && !foeCounter)
               {
                  Weather.doWeather();
                  weatherFlag = false;
               }
               else if(autoSpellFlag && !foeCounter)
               {
                  autoSpellFlag = false;
               }
               else if(!currentPlayer.dead && currentPlayer.realHP == 0)
               {
                  currentPlayer.takeHit(new DamageObject({
                     "damage":1,
                     "critical":0,
                     "accuracy":99999999
                  }));
               }
               else if(currentPlayer.status[Status.HUNGRY])
               {
                  selectedTarget = currentPlayer;
                  targetType = Target.ONE_ENEMY;
                  _loc6_ = [Items.pizza,Items.burger,Items.chips,Items.crisps,Items.chili,Items.orangejuice,Items.pumpkin,Items.watermelon,Items.pineapple,Items.dragonfruit,Items.apple,Items.garlic,Items.raspberries,Items.banana,Items.pumpkin,Items.raspberries,Items.banana,Items.raspberries,Items.banana,Items.pumpkin,Items.raspberries,Items.banana,Items.garlic,Items.raspberries,Items.cloudberries,Items.blueberries,Items.cola,Items.beer,Items.bru,Items.energy][int(Math.random() * 30)];
                  selectedSkill = _loc6_;
                  currentPlayer.useItem(_loc6_);
                  if(currentPlayer.status[Status.HASTE])
                  {
                     --currentPlayer.status[Status.HASTE];
                  }
                  else
                  {
                     currentPlayer.turnTaken = true;
                  }
               }
               else if(currentPlayer.status[Status.CONFUSE])
               {
                  _loc7_ = currentPlayer.skillsMain;
                  _loc8_ = _loc7_[int(Math.random() * _loc7_.length)];
                  if(!_loc8_ || _loc8_.level < 1 || _loc8_ == Spells.medipack2 || _loc8_ == Spells.medipack || _loc8_ == Spells.charm2 || _loc8_ == Spells.berserk2 || _loc8_ == Spells.charm || _loc8_ == Spells.berserk)
                  {
                     _loc8_ = currentPlayer.skillsLimit[0];
                  }
                  targetType = _loc8_.target;
                  if(targetType == Target.ONE_ALLY || targetType == Target.ANY_ALLY)
                  {
                     selectedTarget = randomPlayer();
                  }
                  if(targetType == Target.ONE_ENEMY || targetType == Target.CENTER_ENEMY || targetType == Target.ONE_ANY)
                  {
                     selectedTarget = randomFoe();
                  }
                  currentPlayer.useSkill(_loc8_);
                  if(currentPlayer.status[Status.HASTE])
                  {
                     --currentPlayer.status[Status.HASTE];
                  }
                  else
                  {
                     currentPlayer.turnTaken = true;
                  }
               }
               else if(currentPlayer.status[Status.BERSERK])
               {
                  selectedTarget = randomFoe();
                  targetType = Target.ONE_ENEMY;
                  if(currentPlayer.berserkSkill && currentPlayer.berserkSkill.level && Math.random() < 0.4)
                  {
                     currentPlayer.useSkill(currentPlayer.berserkSkill);
                  }
                  else if(currentPlayer.berserkSkill2 && currentPlayer.berserkSkill2.level && Math.random() < 0.4)
                  {
                     currentPlayer.useSkill(currentPlayer.berserkSkill2);
                  }
                  else if(currentPlayer.berserkSkill3 && currentPlayer.berserkSkill3.level && Math.random() < 0.4)
                  {
                     currentPlayer.useSkill(currentPlayer.berserkSkill3);
                  }
                  else
                  {
                     currentPlayer.useSkill(currentPlayer.skillsLimit[0]);
                  }
                  if(currentPlayer.status[Status.HASTE])
                  {
                     --currentPlayer.status[Status.HASTE];
                  }
                  else
                  {
                     currentPlayer.turnTaken = true;
                  }
               }
               else
               {
                  weatherFlag = false;
                  menu.startTurn();
                  menu.turnStarted = true;
               }
               _loc4_ = 0;
               for each(_loc2_ in players)
               {
                  if(_loc2_.turnTaken)
                  {
                     _loc4_++;
                  }
               }
               if(_loc4_ > afterTurns)
               {
                  ++afterTurns;
                  Catching.considerSurrender();
               }
            }
         }
      }
      
      public static function fadeCooldowns() : *
      {
         var _loc1_:Spell = null;
         for each(_loc1_ in Spells.ALL_SPELLS)
         {
            if(_loc1_.cooldown)
            {
               --_loc1_.cooldown;
            }
         }
      }
      
      public static function playersDead() : *
      {
         for each(p in players)
         {
            if(!p.dead)
            {
               return false;
            }
         }
         return true;
      }
      
      public static function playersDeadOrLoved() : *
      {
         for each(p in players)
         {
            if(!p.dead && !p.status[Status.LOVED])
            {
               return false;
            }
         }
         return true;
      }
      
      public static function foesDead() : *
      {
         for each(f in foes)
         {
            if(Boolean(f) && !f.dead)
            {
               return false;
            }
         }
         return true;
      }
      
      public static function foesSurrendered() : *
      {
         for each(f in foes)
         {
            if(f && !f.dead && !f.status[Status.SURRENDER])
            {
               return false;
            }
         }
         return true;
      }
      
      public static function flee() : *
      {
         hidePlayers();
         Game.skipAutosave = true;
         end = true;
         Game.win = false;
         menu.transitions.gotoAndPlay("fadeout");
      }
      
      public static function endGame() : *
      {
         Game.skipAutosave = true;
         end = true;
         Game.win = false;
         menu.transitions.gotoAndPlay("battleend");
      }
      
      public static function exit() : *
      {
         Game.win = true;
         menu.transitions.gotoAndPlay("battleend");
      }
      
      public static function endBattle() : *
      {
      }
      
      public static function bonusSpell(param1:Number = 1) : *
      {
         if(currentPlayer)
         {
            currentPlayer.bonusSpell(param1);
         }
      }
      
      public static function randomPlayer(param1:Boolean = true, param2:Boolean = false) : Target
      {
         var _loc3_:Target = null;
         if(playersDead())
         {
            return null;
         }
         if(playersDeadOrLoved() && !param1)
         {
            if(!param2)
            {
               do
               {
                  _loc3_ = players[Math.floor(Math.random() * players.length)];
               }
               while(_loc3_.dead);
               
               return _loc3_;
            }
            return null;
         }
         if(existsTarget())
         {
            return existsTarget();
         }
         do
         {
            _loc3_ = players[Math.floor(Math.random() * players.length)];
         }
         while(_loc3_.dead || _loc3_.status[Status.LOVED] && !param1);
         
         return _loc3_;
      }
      
      public static function randomPlayerButNot(param1:Target, param2:Boolean = true) : Target
      {
         var _loc3_:Target = null;
         if(playersDead())
         {
            return null;
         }
         if(playerCountUnloved() < 2 && !param2)
         {
            return randomPlayer();
         }
         if(playersDeadOrLoved() && !param2)
         {
            return null;
         }
         if(existsTarget())
         {
            return existsTarget();
         }
         if(playerCount() == 1)
         {
            return randomPlayer();
         }
         do
         {
            _loc3_ = players[Math.floor(Math.random() * players.length)];
         }
         while(_loc3_.dead || _loc3_.status[Status.LOVED] && !param2 || _loc3_ == param1);
         
         return _loc3_;
      }
      
      public static function extraRandomPlayer() : Target
      {
         if(playersDead())
         {
            return null;
         }
         if(existsTarget())
         {
            return existsTarget();
         }
         return players[Math.floor(Math.random() * players.length)];
      }
      
      public static function mostDamagedPlayer(param1:Boolean = false) : Target
      {
         var _loc2_:Target = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         if(playersDead())
         {
            return null;
         }
         if(playersDeadOrLoved() && !param1)
         {
            return null;
         }
         if(Boolean(existsTarget()) && !param1)
         {
            return existsTarget();
         }
         _loc3_ = 100;
         _loc4_ = 0;
         while(_loc4_ < players.length)
         {
            if(players[_loc4_].getHpPercent() <= _loc3_ && !players[_loc4_].dead && (!players[_loc4_].status[Status.LOVED] || param1))
            {
               _loc2_ = players[_loc4_];
               _loc3_ = _loc2_.getHpPercent();
            }
            _loc4_++;
         }
         if(!_loc2_)
         {
            _loc2_ = randomPlayer();
         }
         return _loc2_;
      }
      
      public static function leastDamagedPlayer(param1:Boolean = false) : Target
      {
         var _loc2_:Target = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         if(playersDead())
         {
            return null;
         }
         if(playersDeadOrLoved() && !param1)
         {
            return null;
         }
         if(Boolean(existsTarget()) && !param1)
         {
            return existsTarget();
         }
         _loc3_ = 0;
         _loc4_ = 0;
         while(_loc4_ < players.length)
         {
            if(players[_loc4_].getHpPercent() >= _loc3_ && !players[_loc4_].dead && (!players[_loc4_].status[Status.LOVED] || param1))
            {
               _loc2_ = players[_loc4_];
               _loc3_ = _loc2_.getHpPercent();
            }
            _loc4_++;
         }
         if(!_loc2_)
         {
            _loc2_ = randomPlayer();
         }
         return _loc2_;
      }
      
      public static function mostDamagedFoe() : Target
      {
         var _loc1_:Target = null;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(foesDead())
         {
            return null;
         }
         _loc2_ = 100;
         _loc3_ = 0;
         while(_loc3_ < foes.length)
         {
            if(foes[_loc3_].getHpPercent() <= _loc2_ && !foes[_loc3_].dead)
            {
               _loc1_ = foes[_loc3_];
               _loc2_ = _loc1_.getHpPercent();
            }
            _loc3_++;
         }
         if(!_loc1_)
         {
            _loc1_ = randomFoe();
         }
         return _loc1_;
      }
      
      public static function leastDamagedFoe() : Target
      {
         var _loc1_:Target = null;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(foesDead())
         {
            return null;
         }
         _loc2_ = 0;
         _loc3_ = 0;
         while(_loc3_ < foes.length)
         {
            if(foes[_loc3_].getHpPercent() >= _loc2_ && !foes[_loc3_].dead)
            {
               _loc1_ = foes[_loc3_];
               _loc2_ = _loc1_.getHpPercent();
            }
            _loc3_++;
         }
         if(!_loc1_)
         {
            _loc1_ = randomFoe();
         }
         return _loc1_;
      }
      
      public static function mostDamagedPlayerOrFoe(param1:Boolean = false) : Target
      {
         var _loc2_:Target = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         if(playersDead() && foesDead())
         {
            return null;
         }
         if(playersDeadOrLoved() && !param1 && foesDead())
         {
            return null;
         }
         if(Boolean(existsTarget()) && !param1)
         {
            return existsTarget();
         }
         _loc3_ = 100;
         _loc4_ = 0;
         while(_loc4_ < foes.length + players.length)
         {
            if(players.concat(foes)[_loc4_].getHpPercent() <= _loc3_ && !players.concat(foes)[_loc4_].dead)
            {
               _loc2_ = players.concat(foes)[_loc4_];
               _loc3_ = _loc2_.getHpPercent();
            }
            _loc4_++;
         }
         if(!_loc2_ && !playersDead())
         {
            _loc2_ = randomPlayer();
         }
         else if(!_loc2_)
         {
            _loc2_ = randomFoe();
         }
         return _loc2_;
      }
      
      public static function randomStandby() : *
      {
         var _loc1_:Target = null;
         if((!standbyPlayers[0] || standbyPlayers[0].dead || Boolean(standbyPlayers[0].status[Status.LOVED])) && (!standbyPlayers[1] || standbyPlayers[1].dead || Boolean(standbyPlayers[1].status[Status.LOVED])))
         {
            return randomPlayer();
         }
         if(!standbyPlayers[0] || standbyPlayers[0].dead || Boolean(standbyPlayers[0].status[Status.LOVED]))
         {
            return standbyPlayers[1];
         }
         if(!standbyPlayers[1] || standbyPlayers[1].dead || Boolean(standbyPlayers[1].status[Status.LOVED]))
         {
            return standbyPlayers[0];
         }
         do
         {
            _loc1_ = standbyPlayers[int(Math.random() * 2)];
         }
         while(_loc1_.dead || Boolean(_loc1_.status[Status.LOVED]));
         
         return _loc1_;
      }
      
      public static function existsTarget() : Target
      {
         var _loc1_:Player = null;
         for each(_loc1_ in players)
         {
            if(_loc1_.status[Status.TARGET])
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public static function randomFoe(param1:Boolean = false) : Target
      {
         var _loc2_:Target = null;
         if(foesDead())
         {
            return foes[0];
         }
         do
         {
            _loc2_ = foes[Math.floor(Math.random() * foes.length)];
         }
         while(!_loc2_ || _loc2_.dead);
         
         return _loc2_;
      }
      
      public static function randomFoeButNot(param1:Target) : Target
      {
         var _loc2_:Target = null;
         if(foeCount() < 2)
         {
            return foes[0];
         }
         do
         {
            _loc2_ = foes[Math.floor(Math.random() * foes.length)];
         }
         while(!_loc2_ || _loc2_.dead || _loc2_ == param1);
         
         return _loc2_;
      }
      
      public static function randomWeakFoe(param1:Boolean = false) : Target
      {
         var _loc5_:Foe = null;
         var _loc6_:Target = null;
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         var _loc4_:Array = [];
         if(foesDead())
         {
            return foes[0];
         }
         for each(_loc5_ in foes)
         {
            if(!_loc5_.dead && !_loc5_.status[Status.SURRENDER] && _loc5_.getResistance("elemental",selectedSkill.getStats().element) > 1.4)
            {
               _loc3_.push(_loc5_);
            }
            if(!_loc5_.dead && !_loc5_.status[Status.SURRENDER] && _loc5_.getHpPercent() < _loc5_.hit2HP && _loc5_.getResistance("elemental",selectedSkill.getStats().element) > 0.8)
            {
               _loc3_.push(_loc5_);
            }
            else if(!_loc5_.dead && !_loc5_.status[Status.SURRENDER] && _loc5_.getHpPercent() < _loc5_.hit2HP / 2 && _loc5_.getResistance("elemental",selectedSkill.getStats().element) > 0.4)
            {
               _loc3_.push(_loc5_);
               _loc2_.push(_loc5_);
            }
            if(!_loc5_.dead && !_loc5_.status[Status.SURRENDER] && _loc5_.getResistance("elemental",selectedSkill.getStats().element) > 0.9)
            {
               _loc4_.push(_loc5_);
            }
         }
         if(_loc3_.length == 0 && _loc4_.length != 0)
         {
            _loc3_ = _loc4_;
         }
         if(_loc2_.length != 0)
         {
            _loc3_ = _loc2_;
         }
         if(_loc3_.length == 0)
         {
            return randomFoe();
         }
         while(true)
         {
            _loc6_ = _loc3_[int(Math.random() * _loc3_.length)];
            if(!(!_loc6_ || _loc6_.dead))
            {
               break;
            }
         }
         return _loc6_;
      }
      
      public static function randomFoeNotSurrendered(param1:Boolean = false) : Target
      {
         var _loc2_:Target = null;
         if(foesSurrendered())
         {
            return null;
         }
         do
         {
            _loc2_ = foes[Math.floor(Math.random() * foes.length)];
         }
         while(!_loc2_ || _loc2_.dead || Boolean(_loc2_.status[Status.SURRENDER]));
         
         return _loc2_;
      }
      
      public static function randomTarget() : *
      {
         var _loc1_:Target = null;
         var _loc2_:Array = players.concat(foes);
         if(foesDead() && playersDead())
         {
            return foes[0];
         }
         do
         {
            _loc1_ = _loc2_[Math.floor(Math.random() * _loc2_.length)];
         }
         while(!_loc1_ || _loc1_.dead);
         
         return _loc1_;
      }
      
      public static function speedUp() : *
      {
         var _loc2_:Foe = null;
         var _loc3_:Player = null;
         var _loc4_:SpellMC = null;
         if(Options.frameskip == 0)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < Options.frameskip + 2)
         {
            for each(_loc2_ in foes)
            {
               if(Boolean(_loc2_.graphic) && !_loc2_.graphic.stopped)
               {
                  _loc2_.graphic.nextFrame();
               }
            }
            for each(_loc3_ in players)
            {
               if(Boolean(_loc3_.graphic) && !_loc3_.graphic.stopped)
               {
                  _loc3_.graphic.nextFrame();
               }
            }
            for each(_loc4_ in stage.spellMCs)
            {
               if(_loc4_)
               {
                  _loc4_.gotoAndStop(_loc4_.currentFrame + 1);
               }
            }
            _loc1_++;
         }
      }
   }
}

