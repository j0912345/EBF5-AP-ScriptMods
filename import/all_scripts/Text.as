package
{
   import text.*;
   import text.english.*;
   
   public class Text
   {
      public static var style:Object;
      
      public static var shakes:int;
      
      public static var mattDies:Array;
      
      public static var natzDies:Array;
      
      public static var lanceDies:Array;
      
      public static var annaDies:Array;
      
      public static var nolegsDies:Array;
      
      public static var mattRevives:Array;
      
      public static var natzRevives:Array;
      
      public static var lanceRevives:Array;
      
      public static var annaRevives:Array;
      
      public static var nolegsRevives:Array;
      
      public static var mattEats:Array;
      
      public static var natzEats:Array;
      
      public static var lanceEats:Array;
      
      public static var annaEats:Array;
      
      public static var nolegsEats:Array;
      
      public static var tips:Array;
      
      public static var mattHit:Array;
      
      public static var natzHit:Array;
      
      public static var lanceHit:Array;
      
      public static var annaHit:Array;
      
      public static var nolegsHit:Array;
      
      public static var mattBigHit:Array;
      
      public static var natzBigHit:Array;
      
      public static var lanceBigHit:Array;
      
      public static var annaBigHit:Array;
      
      public static var nolegsBigHit:Array;
      
      public static var mattBackup:Array;
      
      public static var natzBackup:Array;
      
      public static var lanceBackup:Array;
      
      public static var annaBackup:Array;
      
      public static var nolegsBackup:Array;
      
      public static var mattVictory:Array;
      
      public static var natzVictory:Array;
      
      public static var lanceVictory:Array;
      
      public static var annaVictory:Array;
      
      public static var nolegsVictory:Array;
      
      public static var mattStatus:Array;
      
      public static var natzStatus:Array;
      
      public static var lanceStatus:Array;
      
      public static var annaStatus:Array;
      
      public static var nolegsStatus:Array;
      
      public static var miscStatus:Array;
      
      public static var mattSkills:Array;
      
      public static var natzSkills:Array;
      
      public static var lanceSkills:Array;
      
      public static var annaSkills:Array;
      
      public static var nolegsSkills:Array;
      
      public static var miscSkills:Array;
      
      public static var mattEquips:Array;
      
      public static var natzEquips:Array;
      
      public static var lanceEquips:Array;
      
      public static var annaEquips:Array;
      
      public static var nolegsEquips:Array;
      
      public static var mattCatching:Array;
      
      public static var natzCatching:Array;
      
      public static var lanceCatching:Array;
      
      public static var annaCatching:Array;
      
      public static var nolegsCatching:Array;
      
      public static var mattSummon:Array;
      
      public static var natzSummon:Array;
      
      public static var lanceSummon:Array;
      
      public static var annaSummon:Array;
      
      public static var nolegsSummon:Array;
      
      public static var mattFlee:Array;
      
      public static var natzFlee:Array;
      
      public static var lanceFlee:Array;
      
      public static var annaFlee:Array;
      
      public static var nolegsFlee:Array;
      
      public static var bushes:Array;
      
      public static var idols:Array;
      
      public static var boulders:Array;
      
      public static var dogs:Array;
      
      public static var cats:Array;
      
      public static var wraiths:Array;
      
      public static var sprites:Array;
      
      public static var mirrors:Array;
      
      public static var hands:Array;
      
      public static var flybots:Array;
      
      public static var mammoths:Array;
      
      public static var fallen:Array;
      
      public static var dolls:Array;
      
      public static var defenders:Array;
      
      public static var chompers:Array;
      
      public static var bears:Array;
      
      public static var creeps:Array;
      
      public static var golems:Array;
      
      public static var worms:Array;
      
      public static var monoliths:Array;
      
      public static var squids:Array;
      
      public static var fish:Array;
      
      public static var dragons:Array;
      
      public static var slimes:Array;
      
      public static var gloops:Array;
      
      public static var chibi:Array;
      
      public static var hydra:Array;
      
      public static var cyclops:Array;
      
      public static var sisters:Array;
      
      public static var poseidon:Array;
      
      public static var vulcan:Array;
      
      public static var snowflake:Array;
      
      public static var glitch:Array;
      
      public static var evilMatt:Array;
      
      public static var evilNatz:Array;
      
      public static var evilLance:Array;
      
      public static var evilAnna:Array;
      
      public static var evilNolegs:Array;
      
      public static var cocoon:Array;
      
      public static var nest:Array;
      
      public static var nolegs:Array;
      
      public static var natalie:Array;
      
      public static var anna:Array;
      
      public static var lance:Array;
      
      public static var gigaFortress:Array;
      
      public static var gigalith:Array;
      
      public static var devourer:Array;
      
      public static var arcade:Array;
      
      public static var chair:Array;
      
      public static var treagure:Array;
      
      public static var bosh:Array;
      
      public static var robo:Array;
      
      public static var glob:Array;
      
      public static var snek:Array;
      
      public static var guoye:Array;
      
      public static var totom:Array;
      
      public static var phoenix:Array;
      
      public static var pumpkus:Array;
      
      public static var maw:Array;
      
      public static var mermaid:Array;
      
      public static var library:Array;
      
      public static var arena:Array;
      
      public static var bunker:Array;
      
      public static var ebf1:Array;
      
      public static var ebf2:Array;
      
      public static var ebf3:Array;
      
      public static var ebf4:Array;
      
      public static const MATT_NATZ:* = "mattXnatz";
      
      public static const MATT_ANNA:* = "mattXanna";
      
      public static const MATT_LANCE:* = "mattXlance";
      
      public static const LANCE_NATZ:* = "lanceXnatz";
      
      public static const LANCE_ANNA:* = "lanceXanna";
      
      public static const ANNA_NATZ:* = "annaXnatz";
      
      public static var CYCLOPS:Object = {
         "effect":"cyclops",
         "color":16777215
      };
      
      public static var GOLEM_A:Object = {
         "color":12969463,
         "effect":"shake"
      };
      
      public static var GOLEM_B:Object = {
         "color":16766099,
         "effect":"shake"
      };
      
      public static var SNOWFLAKE:Object = {
         "effect":"pixel",
         "color":16777215
      };
      
      public static var GLITCH:Object = {
         "effect":"glitch",
         "color":16777215
      };
      
      public static var DEVOURER:Object = {
         "effect":"shake",
         "color":16770169
      };
      
      public static var EVIL_MATT:Object = {
         "effect":"cyclops",
         "color":14866894
      };
      
      public static var EVIL_NATZ:Object = {
         "effect":"wave",
         "color":16109718
      };
      
      public static var EVIL_ANNA:Object = {
         "effect":"wave",
         "color":16109718,
         "effect":"wave"
      };
      
      public static var EVIL_NOLEGS:Object = {
         "effect":"shake",
         "color":16777164
      };
      
      public static var test:Array = [];
      
      public static var ignoreDeath:Boolean = false;
      
      public static var finalHit:Boolean = true;
      
      public static var listOfLists:Array = ["mattDies","natzDies","lanceDies","annaDies","nolegsDies","mattRevives","natzRevives","lanceRevives","annaRevives","nolegsRevives","mattEats","natzEats","lanceEats","annaEats","nolegsEats","tips","mattHit","natzHit","lanceHit","annaHit","nolegsHit","mattBigHit","natzBigHit","lanceBigHit","annaBigHit","nolegsBigHit","mattBackup","natzBackup","lanceBackup","annaBackup","nolegsBackup","mattStatus","natzStatus","lanceStatus","annaStatus","nolegsStatus","miscStatus","mattSkills","natzSkills","lanceSkills","annaSkills","nolegsSkills","miscSkills","mattEquips","natzEquips","lanceEquips","annaEquips","nolegsEquips","mattCatching","natzCatching","lanceCatching","annaCatching","nolegsCatching","mattSummon","natzSummon","lanceSummon","annaSummon","nolegsSummon","mattFlee","natzFlee","lanceFlee","annaFlee","nolegsFlee","mattVictory","natzVictory","lanceVictory","annaVictory","nolegsVictory","bushes","idols","boulders","dogs","cats","wraiths","sprites","mirrors","hands","flybots","mammoths","fallen","dolls","defenders","chompers","bears","creeps","golems","worms","monoliths","squids","fish","dragons","slimes","gloops","chibi","hydra","cyclops","sisters","poseidon","vulcan","snowflake","glitch","evilMatt","evilNatz","evilLance","evilAnna","evilNolegs","cocoon","nest","nolegs","natalie","anna","lance","gigaFortress","gigalith","devourer","arcade","chair","treagure","bosh","robo","glob","snek","guoye","totom","phoenix","pumpkus","maw","mermaid","library","arena","bunker","ebf1","ebf2","ebf3","ebf4"];
      
      test[0] = {"text":[["Look! There\'s humans over there! \nLet\'s hassle them for food! They\'ve always got food!"]]};
      test[1] = {"text":[["Oh no! They\'re killing us!                                     \nWhy are they doing this?!"]]};
      
      public function Text()
      {
         super();
      }
      
      public static function getPlayerNumberFromEmoticon(param1:int) : int
      {
         if(param1 <= 30)
         {
            return 1;
         }
         if(param1 <= 60)
         {
            return 2;
         }
         if(param1 <= 90)
         {
            return 3;
         }
         if(param1 <= 120)
         {
            return 4;
         }
         if(param1 <= 150)
         {
            return 5;
         }
         return 0;
      }
      
      public static function resetArcadeText() : *
      {
         i = 1;
         while(i <= 11)
         {
            snowflake[i].spoken = false;
            ++i;
         }
         i = 5;
         while(i <= 17)
         {
            arcade[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 4)
         {
            chair[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 4)
         {
            bosh[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 5)
         {
            robo[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 4)
         {
            glob[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 3)
         {
            snek[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 6)
         {
            pumpkus[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 5)
         {
            guoye[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 6)
         {
            phoenix[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 5)
         {
            totom[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 3)
         {
            treagure[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 5)
         {
            mermaid[i].spoken = false;
            ++i;
         }
         i = 0;
         while(i <= 6)
         {
            maw[i].spoken = false;
            ++i;
         }
      }
      
      public static function speech(param1:Object, param2:Object = null, param3:Boolean = false) : Boolean
      {
         var _loc7_:Player = null;
         var _loc8_:Player = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         if(Flags.battleEvent == Flags.BOSS_RUSH || Flags.battleEvent == Flags.SUPER_BOSS_RUSH)
         {
            return false;
         }
         if(!Debug.dialogueEnabled)
         {
            return false;
         }
         if(!param1.text)
         {
            return false;
         }
         if(Debug.bossDemo && Boolean(param1.user))
         {
            return false;
         }
         if(Debug.expoDemo && (Boolean(param1.user) || Boolean(param1.players)))
         {
            return false;
         }
         if(param1.text[0] == null || param1.text[0] == "" || param1.text.length == 0)
         {
            return false;
         }
         if(!param3 && Boolean(param1.spoken))
         {
            return true;
         }
         if(Battle.menu.speechBox.busy)
         {
            return false;
         }
         if(Boolean(param1.chance) && param1.chance > Math.random())
         {
            return false;
         }
         if(Boolean(param1.filter) && !Options[param1.filter])
         {
            return false;
         }
         if(Boolean(param1.speakingTo) && Battle.players.indexOf(Players.PLAYERS[param1.speakingTo - 1]) == -1)
         {
            return false;
         }
         if(Boolean(param1.target) && Battle.selectedTarget != Players.PLAYERS[param1.target - 1])
         {
            return false;
         }
         var _loc4_:int = 16777215;
         var _loc5_:String = "Verdana";
         var _loc6_:String = "none";
         if(param1.style)
         {
            _loc4_ = int(param1.style.color);
            _loc6_ = param1.style.effect;
            _loc5_ = param1.style.font;
         }
         if(Options.GUIskin == 4)
         {
            _loc4_ = 16777215;
         }
         if(Options.language != Options.ENGLISH)
         {
            _loc5_ = GUI.NORMAL_FONT;
            if(_loc6_ == "shake" && !Options.isCJK())
            {
               _loc6_ = "shake2";
            }
            else
            {
               _loc6_ = "none";
            }
         }
         GUI.setTextEffects(_loc5_,_loc4_,_loc6_);
         var _loc9_:Boolean = false;
         if(!param1.player)
         {
            if(param1.text[1] == null)
            {
               return false;
            }
            param1.player = getPlayerNumberFromEmoticon(param1.text[1]);
         }
         if(!param1.altPlayer && param1.text.length == 3)
         {
            if(param1.text[2] == null)
            {
               return false;
            }
            param1.altPlayer = getPlayerNumberFromEmoticon(param1.text[2]);
         }
         if(param1.player)
         {
            _loc7_ = Players.PLAYERS[param1.player - 1];
         }
         if(param1.altPlayer)
         {
            _loc8_ = Players.PLAYERS[param1.altPlayer - 1];
         }
         if(Boolean(param1.user) && !(Skills.user is Player))
         {
            return;
         }
         if(Boolean(param1.user) && param1.user != (Skills.user as Player).playerNo)
         {
            return false;
         }
         if(Boolean(param1.user) && Battle.autoSpellFlag)
         {
            return false;
         }
         if(Boolean(param1.players) && (Battle.autoSpellFlag || !(Skills.user is Player)))
         {
            return false;
         }
         if(param1.text == "")
         {
            return false;
         }
         if(Boolean(param1.noAltFoes) && !Flags.isBunkerBattle())
         {
            return;
         }
         if(param1.boss)
         {
            if(Flags.battleEvent == Flags.PAPER_BATTLE && _loc7_.dead)
            {
               return false;
            }
            if(Flags.battleEvent >= 47 && Flags.battleEvent <= 54)
            {
               if(_loc7_ != null && Battle.players.indexOf(_loc7_) == -1)
               {
                  if(_loc8_ != null && Battle.players.indexOf(_loc8_) != -1)
                  {
                     _loc9_ = true;
                  }
               }
            }
            if(param1.party && !_loc9_ && Game.party.indexOf(_loc7_) == -1)
            {
               return false;
            }
            if(param1.undead && !Flags.isBunkerBattle() && (_loc7_.dead && !_loc9_ || _loc9_ && _loc8_.dead))
            {
               return false;
            }
         }
         else if(_loc7_ != null && (Battle.players.indexOf(_loc7_) == -1 || _loc7_.dead && !ignoreDeath || !_loc7_.canMove() && !ignoreDeath))
         {
            if(_loc8_ == null || _loc8_ != null && (Battle.players.indexOf(_loc8_) == -1 || _loc8_.dead && !ignoreDeath || !_loc8_.canMove() && !ignoreDeath))
            {
               return false;
            }
            _loc9_ = true;
         }
         Battle.menu.speechBox.busy = true;
         Battle.menu.speechBox.fader.gotoAndPlay(1);
         Battle.menu.speechBox.texter.reset();
         Battle.menu.speechBox.body.text = "";
         Battle.menu.speechBox.texter.fullText = param1.text[0];
         Battle.menu.speechBox.visible = true;
         if(Options.turnTimeLimit)
         {
            Battle.menu.turnTimer.pause();
         }
         var _loc10_:Boolean = Options.idlePlayers;
         Options.idlePlayers = false;
         if(param1.style)
         {
            style = param1.style;
         }
         if(_loc9_ && !param1.text[2])
         {
            _loc11_ = int(param1.text[1]);
         }
         else if(_loc9_)
         {
            _loc11_ = int(param1.text[2]);
         }
         else
         {
            _loc11_ = int(param1.text[1]);
         }
         Battle.menu.speechBox.emo.playerNo = getPlayerNumberFromEmoticon(_loc11_);
         Battle.menu.speechBox.emo.checkMouth();
         if(param2)
         {
            if(param2.skin)
            {
               Battle.menu.speechBox.emo.skin = param2.skin;
            }
            if(param2.skinDamage)
            {
               Battle.menu.speechBox.emo.skinDamage = param2.skinDamage;
            }
         }
         Battle.menu.speechBox.emo.gotoAndStop(_loc11_);
         Options.idlePlayers = _loc10_;
         if(Boolean(style) && Boolean(style.effect))
         {
            Battle.menu.speechBox.gotoAndPlay(style.effect);
         }
         if(param1.points)
         {
            _loc12_ = SaveData.SPEECH_POINTS;
            if(Battle.players.indexOf(Players.player5))
            {
               _loc12_ *= 3;
            }
            SaveData[param1.points] += _loc12_;
         }
         param1.spoken = true;
         return true;
      }
      
      public static function death(param1:int) : *
      {
         var _loc2_:int = 0;
         if(!(Players.PLAYERS[param1 - 1] as Player).lastAttacker || Skills.user == Weather.weatherFoe)
         {
            return;
         }
         if(Battle.turnPhase != 1)
         {
            return;
         }
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46)
         {
            ignoreDeath = true;
            speech(arcade[1]);
            speech(arcade[9]);
         }
         else if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            ignoreDeath = true;
            if(!Players.PLAYERS[param1 - 1].status[Status.AUTOLIFE])
            {
               Text.speech(arena[4 + param1],null,true);
            }
         }
         else
         {
            _loc2_ = 1 + Math.random() * (mattDies.length - 1);
            if(_loc2_ <= 3)
            {
               ignoreDeath = true;
            }
            if(param1 == 1 && !Players.player1.status[Status.AUTOLIFE])
            {
               speech(mattDies[_loc2_]);
            }
            if(param1 == 2 && !Players.player2.status[Status.AUTOLIFE])
            {
               speech(natzDies[_loc2_]);
            }
            if(param1 == 3 && !Players.player3.status[Status.AUTOLIFE])
            {
               speech(lanceDies[_loc2_]);
            }
            if(param1 == 4 && !Players.player4.status[Status.AUTOLIFE])
            {
               speech(annaDies[_loc2_]);
            }
            if(param1 == 5 && !Players.player5.status[Status.AUTOLIFE])
            {
               speech(nolegsDies[_loc2_]);
            }
         }
         ignoreDeath = false;
      }
      
      public static function revive(param1:int) : *
      {
         if(param1 == 1)
         {
            speech(mattRevives[int(1 + Math.random() * (mattRevives.length - 1))]);
         }
         if(param1 == 2)
         {
            speech(natzRevives[int(1 + Math.random() * (natzRevives.length - 1))]);
         }
         if(param1 == 3)
         {
            speech(lanceRevives[int(1 + Math.random() * (lanceRevives.length - 1))]);
         }
         if(param1 == 4)
         {
            speech(annaRevives[int(1 + Math.random() * (annaRevives.length - 1))]);
         }
         if(param1 == 5)
         {
            speech(nolegsRevives[int(1 + Math.random() * (nolegsRevives.length - 1))]);
         }
      }
      
      public static function eat(param1:int) : *
      {
         if(param1 == 1)
         {
            if(Battle.selectedSkill == Items.pumpkin || Battle.selectedSkill == Items.raspberries || Battle.selectedSkill == Items.blueberries || Battle.selectedSkill == Items.pineapple || Battle.selectedSkill == Items.cloudberries)
            {
               speech(mattEats[1]);
            }
            if(Battle.selectedSkill == Items.garlic || Battle.selectedSkill == Items.chili)
            {
               speech(mattEats[2]);
            }
            if(Battle.selectedSkill == Items.beer || Battle.selectedSkill == Items.cola || Battle.selectedSkill == Items.energy || Battle.selectedSkill == Items.bru)
            {
               speech(mattEats[3]);
            }
            if(Battle.selectedSkill == Items.pizza)
            {
               speech(mattEats[4]);
            }
            if(Battle.selectedSkill == Items.beer)
            {
               speech(mattEats[5]);
            }
         }
         if(param1 == 2)
         {
            if(Battle.selectedSkill == Items.cola || Battle.selectedSkill == Items.energy || Battle.selectedSkill == Items.bru)
            {
               speech(natzEats[1]);
            }
            if(Battle.selectedSkill == Items.crisps || Battle.selectedSkill == Items.pretzel || Battle.selectedSkill == Items.cupcake || Battle.selectedSkill == Items.garlic)
            {
               speech(natzEats[2]);
            }
            if(Battle.selectedSkill == Items.cola || Battle.selectedSkill == Items.energy || Battle.selectedSkill == Items.bru)
            {
               speech(natzEats[3]);
            }
            if(Battle.selectedSkill == Items.burger || Battle.selectedSkill == Items.pizza || Battle.selectedSkill == Items.chips)
            {
               speech(natzEats[4]);
            }
            if(Battle.selectedSkill == Items.chili)
            {
               speech(natzEats[5]);
            }
         }
         if(param1 == 3)
         {
            if(Battle.selectedSkill == Items.pumpkin || Battle.selectedSkill == Items.raspberries || Battle.selectedSkill == Items.blueberries || Battle.selectedSkill == Items.pineapple || Battle.selectedSkill == Items.cloudberries)
            {
               speech(lanceEats[1]);
            }
            if(Battle.selectedSkill == Items.energy || Battle.selectedSkill == Items.bru)
            {
               speech(lanceEats[2]);
            }
            if(Battle.selectedSkill == Items.pumpkin || Battle.selectedSkill == Items.raspberries || Battle.selectedSkill == Items.blueberries || Battle.selectedSkill == Items.pineapple || Battle.selectedSkill == Items.cloudberries)
            {
               speech(lanceEats[3]);
            }
            if(Battle.selectedSkill == Items.burger || Battle.selectedSkill == Items.pizza)
            {
               speech(lanceEats[4]);
            }
            if(Battle.selectedSkill == Items.chili || Battle.selectedSkill == Items.garlic)
            {
               speech(lanceEats[5]);
            }
         }
         if(param1 == 4)
         {
            if(Battle.selectedSkill == Items.watermelon || Battle.selectedSkill == Items.dragonfruit || Battle.selectedSkill == Items.blueberries || Battle.selectedSkill == Items.pineapple || Battle.selectedSkill == Items.cloudberries)
            {
               speech(annaEats[1]);
            }
            if(Battle.selectedSkill == Items.crisps || Battle.selectedSkill == Items.chips || Battle.selectedSkill == Items.pretzel || Battle.selectedSkill == Items.cupcake)
            {
               speech(annaEats[2]);
            }
            if(Battle.selectedSkill == Items.beer || Battle.selectedSkill == Items.energy)
            {
               speech(annaEats[3]);
            }
            if(Battle.selectedSkill == Items.burger || Battle.selectedSkill == Items.pizza)
            {
               speech(annaEats[4]);
            }
            if(Battle.selectedSkill == Items.chili)
            {
               speech(annaEats[5]);
            }
         }
         if(param1 == 5)
         {
            if(Battle.selectedSkill == Items.pumpkin || Battle.selectedSkill == Items.raspberries || Battle.selectedSkill == Items.blueberries || Battle.selectedSkill == Items.pineapple || Battle.selectedSkill == Items.cloudberries)
            {
               speech(nolegsEats[1]);
            }
            if(Battle.selectedSkill == Items.crisps || Battle.selectedSkill == Items.chips || Battle.selectedSkill == Items.pretzel || Battle.selectedSkill == Items.cupcake)
            {
               speech(nolegsEats[2]);
            }
            if(Battle.selectedSkill == Items.beer || Battle.selectedSkill == Items.cola || Battle.selectedSkill == Items.energy || Battle.selectedSkill == Items.bru)
            {
               speech(nolegsEats[3]);
            }
            if(Battle.selectedSkill == Items.garlic || Battle.selectedSkill == Items.chili)
            {
               speech(nolegsEats[4]);
            }
            if(Battle.selectedSkill == Items.cola || Battle.selectedSkill == Items.energy || Battle.selectedSkill == Items.bru)
            {
               speech(nolegsEats[5]);
            }
         }
      }
      
      public static function hit(param1:int) : *
      {
         if(Game.party.length < 2)
         {
            return;
         }
         if(Debug.expoDemo)
         {
            return;
         }
         if(Debug.bossDemo)
         {
            return;
         }
         if(!(Players.PLAYERS[param1 - 1] as Player).lastAttacker || !finalHit || Skills.user == Weather.weatherFoe)
         {
            return;
         }
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            if(param1 == 1)
            {
               speech(arcade[2]);
            }
            if(Math.random() > 0.15)
            {
               return;
            }
            if(param1 == 2)
            {
               speech(arcade[3]);
            }
            if(param1 == 3)
            {
               speech(arcade[4]);
            }
         }
         else
         {
            if(Math.random() > 0.15)
            {
               return;
            }
            if(param1 == 1)
            {
               speech(mattHit[int(1 + Math.random() * (mattHit.length - 1))]);
            }
            if(param1 == 2)
            {
               speech(natzHit[int(1 + Math.random() * (natzHit.length - 1))]);
            }
            if(param1 == 3)
            {
               speech(lanceHit[int(1 + Math.random() * (lanceHit.length - 1))]);
            }
            if(param1 == 4)
            {
               speech(annaHit[int(1 + Math.random() * (annaHit.length - 1))]);
            }
            if(param1 == 5)
            {
               speech(nolegsHit[int(1 + Math.random() * (nolegsHit.length - 1))]);
            }
         }
      }
      
      public static function bigHit(param1:int) : *
      {
         if(Debug.expoDemo)
         {
            return;
         }
         if(!(Players.PLAYERS[param1 - 1] as Player).lastAttacker || !finalHit || Skills.user == Weather.weatherFoe)
         {
            return;
         }
         var _loc2_:int = Players.player1.level / 4;
         if(_loc2_ < 1)
         {
            _loc2_ = 1;
         }
         if(_loc2_ > 6)
         {
            _loc2_ = 6;
         }
         if(param1 == 1)
         {
            speech(mattBigHit[int(1 + Math.random() * _loc2_)]);
         }
         if(param1 == 2)
         {
            speech(natzBigHit[int(1 + Math.random() * _loc2_)]);
         }
         if(param1 == 3)
         {
            speech(lanceBigHit[int(1 + Math.random() * _loc2_)]);
         }
         if(param1 == 4)
         {
            speech(annaBigHit[int(1 + Math.random() * _loc2_)]);
         }
         if(param1 == 5)
         {
            speech(nolegsBigHit[int(1 + Math.random() * _loc2_)]);
         }
      }
      
      public static function backupOut(param1:int) : *
      {
         if(Debug.expoDemo)
         {
            return;
         }
         if(Debug.bossDemo)
         {
            return;
         }
         if(Battle.standbySwitch == 0)
         {
            return;
         }
         if(Math.random() > 0.25)
         {
            return;
         }
         if(param1 == 1)
         {
            speech(mattBackup[int(3 + Math.random() * 2)]);
         }
         if(param1 == 2)
         {
            speech(natzBackup[int(3 + Math.random() * 2)]);
         }
         if(param1 == 3)
         {
            speech(lanceBackup[int(3 + Math.random() * 2)]);
         }
         if(param1 == 4)
         {
            speech(annaBackup[int(3 + Math.random() * 2)]);
         }
         if(param1 == 5)
         {
            speech(nolegsBackup[int(3 + Math.random() * 2)]);
         }
      }
      
      public static function backupIn(param1:int) : *
      {
         if(Debug.expoDemo)
         {
            return;
         }
         if(Debug.bossDemo)
         {
            return;
         }
         if(!Flags.TANK_DEFEATED.quantity)
         {
            return;
         }
         if(Math.random() > 0.1)
         {
            return;
         }
         if(Battle.standbySwitch == 0)
         {
            return;
         }
         if(param1 == 1)
         {
            speech(mattBackup[int(1 + Math.random() * 2)]);
         }
         if(param1 == 2)
         {
            speech(natzBackup[int(1 + Math.random() * 2)]);
         }
         if(param1 == 3)
         {
            speech(lanceBackup[int(1 + Math.random() * 2)]);
         }
         if(param1 == 4)
         {
            speech(annaBackup[int(1 + Math.random() * 2)]);
         }
         if(param1 == 5)
         {
            speech(nolegsBackup[int(1 + Math.random() * 2)]);
         }
      }
      
      public static function flee(param1:int) : *
      {
         if(Debug.expoDemo)
         {
            return;
         }
         if(!Battle.end)
         {
            return;
         }
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46)
         {
            speech(arcade[5]);
         }
         if(Flags.battleEvent == Flags.GLITCH)
         {
            Text.speech(Text.glitch[10]);
         }
         if(param1 == 1)
         {
            speech(mattFlee[int(4 + Math.random() * 2)],null,true);
         }
         if(param1 == 2)
         {
            speech(natzFlee[int(4 + Math.random() * 2)],null,true);
         }
         if(param1 == 3)
         {
            speech(lanceFlee[int(4 + Math.random() * 2)],null,true);
         }
         if(param1 == 4)
         {
            speech(annaFlee[int(4 + Math.random() * 2)],null,true);
         }
         if(param1 == 5)
         {
            speech(nolegsFlee[int(4 + Math.random() * 2)],null,true);
         }
      }
      
      public static function hasStatus(param1:Player, param2:String) : *
      {
         if(param1.dead)
         {
            return;
         }
         if(param2 == Status.BERSERK)
         {
            Medals.unlock(Medals.berzerkersRage);
         }
         if(param2 == Status.CONFUSE)
         {
            Medals.unlock(Medals.confusion);
         }
         if(param2 == Status.SHROUD)
         {
            Medals.unlock(Medals.fogOfWar);
         }
         if(param2 == Status.DISABLE)
         {
            Medals.unlock(Medals.disarmed);
         }
         if(param2 == Status.HUNGRY)
         {
            Medals.unlock(Medals.uncontrollableHunger);
         }
         if(param2 == Status.DOOM && Boolean(param1.status[Status.DOOM]))
         {
            speech(miscStatus[4]);
         }
         if(param2 == Status.AUTOLIFE || param2 == Status.MORALE)
         {
            speech(miscStatus[3]);
         }
         ignoreDeath = true;
         if(param1.playerNo == 1)
         {
            if(param2 == Status.BERSERK)
            {
               speech(mattStatus[1]);
            }
            if(param2 == Status.BERSERK)
            {
               speech(mattStatus[2]);
            }
            if(param2 == Status.CONFUSE)
            {
               speech(mattStatus[3]);
            }
            if(param2 == Status.HUNGRY)
            {
               speech(mattStatus[4]);
            }
            if(param2 == Status.ENCHANTED || param2 == Status.INVISIBLE)
            {
               speech(mattStatus[5]);
            }
            if(param2 == Status.SHROUD)
            {
               speech(mattStatus[6]);
            }
            if(param2 == Status.STUN)
            {
               speech(mattStatus[7]);
            }
            if(param2 == Status.DOOM && Boolean(param1.status[Status.DOOM]))
            {
               speech(mattStatus[8]);
            }
            if(param2 == Status.STUFFED)
            {
               speech(mattStatus[10]);
            }
         }
         if(param1.playerNo == 2)
         {
            if(param2 == Status.BERSERK)
            {
               speech(natzStatus[1]);
            }
            if(param2 == Status.CONFUSE)
            {
               speech(natzStatus[2]);
            }
            if(param2 == Status.HUNGRY)
            {
               speech(natzStatus[3]);
            }
            if(param2 == Status.ENCHANTED || param2 == Status.INVISIBLE)
            {
               speech(natzStatus[4]);
            }
            if(param2 == Status.SHROUD)
            {
               speech(natzStatus[5]);
            }
            if(param2 == Status.STUFFED)
            {
               speech(natzStatus[6]);
            }
            if(param2 == Status.STUN)
            {
               speech(natzStatus[7]);
            }
            if(param2 == Status.STUFFED)
            {
               speech(natzStatus[10]);
            }
         }
         if(param1.playerNo == 3)
         {
            if(param2 == Status.BERSERK)
            {
               speech(lanceStatus[1]);
            }
            if(param2 == Status.CONFUSE)
            {
               speech(lanceStatus[2]);
            }
            if(param2 == Status.HUNGRY)
            {
               speech(lanceStatus[3]);
            }
            if(param2 == Status.SHROUD)
            {
               speech(lanceStatus[4]);
            }
            if(param2 == Status.STUN)
            {
               speech(lanceStatus[5]);
            }
         }
         if(param1.playerNo == 4)
         {
            if(param2 == Status.BERSERK)
            {
               speech(annaStatus[1]);
            }
            if(param2 == Status.CONFUSE)
            {
               speech(annaStatus[2]);
            }
            if(param2 == Status.HUNGRY)
            {
               speech(annaStatus[3]);
            }
            if(param2 == Status.ENCHANTED || param2 == Status.INVISIBLE)
            {
               speech(annaStatus[4]);
            }
            if(param2 == Status.STUN)
            {
               speech(annaStatus[5]);
            }
         }
         if(param1.playerNo == 5)
         {
            if(param2 == Status.BERSERK)
            {
               speech(nolegsStatus[1]);
            }
            if(param2 == Status.CONFUSE)
            {
               speech(nolegsStatus[2]);
            }
            if(param2 == Status.HUNGRY)
            {
               speech(nolegsStatus[3]);
            }
            if(param2 == Status.ENCHANTED || param2 == Status.INVISIBLE || param2 == Status.SHROUD)
            {
               speech(nolegsStatus[4]);
            }
            if(param2 == Status.STUN)
            {
               speech(nolegsStatus[5]);
            }
         }
         if(param1.playerNo != 2)
         {
            ignoreDeath = false;
            if(param2 == Status.FREEZE)
            {
               speech(natzStatus[9]);
            }
         }
         if(param1.playerNo != 4)
         {
            ignoreDeath = false;
            if(param2 == Status.FREEZE)
            {
               speech(annaStatus[8]);
            }
         }
         ignoreDeath = false;
      }
      
      public static function inflictStatus(param1:Player, param2:String) : *
      {
         if(param1.dead)
         {
            return;
         }
         if(param2 == Status.DISPEL)
         {
            speech(miscStatus[2]);
         }
         ignoreDeath = true;
         if(param2 == Status.DISPEL)
         {
            speech(annaStatus[6]);
         }
         if(param1.playerNo == 1)
         {
            speech(tips[2]);
            if(param2 == Status.DISABLE)
            {
               speech(mattStatus[9]);
            }
         }
         if(param1.playerNo == 2)
         {
            if(param2 == Status.DISABLE)
            {
               speech(natzStatus[8]);
            }
         }
         if(param1.playerNo == 3)
         {
            if(param2 == Status.DISABLE)
            {
               speech(lanceStatus[6]);
            }
         }
         if(param1.playerNo == 4)
         {
            if(param2 == Status.DISABLE)
            {
               speech(annaStatus[7]);
            }
         }
         ignoreDeath = false;
      }
      
      public static function catching() : *
      {
         var _loc2_:int = 0;
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[15]);
         }
         if(Math.random() > 0.33)
         {
            return;
         }
         if(Math.random() < 0.25 && Options.showTips)
         {
            _loc2_ = Math.random() * 3;
            if(_loc2_ == 0)
            {
               speech(mattCatching[3],null,true);
            }
            if(_loc2_ == 1)
            {
               speech(natzCatching[4],null,true);
            }
            if(_loc2_ == 2)
            {
               speech(lanceCatching[3],null,true);
            }
         }
         if(shakes < 1)
         {
            return;
         }
         var _loc1_:int = int(shakes * 2 + Math.random() * 2 - 1);
         if(Battle.currentPlayer == Players.player1)
         {
            speech(mattCatching[_loc1_]);
         }
         if(Battle.currentPlayer == Players.player2)
         {
            speech(natzCatching[_loc1_]);
         }
         if(Battle.currentPlayer == Players.player3)
         {
            speech(lanceCatching[_loc1_]);
         }
         if(Battle.currentPlayer == Players.player4)
         {
            speech(annaCatching[_loc1_]);
         }
         if(Battle.currentPlayer == Players.player5)
         {
            speech(nolegsCatching[_loc1_]);
         }
      }
      
      public static function summoning(param1:int, param2:int) : *
      {
         if(Debug.expoDemo)
         {
            return;
         }
         speech(tips[1]);
         var _loc3_:int = 1;
         if(param2 > 30)
         {
            _loc3_ = 2;
         }
         if(param2 > 60)
         {
            _loc3_ = 3;
         }
         if(param2 > 90)
         {
            _loc3_ = 4;
         }
         if(param1 == 1)
         {
            speech(mattSummon[_loc3_]);
         }
         if(param1 == 2)
         {
            speech(natzSummon[_loc3_]);
         }
         if(param1 == 3)
         {
            speech(lanceSummon[_loc3_]);
         }
         if(param1 == 4)
         {
            speech(annaSummon[_loc3_]);
         }
         if(param1 == 5)
         {
            speech(nolegsSummon[_loc3_]);
         }
      }
      
      public static function foeFlee(param1:int) : *
      {
         if(Flags.battleEvent)
         {
            return;
         }
         var _loc2_:int = 1 + Math.random() * 2;
         if(param1 == 2)
         {
            _loc2_ = 3;
         }
         var _loc3_:int = 1 + Math.random() * Game.party.length;
         if(_loc3_ == 1)
         {
            speech(mattFlee[_loc2_]);
         }
         if(_loc3_ == 2)
         {
            speech(natzFlee[_loc2_]);
         }
         if(_loc3_ == 3)
         {
            speech(lanceFlee[_loc2_]);
         }
         if(_loc3_ == 4)
         {
            speech(annaFlee[_loc2_]);
         }
         if(_loc3_ == 5)
         {
            speech(nolegsFlee[_loc2_]);
         }
      }
      
      public static function victory() : *
      {
         var _loc1_:int = 0;
         var _loc2_:int = 1 + Math.random() * 4;
         if(!Flags.isVideoGameBattle())
         {
            if(Flags.battleEvent == Flags.ARENA_BATTLE)
            {
               _loc1_ = (Battle.players[0] as Player).playerNo;
               Text.speech(arena[10 + _loc1_ * 4 + _loc2_],null,true);
            }
            else
            {
               _loc1_ = 1 + Math.random() * Game.party.length;
               if(Math.random() > 0.66 || Game.party.length < 3)
               {
                  return;
               }
               if(_loc1_ == 1)
               {
                  speech(mattVictory[_loc2_],null,true);
               }
               if(_loc1_ == 2)
               {
                  speech(natzVictory[_loc2_],null,true);
               }
               if(_loc1_ == 3)
               {
                  speech(lanceVictory[_loc2_],null,true);
               }
               if(_loc1_ == 4)
               {
                  speech(annaVictory[_loc2_],null,true);
               }
               if(_loc1_ == 5)
               {
                  speech(nolegsVictory[_loc2_],null,true);
               }
            }
         }
      }
      
      public static function equip(param1:int) : *
      {
         if(Debug.expoDemo)
         {
            return;
         }
         if(Flags.battleEvent)
         {
            return;
         }
         if(param1 == 1)
         {
            if(Players.player1.armor == Equips.spartancuirass)
            {
               speech(mattEquips[1]);
            }
            if(Players.player1.armor == Equips.spartancuirass)
            {
               speech(mattEquips[11]);
            }
            if(Players.player1.armor == Equips.turtlegi)
            {
               speech(mattEquips[2]);
            }
            if(Players.player1.armor == Equips.wizardcloak)
            {
               speech(mattEquips[2]);
            }
            if(Players.player1.armor == Equips.hipstershirt)
            {
               speech(mattEquips[2]);
            }
            if(Players.player1.armor == Equips.heroicarmor)
            {
               speech(mattEquips[3]);
            }
            if(Players.player1.armor == Equips.shellarmor)
            {
               speech(mattEquips[3]);
            }
            if(Players.player1.hat == Equips.headband)
            {
               speech(mattEquips[4]);
            }
            if(Players.player1.weapon == Equips.giantslayer)
            {
               speech(mattEquips[5]);
            }
            if(Players.player1.weapon == Equips.chopper)
            {
               speech(mattEquips[5]);
            }
            if(Players.player1.weapon == Equips.berzerker)
            {
               speech(mattEquips[5]);
            }
            if(Players.player1.weapon == Equips.crimsonrazorback)
            {
               speech(mattEquips[6]);
            }
            if(Players.player1.weapon == Equips.crimsonrazorback)
            {
               speech(mattEquips[7]);
            }
            if(Players.player1.weapon == Equips.inferno)
            {
               speech(mattEquips[8]);
            }
            if(Players.player1.weapon == Equips.devilsfork)
            {
               speech(mattEquips[8]);
            }
            if(Players.player1.weapon == Equips.poisonfang)
            {
               speech(mattEquips[9]);
            }
            if(Players.player1.weapon == Equips.dragonfeather)
            {
               speech(mattEquips[9]);
            }
            if(Players.player1.weapon == Equips.heavensgate)
            {
               speech(mattEquips[10]);
            }
            if(Players.player1.weapon == Equips.souleater)
            {
               speech(mattEquips[10]);
            }
         }
         if(param1 == 2)
         {
            if(Players.player2.armor == Equips.cowcostume)
            {
               speech(natzEquips[1]);
            }
            if(Players.player2.armor == Equips.cowcostume)
            {
               speech(natzEquips[2]);
            }
            if(Players.player2.armor == Equips.cowcostume)
            {
               speech(natzEquips[3]);
            }
            if(Players.player2.armor == Equips.nurseuniform)
            {
               speech(natzEquips[4]);
            }
            if(Players.player2.armor == Equips.maidoutfit)
            {
               speech(natzEquips[4]);
            }
            if(Players.player2.armor == Equips.schooluniform)
            {
               speech(natzEquips[4]);
            }
            if(Players.player2.armor == Equips.obsidianarmor)
            {
               speech(natzEquips[5]);
            }
            if(Players.player2.armor == Equips.mechaarmor)
            {
               speech(natzEquips[5]);
            }
            if(Players.player2.armor == Equips.samidress)
            {
               speech(natzEquips[6]);
            }
            if(Players.player2.armor == Equips.furdress)
            {
               speech(natzEquips[6]);
            }
            if(Players.player2.armor == Equips.bluedress)
            {
               speech(natzEquips[7]);
            }
            if(Players.player2.armor == Equips.summerkimono)
            {
               speech(natzEquips[7]);
            }
            if(Players.player2.armor == Equips.popedress)
            {
               speech(natzEquips[7]);
            }
            if(Players.player2.armor == Equips.darkgown)
            {
               speech(natzEquips[8]);
            }
            if(Players.player2.hat == Equips.drillbits)
            {
               speech(natzEquips[9]);
            }
            if(Players.player2.hat == Equips.ninjachopsticks)
            {
               speech(natzEquips[9]);
            }
            if(Players.player2.hat == Equips.slimebunny)
            {
               speech(natzEquips[10]);
            }
            if(Players.player2.hat == Equips.blueelephant)
            {
               speech(natzEquips[10]);
            }
            if(Players.player2.weapon == Equips.beholdingeye)
            {
               speech(natzEquips[11]);
            }
            if(Players.player2.weapon == Equips.kaladanda)
            {
               speech(natzEquips[11]);
            }
            if(Players.player2.weapon == Equips.knife)
            {
               speech(natzEquips[12]);
            }
            if(Players.player2.weapon == Equips.paperfan)
            {
               speech(natzEquips[12]);
            }
            if(Players.player2.weapon == Equips.gigavolt)
            {
               speech(natzEquips[12]);
            }
         }
         if(param1 == 3)
         {
            if(Players.player3.armor == Equips.heroicarmor)
            {
               speech(lanceEquips[1]);
            }
            if(Players.player3.armor == Equips.shellarmor)
            {
               speech(lanceEquips[1]);
            }
            if(Players.player3.armor == Equips.spartancuirass)
            {
               speech(lanceEquips[1]);
            }
            if(Players.player3.armor == Equips.ninjagear)
            {
               speech(lanceEquips[2]);
            }
            if(Players.player3.armor == Equips.coatofteeth)
            {
               speech(lanceEquips[2]);
            }
            if(Players.player3.armor == Equips.wizardcloak)
            {
               speech(lanceEquips[3]);
            }
            if(Players.player3.armor == Equips.hipstershirt)
            {
               speech(lanceEquips[3]);
            }
            if(Players.player3.armor == Equips.turtlegi)
            {
               speech(lanceEquips[3]);
            }
            if(Players.player3.armor == Equips.hoboclothes)
            {
               speech(lanceEquips[3]);
            }
            if(Players.player3.armor == Equips.santaoutfit)
            {
               speech(lanceEquips[3]);
            }
            if(Players.player3.hat == Equips.gasmask)
            {
               speech(lanceEquips[4]);
            }
            if(Players.player3.hat == Equips.deathmask)
            {
               speech(lanceEquips[4]);
            }
            if(Players.player3.hat == Equips.pumpkinhead)
            {
               speech(lanceEquips[4]);
            }
            if(Players.player3.hat == Equips.cardboardbox)
            {
               speech(lanceEquips[4]);
            }
            if(Players.player3.hat == Equips.hornedhelmet)
            {
               speech(lanceEquips[5]);
            }
            if(Players.player3.hat == Equips.skullhelmet)
            {
               speech(lanceEquips[5]);
            }
            if(Players.player3.hat == Equips.spartanhelmet)
            {
               speech(lanceEquips[5]);
            }
            if(Players.player3.hat == Equips.headband)
            {
               speech(lanceEquips[6]);
            }
            if(Players.player3.hat == Equips.wizardhat)
            {
               speech(lanceEquips[6]);
            }
            if(Players.player3.weapon == Equips.thundercore)
            {
               speech(lanceEquips[7]);
            }
            if(Players.player3.weapon == Equips.supersnipe)
            {
               speech(lanceEquips[7]);
            }
            if(Players.player3.weapon == Equips.subzero)
            {
               speech(lanceEquips[7]);
            }
            if(Players.player3.weapon == Equips.gungnir)
            {
               speech(lanceEquips[7]);
            }
            if(Players.player3.weapon == Equips.heavyclaw)
            {
               speech(lanceEquips[8]);
            }
            if(Players.player3.weapon == Equips.flametitan)
            {
               speech(lanceEquips[8]);
            }
            if(Players.player3.weapon == Equips.greengoliath)
            {
               speech(lanceEquips[8]);
            }
            if(Players.player3.weapon == Equips.vortexcannon)
            {
               speech(lanceEquips[8]);
            }
            if(Players.player3.weapon == Equips.coconutshooter)
            {
               speech(lanceEquips[8]);
            }
         }
         if(param1 == 4)
         {
            if(Players.player4.armor == Equips.cowcostume)
            {
               speech(annaEquips[1]);
            }
            if(Players.player4.armor == Equips.cowcostume)
            {
               speech(annaEquips[2]);
            }
            if(Players.player4.armor == Equips.camoskirt)
            {
               speech(annaEquips[3]);
            }
            if(Players.player4.armor == Equips.cactusdress)
            {
               speech(annaEquips[3]);
            }
            if(Players.player4.armor == Equips.magicalskirt)
            {
               speech(annaEquips[4]);
            }
            if(Players.player4.armor == Equips.schooluniform)
            {
               speech(annaEquips[4]);
            }
            if(Players.player4.armor == Equips.maidoutfit)
            {
               speech(annaEquips[4]);
            }
            if(Players.player4.armor == Equips.bluedress)
            {
               speech(annaEquips[5]);
            }
            if(Players.player4.armor == Equips.darkgown)
            {
               speech(annaEquips[5]);
            }
            if(Players.player4.armor == Equips.popedress)
            {
               speech(annaEquips[5]);
            }
            if(Players.player4.armor == Equips.furdress)
            {
               speech(annaEquips[6]);
            }
            if(Players.player4.armor == Equips.samidress)
            {
               speech(annaEquips[6]);
            }
            if(Players.player4.armor == Equips.santaoutfit)
            {
               speech(annaEquips[6]);
            }
            if(Players.player4.hat == Equips.slimebunny)
            {
               speech(annaEquips[7]);
            }
            if(Players.player4.hat == Equips.bunnyears)
            {
               speech(annaEquips[8]);
            }
            if(Players.player4.hat == Equips.catears)
            {
               speech(annaEquips[8]);
            }
            if(Players.player4.weapon == Equips.juggernaught)
            {
               speech(annaEquips[9]);
            }
            if(Players.player4.weapon == Equips.irontusk)
            {
               speech(annaEquips[9]);
            }
            if(Players.player4.weapon == Equips.heavensvoice)
            {
               speech(annaEquips[10]);
            }
            if(Players.player4.weapon == Equips.earthswhisper)
            {
               speech(annaEquips[10]);
            }
            if(Players.player4.weapon == Equips.heavensvoice)
            {
               speech(annaEquips[11]);
            }
            if(Players.player4.weapon == Equips.earthswhisper)
            {
               speech(annaEquips[11]);
            }
         }
         if(param1 == 5)
         {
            if(Players.player5.weapon == Equips.icecreamsandwich)
            {
               speech(nolegsEquips[1]);
            }
            if(Players.player5.weapon == Equips.dogsausage)
            {
               speech(nolegsEquips[1]);
            }
            if(Players.player5.weapon == Equips.masamune)
            {
               speech(nolegsEquips[3]);
            }
            if(Players.player5.weapon == Equips.kingsguard)
            {
               speech(nolegsEquips[3]);
            }
            if(Players.player5.weapon == Equips.devilssunrise)
            {
               speech(nolegsEquips[3]);
            }
            if(Players.player5.weapon == Equips.humanskull)
            {
               speech(nolegsEquips[4]);
            }
            if(Players.player5.weapon == Equips.bloodbank)
            {
               speech(nolegsEquips[4]);
            }
            if(Players.player5.weapon == Equips.godlybook)
            {
               speech(nolegsEquips[8]);
            }
            if(Players.player5.weapon == Equips.bookofspells)
            {
               speech(nolegsEquips[8]);
            }
            if(Players.player5.weapon == Equips.riotshield)
            {
               speech(nolegsEquips[7]);
            }
            if(Players.player5.weapon == Equips.leafshield)
            {
               speech(nolegsEquips[11]);
            }
            if(Players.player5.weapon == Equips.elvenshield)
            {
               speech(nolegsEquips[11]);
            }
            if(Players.player5.weapon == Equips.vikingbuckler)
            {
               speech(nolegsEquips[11]);
            }
            if(Players.player5.weapon == Equips.masamune)
            {
               speech(nolegsEquips[11]);
            }
            if(Players.player5.hat == Equips.officerhat)
            {
               speech(nolegsEquips[7]);
            }
            if(Players.player5.hat == Equips.armyhelmet)
            {
               speech(nolegsEquips[7]);
            }
            if(Players.player5.hat == Equips.genjihelmet)
            {
               speech(nolegsEquips[9]);
            }
            if(Players.player5.hat == Equips.spartanhelmet)
            {
               speech(nolegsEquips[9]);
            }
            if(Players.player5.hat == Equips.hornedhelmet)
            {
               speech(nolegsEquips[9]);
            }
            if(Players.player5.hat == Equips.skullhelmet)
            {
               speech(nolegsEquips[9]);
            }
            if(Players.player5.hat == Equips.cardboardbox)
            {
               speech(nolegsEquips[10]);
            }
            if(Players.player5.hat == Equips.deathmask)
            {
               speech(nolegsEquips[10]);
            }
            if(Players.player5.hat == Equips.gasmask)
            {
               speech(nolegsEquips[10]);
            }
            if(Players.player5.hat == Equips.pumpkinhead)
            {
               speech(nolegsEquips[10]);
            }
            if(Players.player5.hat == Equips.wizardhat)
            {
               speech(nolegsEquips[12]);
            }
            if(Players.player5.hat == Equips.headband)
            {
               speech(nolegsEquips[12]);
            }
            if(Players.player5.hat == Equips.puppyhat)
            {
               speech(nolegsEquips[12]);
            }
            if(Players.player5.hat == Equips.scottishcap)
            {
               speech(nolegsEquips[12]);
            }
            if(Players.player5.armor != Equips.heroicarmor)
            {
               speech(nolegsEquips[6]);
            }
            if(Players.player5.armor == Equips.spartancuirass)
            {
               speech(nolegsEquips[2]);
            }
            if(Players.player5.armor == Equips.shellarmor)
            {
               speech(nolegsEquips[2]);
            }
            if(Players.player5.armor == Equips.priesttunic)
            {
               speech(nolegsEquips[2]);
            }
            if(Players.player5.armor == Equips.genjiarmor)
            {
               speech(nolegsEquips[2]);
            }
            if(Players.player5.armor == Equips.scottishkilt)
            {
               speech(nolegsEquips[5]);
            }
            if(Players.player5.armor == Equips.hipstershirt)
            {
               speech(nolegsEquips[5]);
            }
            if(Players.player5.armor == Equips.wizardcloak)
            {
               speech(nolegsEquips[5]);
            }
            if(Players.player5.armor == Equips.officercoat)
            {
               speech(nolegsEquips[7]);
            }
            if(Players.player5.armor == Equips.camojacket)
            {
               speech(nolegsEquips[7]);
            }
         }
      }
      
      public static function init() : *
      {
         var _loc1_:Object = null;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         for each(_loc2_ in listOfLists)
         {
            if(!Text[_loc2_])
            {
               Text[_loc2_] = [];
            }
            _loc4_ = int(battles[_loc2_].length);
            _loc3_ = 0;
            while(_loc3_ < _loc4_)
            {
               Text[_loc2_][_loc3_] = {};
               _loc3_++;
            }
         }
         lanceRevives[5].filter = "mature";
         lanceHit[3].filter = "mature";
         natzBigHit[4].filter = "mature";
         lanceBigHit[3].filter = "mature";
         lanceBigHit[5].filter = "mature";
         _loc3_ = 1;
         while(_loc3_ <= 9)
         {
            cyclops[_loc3_].style = CYCLOPS;
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 11)
         {
            sisters[_loc3_].style = CYCLOPS;
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 8)
         {
            poseidon[_loc3_].style = GOLEM_A;
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 9)
         {
            vulcan[_loc3_].style = GOLEM_B;
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 11)
         {
            snowflake[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 3;
         while(_loc3_ <= 10)
         {
            glitch[_loc3_].style = GLITCH;
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 14)
         {
            devourer[_loc3_].style = DEVOURER;
            _loc3_++;
         }
         devourer[32].style = DEVOURER;
         devourer[33].style = DEVOURER;
         _loc3_ = 1;
         while(_loc3_ <= 7)
         {
            evilMatt[_loc3_].style = EVIL_MATT;
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 7)
         {
            evilNatz[_loc3_].style = EVIL_NATZ;
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 7)
         {
            evilLance[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 5;
         while(_loc3_ <= 6)
         {
            evilLance[_loc3_].style = GLITCH;
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 7)
         {
            evilAnna[_loc3_].style = EVIL_ANNA;
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 8)
         {
            evilNolegs[_loc3_].style = EVIL_NOLEGS;
            _loc3_++;
         }
         _loc3_ = 5;
         while(_loc3_ <= 17)
         {
            arcade[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 4)
         {
            chair[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 4)
         {
            bosh[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 5)
         {
            robo[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 4)
         {
            glob[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 3)
         {
            snek[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 6)
         {
            pumpkus[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 5)
         {
            guoye[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 6)
         {
            phoenix[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         phoenix[10].style = SNOWFLAKE;
         _loc3_ = 0;
         while(_loc3_ <= 5)
         {
            totom[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 3)
         {
            treagure[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 5)
         {
            mermaid[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 6)
         {
            maw[_loc3_].style = SNOWFLAKE;
            _loc3_++;
         }
         maw[10].style = SNOWFLAKE;
         poseidon[14].style = GOLEM_A;
         cyclops[16].style = CYCLOPS;
         evilMatt[15].style = EVIL_MATT;
         evilNatz[17].style = EVIL_NATZ;
         evilLance[14].style = GLITCH;
         evilAnna[14].style = EVIL_ANNA;
         evilNolegs[18].style = EVIL_NOLEGS;
         for each(_loc1_ in mattSkills)
         {
            _loc1_.user = 1;
         }
         for each(_loc1_ in natzSkills)
         {
            _loc1_.user = 2;
         }
         for each(_loc1_ in lanceSkills)
         {
            _loc1_.user = 3;
         }
         for each(_loc1_ in annaSkills)
         {
            _loc1_.user = 4;
         }
         for each(_loc1_ in nolegsSkills)
         {
            _loc1_.user = 5;
         }
         for each(_loc1_ in miscSkills)
         {
            _loc1_.players = true;
         }
         miscSkills[30].user = true;
         miscSkills[31].user = true;
         creeps[10].user = 3;
         creeps[11].user = 1;
         for each(_loc1_ in tips)
         {
            _loc1_.filter = "showTips";
         }
         for each(_loc1_ in [annaStatus[6],miscStatus[3],miscSkills[24],natzStatus[9],hydra[6],snowflake[14]])
         {
            _loc1_.filter = "showTips";
         }
         for each(_loc1_ in glitch)
         {
            _loc1_.boss = true;
            _loc1_.party = true;
         }
         mattDies[4].points = MATT_NATZ;
         mattDies[5].points = MATT_LANCE;
         mattDies[6].points = MATT_ANNA;
         mattDies[8].points = MATT_NATZ;
         mattDies[9].points = MATT_LANCE;
         mattDies[10].points = MATT_ANNA;
         natzDies[4].points = MATT_NATZ;
         natzDies[5].points = ANNA_NATZ;
         natzDies[6].points = LANCE_NATZ;
         natzDies[8].points = MATT_NATZ;
         natzDies[9].points = LANCE_NATZ;
         natzDies[10].points = ANNA_NATZ;
         lanceDies[4].points = MATT_LANCE;
         lanceDies[5].points = LANCE_NATZ;
         lanceDies[6].points = LANCE_ANNA;
         lanceDies[8].points = MATT_LANCE;
         lanceDies[9].points = LANCE_NATZ;
         lanceDies[10].points = LANCE_ANNA;
         annaDies[4].points = MATT_ANNA;
         annaDies[5].points = ANNA_NATZ;
         annaDies[6].points = LANCE_ANNA;
         annaDies[8].points = MATT_ANNA;
         annaDies[9].points = ANNA_NATZ;
         annaDies[10].points = LANCE_ANNA;
         mattRevives[6].points = MATT_NATZ;
         natzRevives[6].points = MATT_NATZ;
         natzRevives[7].points = LANCE_NATZ;
         lanceRevives[6].points = MATT_LANCE;
         lanceRevives[7].points = LANCE_NATZ;
         annaRevives[6].points = LANCE_ANNA;
         annaRevives[7].points = MATT_ANNA;
         mattSkills[3].points = MATT_ANNA;
         mattSkills[12].points = MATT_NATZ;
         mattSkills[13].points = MATT_ANNA;
         mattSkills[16].points = MATT_ANNA;
         mattSkills[21].points = MATT_ANNA;
         mattSkills[25].points = MATT_ANNA;
         mattSkills[27].points = MATT_NATZ;
         mattSkills[28].points = MATT_LANCE;
         mattSkills[33].points = MATT_NATZ;
         mattSkills[36].points = MATT_ANNA;
         mattSkills[41].points = MATT_NATZ;
         mattSkills[42].points = MATT_ANNA;
         mattSkills[43].points = MATT_LANCE;
         mattSkills[45].points = MATT_NATZ;
         natzSkills[11].points = ANNA_NATZ;
         natzSkills[14].points = ANNA_NATZ;
         natzSkills[17].points = MATT_NATZ;
         natzSkills[18].points = MATT_NATZ;
         natzSkills[22].points = LANCE_NATZ;
         natzSkills[23].points = LANCE_NATZ;
         natzSkills[29].points = LANCE_NATZ;
         natzSkills[35].points = MATT_NATZ;
         natzSkills[36].points = LANCE_NATZ;
         natzSkills[37].points = LANCE_NATZ;
         natzSkills[38].points = ANNA_NATZ;
         lanceSkills[5].points = MATT_LANCE;
         lanceSkills[6].points = MATT_LANCE;
         lanceSkills[9].points = MATT_LANCE;
         lanceSkills[10].points = LANCE_NATZ;
         lanceSkills[11].points = LANCE_ANNA;
         lanceSkills[12].points = LANCE_ANNA;
         lanceSkills[25].points = LANCE_NATZ;
         lanceSkills[26].points = LANCE_ANNA;
         lanceSkills[28].points = MATT_LANCE;
         lanceSkills[29].points = MATT_LANCE;
         lanceSkills[30].points = MATT_LANCE;
         lanceSkills[32].points = LANCE_NATZ;
         lanceSkills[35].points = LANCE_NATZ;
         lanceSkills[38].points = LANCE_NATZ;
         annaSkills[2].points = LANCE_ANNA;
         annaSkills[3].points = LANCE_ANNA;
         annaSkills[5].points = MATT_ANNA;
         annaSkills[6].points = ANNA_NATZ;
         annaSkills[8].points = MATT_ANNA;
         annaSkills[13].points = MATT_ANNA;
         annaSkills[15].points = ANNA_NATZ;
         annaSkills[20].points = ANNA_NATZ;
         annaSkills[23].points = ANNA_NATZ;
         annaSkills[25].points = LANCE_ANNA;
         annaSkills[27].points = LANCE_ANNA;
         annaSkills[28].points = LANCE_ANNA;
         annaSkills[35].points = MATT_ANNA;
         annaSkills[36].points = ANNA_NATZ;
         annaSkills[37].points = LANCE_ANNA;
         mattEquips[1].points = MATT_NATZ;
         mattEquips[11].points = MATT_NATZ;
         natzEquips[1].points = LANCE_NATZ;
         natzEquips[2].points = LANCE_NATZ;
         natzEquips[3].points = LANCE_NATZ;
         annaEquips[1].points = LANCE_ANNA;
         annaEquips[2].points = LANCE_ANNA;
         worms[3].points = MATT_NATZ;
         worms[5].points = ANNA_NATZ;
         worms[8].points = MATT_NATZ;
         squids[3].points = MATT_NATZ;
         gloops[2].points = LANCE_ANNA;
         natzSkills[23].filter = "titties";
         natzSkills[32].filter = "titties";
         natzSkills[34].filter = "titties";
         natzSkills[35].filter = "titties";
         natzSkills[36].filter = "titties";
         natzSkills[37].filter = "titties";
         natzSkills[38].filter = "titties";
         lanceSkills[40].filter = "mature";
         lanceSkills[40].filter = "mature";
         mermaid[7].filter = "mature";
         miscSkills[35].filter = "titties";
         gigalith[1].boss = true;
         gigalith[2].boss = true;
         gigalith[3].boss = true;
         gigalith[4].boss = true;
         gigalith[5].boss = true;
         gigalith[6].boss = true;
         gigalith[7].boss = true;
         natalie[1].boss = true;
         natalie[3].boss = true;
         natalie[5].boss = true;
         natalie[7].boss = true;
         natalie[8].boss = true;
         anna[1].boss = true;
         anna[3].boss = true;
         anna[4].boss = true;
         anna[7].boss = true;
         anna[8].boss = true;
         anna[9].boss = true;
         anna[10].boss = true;
         anna[11].boss = true;
         anna[12].boss = true;
         anna[13].boss = true;
         lance[1].boss = true;
         lance[2].boss = true;
         lance[3].boss = true;
         lance[4].boss = true;
         lance[5].boss = true;
         lance[6].boss = true;
         lance[7].boss = true;
         lance[8].boss = true;
         lance[9].boss = true;
         lance[10].boss = true;
         lance[13].boss = true;
         lance[14].boss = true;
         lance[15].boss = true;
         lance[16].boss = true;
         lance[17].boss = true;
         lance[18].boss = true;
         lance[19].boss = true;
         lance[20].boss = true;
         lance[21].boss = true;
         lance[22].boss = true;
         lance[23].boss = true;
         lance[24].boss = true;
         lance[29].boss = true;
         lance[30].boss = true;
         lance[31].boss = true;
         gigaFortress[2].boss = true;
         gigaFortress[3].boss = true;
         gigaFortress[4].boss = true;
         gigaFortress[5].boss = true;
         chibi[1].boss = true;
         chibi[5].boss = true;
         chibi[10].boss = true;
         chibi[1].party = true;
         chibi[5].party = true;
         chibi[10].party = true;
         evilMatt[8].boss = true;
         evilNatz[8].boss = true;
         evilLance[8].boss = true;
         evilAnna[8].boss = true;
         hydra[1].boss = true;
         hydra[7].boss = true;
         sisters[12].boss = true;
         cocoon[8].boss = true;
         nest[7].boss = true;
         _loc3_ = 0;
         while(_loc3_ <= 20)
         {
            ebf1[_loc3_].boss = true;
            ebf1[_loc3_].party = true;
            ebf1[_loc3_].undead = true;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 22)
         {
            ebf2[_loc3_].boss = true;
            ebf2[_loc3_].party = true;
            ebf2[_loc3_].undead = true;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 24)
         {
            ebf3[_loc3_].boss = true;
            ebf3[_loc3_].party = true;
            ebf3[_loc3_].undead = true;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 26)
         {
            ebf4[_loc3_].boss = true;
            ebf4[_loc3_].party = true;
            ebf4[_loc3_].undead = true;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ <= 1)
         {
            arcade[_loc3_].boss = true;
            arcade[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 5;
         while(_loc3_ <= 6)
         {
            chair[_loc3_].boss = true;
            chair[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 5;
         while(_loc3_ <= 6)
         {
            bosh[_loc3_].boss = true;
            bosh[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 6;
         while(_loc3_ <= 7)
         {
            robo[_loc3_].boss = true;
            robo[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 4;
         while(_loc3_ <= 6)
         {
            snek[_loc3_].boss = true;
            snek[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 7;
         while(_loc3_ <= 8)
         {
            pumpkus[_loc3_].boss = true;
            pumpkus[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 6;
         while(_loc3_ <= 9)
         {
            guoye[_loc3_].boss = true;
            guoye[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 7;
         while(_loc3_ <= 9)
         {
            phoenix[_loc3_].boss = true;
            phoenix[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 6;
         while(_loc3_ <= 9)
         {
            totom[_loc3_].boss = true;
            totom[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 4;
         while(_loc3_ <= 7)
         {
            treagure[_loc3_].boss = true;
            treagure[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 6;
         while(_loc3_ <= 11)
         {
            mermaid[_loc3_].boss = true;
            mermaid[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 7;
         while(_loc3_ <= 9)
         {
            maw[_loc3_].boss = true;
            maw[_loc3_].party = true;
            _loc3_++;
         }
         _loc3_ = 3;
         while(_loc3_ <= 19)
         {
            library[_loc3_].boss = true;
            library[_loc3_].party = true;
            _loc3_++;
         }
         ebf1[3].noAltFoes = true;
         ebf1[5].noAltFoes = true;
         ebf1[7].noAltFoes = true;
         ebf1[13].noAltFoes = true;
         ebf1[14].noAltFoes = true;
         ebf1[16].noAltFoes = true;
         ebf2[0].noAltFoes = true;
         ebf2[1].noAltFoes = true;
         ebf2[2].noAltFoes = true;
         ebf2[4].noAltFoes = true;
         ebf2[5].noAltFoes = true;
         ebf2[7].noAltFoes = true;
         ebf2[8].noAltFoes = true;
         ebf2[9].noAltFoes = true;
         ebf2[14].noAltFoes = true;
         ebf2[17].noAltFoes = true;
         ebf2[18].noAltFoes = true;
         ebf2[20].noAltFoes = true;
         ebf3[4].noAltFoes = true;
         ebf3[5].noAltFoes = true;
         ebf3[9].noAltFoes = true;
         ebf3[14].noAltFoes = true;
         ebf3[17].noAltFoes = true;
         ebf3[18].noAltFoes = true;
         ebf3[19].noAltFoes = true;
         ebf3[23].noAltFoes = true;
         ebf4[0].noAltFoes = true;
         ebf4[2].noAltFoes = true;
         ebf4[6].noAltFoes = true;
         ebf4[7].noAltFoes = true;
         ebf4[14].noAltFoes = true;
         ebf4[19].noAltFoes = true;
         ebf4[20].noAltFoes = true;
         ebf4[21].noAltFoes = true;
         ebf4[22].noAltFoes = true;
         ebf4[25].noAltFoes = true;
         ebf1[19].noAltFoes = true;
         library[5].boss = false;
         library[7].boss = false;
         library[10].boss = false;
         library[16].boss = false;
         library[18].boss = false;
         library[13].boss = false;
         arcade[18].boss = true;
         arcade[19].boss = true;
         ebf1[19].boss = true;
         arcade[18].party = true;
         arcade[19].party = true;
         ebf1[19].party = true;
         mattEquips[1].filter = "titties";
         mattEquips[11].filter = "mature";
         natzEquips[1].filter = "titties";
         natzEquips[2].filter = "titties";
         natzEquips[3].filter = "titties";
         natzEquips[4].filter = "mature";
         annaEquips[1].filter = "titties";
         annaEquips[2].filter = "titties";
         flybots[3].filter = "mature";
         flybots[5].filter = "titties";
         defenders[10].filter = "mature";
         squids[1].filter = "mature";
         squids[2].filter = "mature";
         squids[4].filter = "mature";
         dolls[5].filter = "mature";
         cocoon[10].filter = "mature";
         evilNatz[14].filter = "mature";
         evilMatt[5].filter = "blood";
         evilNatz[14].filter = "mature";
         evilAnna[2].filter = "blood";
         cats[1].speakingTo = 5;
         cats[6].speakingTo = 5;
         worms[3].speakingTo = 2;
         worms[5].speakingTo = 2;
         worms[8].speakingTo = 1;
         squids[3].speakingTo = 2;
         defenders[11].speakingTo = 3;
         gloops[2].speakingTo = 3;
         defenders[2].target = 1;
         bears[5].target = 1;
         bears[6].target = 2;
         bears[7].target = 3;
         bears[8].target = 4;
         bears[9].target = 5;
         creeps[12].target = 2;
         creeps[13].target = 2;
         worms[2].target = 2;
         worms[7].target = 2;
         dragons[12].target = 5;
         hydra[8].target = 1;
         glob[5].target = 1;
         glob[6].target = 2;
         glob[7].target = 3;
         glob[8].target = 4;
         glob[9].target = 5;
         for each(_loc1_ in glitch)
         {
            _loc1_.tip = true;
         }
         translate();
      }
      
      public static function translate() : *
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc1_ in listOfLists)
         {
            _loc2_ = int(battles[_loc1_].length);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               Text[_loc1_][_loc3_].text = SetStrings.getBattles(_loc1_,_loc3_);
               _loc3_++;
            }
         }
      }
   }
}

