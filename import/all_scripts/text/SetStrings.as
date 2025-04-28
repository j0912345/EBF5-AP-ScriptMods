package text
{
   import flash.geom.*;
   import flash.text.*;
   import text.chineseSimplified.*;
   import text.chineseTraditional.*;
   import text.english.*;
   import text.french.*;
   import text.german.*;
   import text.japanese.*;
   import text.korean.*;
   import text.polish.*;
   import text.portuguese.*;
   import text.russian.*;
   import text.spanish.*;
   import text.vietnamese.*;
   
   public class SetStrings
   {
      public static var textFile:Class;
      
      public static var format:TextFormat = new TextFormat();
      
      public function SetStrings()
      {
         super();
      }
      
      public static function getNamesFile() : Class
      {
         return [text.english.names,text.spanish.names,text.portuguese.names,text.german.names,text.french.names,text.polish.names,text.russian.names,text.vietnamese.names,text.chineseSimplified.names,text.chineseTraditional.names,text.japanese.names,text.korean.names][Options.language];
      }
      
      public static function getMenusFile() : Class
      {
         return [text.english.menus,text.spanish.menus,text.portuguese.menus,text.german.menus,text.french.menus,text.polish.menus,text.russian.menus,text.vietnamese.menus,text.chineseSimplified.menus,text.chineseTraditional.menus,text.japanese.menus,text.korean.menus][Options.language];
      }
      
      public static function getEquipsFile() : Class
      {
         return [text.english.equips,text.spanish.equips,text.portuguese.equips,text.german.equips,text.french.equips,text.polish.equips,text.russian.equips,text.vietnamese.equips,text.chineseSimplified.equips,text.chineseTraditional.equips,text.japanese.equips,text.korean.equips][Options.language];
      }
      
      public static function getFoesFile() : Class
      {
         return [text.english.foes,text.spanish.foes,text.portuguese.foes,text.german.foes,text.french.foes,text.polish.foes,text.russian.foes,text.vietnamese.foes,text.chineseSimplified.foes,text.chineseTraditional.foes,text.japanese.foes,text.korean.foes][Options.language];
      }
      
      public static function getItemsFile() : Class
      {
         return [text.english.items,text.spanish.items,text.portuguese.items,text.german.items,text.french.items,text.polish.items,text.russian.items,text.vietnamese.items,text.chineseSimplified.items,text.chineseTraditional.items,text.japanese.items,text.korean.items][Options.language];
      }
      
      public static function getCardsFile() : Class
      {
         return [text.english.cards,text.spanish.cards,text.portuguese.cards,text.german.cards,text.french.cards,text.polish.cards,text.russian.cards,text.vietnamese.cards,text.chineseSimplified.cards,text.chineseTraditional.cards,text.japanese.cards,text.korean.cards][Options.language];
      }
      
      public static function getMedalsFile() : Class
      {
         return [text.english.medals,text.spanish.medals,text.portuguese.medals,text.german.medals,text.french.medals,text.polish.medals,text.russian.medals,text.vietnamese.medals,text.chineseSimplified.medals,text.chineseTraditional.medals,text.japanese.medals,text.korean.medals][Options.language];
      }
      
      public static function getSkillsFile() : Class
      {
         return [text.english.skills,text.spanish.skills,text.portuguese.skills,text.german.skills,text.french.skills,text.polish.skills,text.russian.skills,text.vietnamese.skills,text.chineseSimplified.skills,text.chineseTraditional.skills,text.japanese.skills,text.korean.skills][Options.language];
      }
      
      public static function getBattlesFile() : Class
      {
         return [text.english.battles,text.spanish.battles,text.portuguese.battles,text.german.battles,text.french.battles,text.polish.battles,text.russian.battles,text.vietnamese.battles,text.chineseSimplified.battles,text.chineseTraditional.battles,text.japanese.battles,text.korean.battles][Options.language];
      }
      
      public static function getDialogueFile() : Class
      {
         return [text.english.dialogue,text.spanish.dialogue,text.portuguese.dialogue,text.german.dialogue,text.french.dialogue,text.polish.dialogue,text.russian.dialogue,text.vietnamese.dialogue,text.chineseSimplified.dialogue,text.chineseTraditional.dialogue,text.japanese.dialogue,text.korean.dialogue][Options.language];
      }
      
      public static function getNpcFile() : Class
      {
         return [text.english.npcs,text.spanish.npcs,text.portuguese.npcs,text.german.npcs,text.french.npcs,text.polish.npcs,text.russian.npcs,text.vietnamese.npcs,text.chineseSimplified.npcs,text.chineseTraditional.npcs,text.japanese.npcs,text.korean.npcs][Options.language];
      }
      
      public static function getString(param1:String, param2:String) : String
      {
         if(param1 == "cards")
         {
            textFile = getCardsFile();
         }
         if(param1 == "menus")
         {
            textFile = getMenusFile();
         }
         if(param1 == "names")
         {
            textFile = getNamesFile();
         }
         if(Debug.noLanguage)
         {
            return "";
         }
         return textFile[param2];
      }
      
      public static function translate(param1:TextField, param2:String, param3:int = 0, param4:String = "", param5:Boolean = false, param6:String = "", param7:Boolean = false, param8:Boolean = false) : int
      {
         var l:int;
         var text:String = null;
         var skewMatrix:Matrix = null;
         var tempMatrix:Matrix = null;
         var format:TextFormat = null;
         var testSize:int = 0;
         var tf:TextField = param1;
         var sn:String = param2;
         var si:int = param3;
         var ext:String = param4;
         var ver:Boolean = param5;
         var beg:String = param6;
         var stretch:Boolean = param7;
         var smartShrink:Boolean = param8;
         textFile = getMenusFile();
         if(stretch && Options.language == Options.ENGLISH)
         {
            tf.scaleX *= 1.12;
            tf.scaleY *= 0.92;
            skewMatrix = new Matrix();
            skewMatrix.c = -0.25;
            tempMatrix = tf.transform.matrix;
            tempMatrix.concat(skewMatrix);
            tf.transform.matrix = tempMatrix;
         }
         if(sn != "")
         {
            try
            {
               text = textFile[sn];
            }
            catch(e:Error)
            {
               text = "";
            }
         }
         else
         {
            text = "";
         }
         if(!text || Debug.noLanguage)
         {
            text = "";
         }
         tf.text = text;
         if(ext != "")
         {
            tf.text += ext;
         }
         if(beg != "")
         {
            tf.text = beg + tf.text;
         }
         l = tf.text.length;
         tf.multiline = true;
         GUI.setFont(tf);
         if(ver)
         {
            GUI.forceVerdana(tf);
         }
         if(GUI.textAnimation != "none" && Options.language != Options.ENGLISH && !Options.isCJK())
         {
            GUI.forceVerdana(tf);
         }
         resize(tf,si);
         if(smartShrink && !Options.isCJK())
         {
            format = new TextFormat();
            testSize = int(tf.getTextFormat().size);
            while(tf.numLines > 1)
            {
               testSize--;
               format.size = testSize;
               tf.setTextFormat(format);
            }
         }
         return l;
      }
      
      public static function resize(param1:TextField, param2:int = 0) : *
      {
         if(Options.language != Options.CHIN_SIMP && Options.language != Options.CHIN_TRAD && Options.language != Options.JAPANESE && Options.language != Options.KOREAN)
         {
            return;
         }
         if(param2 == 0)
         {
            return;
         }
         if(Options.language == Options.KOREAN)
         {
            param2 *= 0.66;
         }
         var _loc3_:Number = Number(param1.getTextFormat().size);
         var _loc4_:TextFormat = new TextFormat();
         var _loc5_:Number = _loc3_ = _loc3_ * (1 + param2 / 100);
         _loc4_.size = _loc5_;
         param1.setTextFormat(_loc4_);
         param1.y -= (_loc5_ - _loc3_) * 1.5 + 4;
      }
      
      public static function getSwapStrings(param1:Spell, param2:int) : *
      {
         textFile = getSkillsFile();
         param1.name = textFile["bring" + param2]["name"];
         param1.description = textFile["bring" + param2]["desc"];
      }
      
      public static function setAllStrings() : *
      {
         setSkillStrings();
         setItemStrings();
         setCardStrings();
         setAchievementStrings();
         setBuffAndStatusDescriptions();
         setWeatherStrings();
         setAllEquipsStrings();
         setNPCStrings();
         setPlayerNames();
         Text.translate();
      }
      
      public static function setPlayerNames() : *
      {
         Players.player1.name = SetStrings.getPlayerName(0);
         Players.player2.name = SetStrings.getPlayerName(1);
         Players.player3.name = SetStrings.getPlayerName(2);
         Players.player4.name = SetStrings.getPlayerName(3);
         Players.player5.name = SetStrings.getPlayerName(4);
      }
      
      public static function setNPCStrings() : *
      {
         var _loc1_:NPC = null;
         textFile = getNpcFile();
         for each(_loc1_ in NPCs.ALL_NPCS)
         {
            _loc1_.dialogue = null;
            if(Debug.noLanguage)
            {
               _loc1_.name = "---";
            }
            else
            {
               _loc1_.name = textFile[_loc1_.nameID];
            }
            if(_loc1_.dialogueID)
            {
               if(Debug.noLanguage)
               {
                  _loc1_.dialogue = ["   ",0];
               }
               else
               {
                  _loc1_.dialogue = textFile[_loc1_.dialogueID];
               }
            }
            if(_loc1_.dialogue2ID)
            {
               if(Debug.noLanguage)
               {
                  _loc1_.dialogue2 = ["   ",0];
               }
               else
               {
                  _loc1_.dialogue2 = textFile[_loc1_.dialogue2ID];
               }
               if(!_loc1_.quest)
               {
               }
               if(Boolean(_loc1_.quest) && !_loc1_.dialogue)
               {
                  if(Debug.noLanguage)
                  {
                     _loc1_.dialogue2 = ["   ",0,"   ",0,"   ",0];
                  }
                  _loc1_.dialogue = _loc1_.dialogue2.slice(0,2);
               }
            }
         }
         textFile = getNamesFile();
         NPCs.osho.location = textFile["GRAND_GALLERY"];
         NPCs.moody.location = textFile["HOPE_HARBOR"];
         NPCs.rami.location = textFile["MYSTIC_WOODS"];
         NPCs.kiev.location = textFile["THE_WASTELANDS"];
         NPCs.bessie.location = textFile["WILD_TROPICS"];
         NPCs.molly.location = textFile["WILD_TROPICS"];
         NPCs.indy.location = textFile["WILD_TROPICS"];
         NPCs.wohehiv.location = textFile["HOPE_HARBOR"];
         NPCs.jorma.location = textFile["THE_WASTELANDS"];
         NPCs.erika.location = textFile["THE_WASTELANDS"];
         NPCs.rebel.location = textFile["IRON_FORTRESS"];
         NPCs.xavi.location = textFile["IRON_FORTRESS"];
         NPCs.akira.location = textFile["IRON_FORTRESS"];
         NPCs.jerryB.location = textFile["HOPE_HARBOR"];
         NPCs.pablo.location = textFile["GREENWOOD_VILLAGE"];
         NPCs.aniki.location = textFile["THE_WASTELANDS"];
         NPCs.randy.location = textFile["GREENWOOD_VILLAGE"];
         NPCs.lenk.location = textFile["GREENWOOD_VILLAGE"];
         NPCs.izumi.location = textFile["GREENWOOD_VILLAGE"];
         NPCs.angela.location = textFile["MYSTIC_WOODS"];
         NPCs.weeb.location = textFile["GREENWOOD_VILLAGE"];
         NPCs.maya.location = textFile["RAINBOW_RIVER"];
         NPCs.king.location = textFile["FROZEN_VALLEY"];
         NPCs.shione.location = textFile["REDPINE_TOWN"];
         NPCs.jessica.location = textFile["REDPINE_TOWN"];
         NPCs.maka.location = textFile["REDPINE_TOWN"];
         NPCs.albrecht.location = textFile["REDPINE_TOWN"];
         NPCs.roku.location = textFile["REDPINE_TOWN"];
         NPCs.wakizashi.location = textFile["THE_RAPTURE"];
         NPCs.canela.location = textFile["REDPINE_TOWN"];
         NPCs.sam.location = textFile["LAVA_LAKE"];
         NPCs.kirsan.location = textFile["REDPINE_TOWN"];
         NPCs.gina.location = textFile["FROZEN_VALLEY"];
         NPCs.bunni.location = textFile["WARP_ZONE"];
         NPCs.sally.location = textFile["WARP_ZONE"];
         NPCs.lunar.location = textFile["WARP_ZONE"];
         NPCs.amy.location = textFile["WARP_ZONE"];
         NPCs.jack.location = textFile["WARP_ZONE"];
         NPCs.mungus.location = textFile["HOPE_HARBOR"];
         NPCs.fizz.location = textFile["RAINBOW_RIVER"];
         NPCs.sparky.location = textFile["THE_RAPTURE"];
         NPCs.goth.location = textFile["MYSTIC_WOODS"];
      }
      
      public static function setEquipStrings(param1:Equip, param2:int = -1) : *
      {
         var _loc4_:int = 0;
         textFile = getEquipsFile();
         if(Debug.noLanguage)
         {
            param1.name = "";
         }
         else
         {
            param1.name = textFile[param1.SID][0];
         }
         var _loc3_:String = textFile[param1.SID][1];
         if(param2 == -1)
         {
            param2 = param1.level;
         }
         if(param1.type != Equips.FLAIR)
         {
            if(param1.statusEffect == Status.RANDOM)
            {
               _loc3_ += textFile.MAY_RANDOM;
            }
            if(param1.statusEffect == Status.VIRUS && param1 != Equips.tentacle)
            {
               _loc3_ += textFile.MAY_VIRUS;
            }
         }
         if(!param1.specials)
         {
            param1.specials = [];
         }
         var _loc5_:int = 0;
         while(_loc5_ < param1.specials.length && _loc5_ < param2)
         {
            if(param1.specials[_loc5_])
            {
               _loc3_ += getSpecialDesc(param1,_loc5_);
            }
            _loc5_++;
         }
         if(Debug.noLanguage)
         {
            param1.description = "";
         }
         param1.description = _loc3_;
      }
      
      public static function getSpecialDesc(param1:Equip, param2:int = -1) : String
      {
         textFile = getEquipsFile();
         var _loc3_:String = "";
         if(!param1.specials[param2])
         {
            return _loc3_;
         }
         if(param1.specials[param2][0] == Equip.BOOST)
         {
            _loc3_ += textFile[param1.specials[param2][1].toUpperCase() + "_BOOST_DESC"];
         }
         if(param1.specials[param2][0] == Equip.STATUS)
         {
            if(param1.specials[param2][1] == Status.HASTE && param1.specials[param2][3] >= 1)
            {
               _loc3_ += textFile["GIVES_HASTEx2_DESC"];
            }
            else
            {
               _loc3_ += textFile["GIVES_" + param1.specials[param2][1].toUpperCase() + "_DESC"];
            }
         }
         if(param1.specials[param2][0] == Equip.DEFEND_STATUS)
         {
            _loc3_ += textFile[param1.specials[param2][1].toUpperCase() + "_DEFEND_DESC"];
         }
         if(param1.specials[param2][0] == Equip.DEFEND_BUFF)
         {
            _loc3_ += textFile[param1.specials[param2][1].toUpperCase() + "_DEFEND_DESC"];
         }
         if(param1.specials[param2][0] == Equip.SCARE)
         {
            _loc3_ += textFile["SCARE_" + param1.specials[param2][1].toUpperCase() + "_DESC"];
         }
         if(param1.specials[param2][0] == Equip.INTIMIDATE)
         {
            _loc3_ += textFile.INTIMIDATE_DESC;
         }
         if(param1.specials[param2][0] == Equip.BOOST_HEALING)
         {
            _loc3_ += textFile.HEAL_BOOST_DESC;
         }
         if(param1.specials[param2][0] == Equip.DRAIN_HP)
         {
            _loc3_ += textFile.DRAINS_HP_DESC;
         }
         if(param1.specials[param2][0] == Equip.BOOST_FOOD)
         {
            _loc3_ += textFile.FOOD_BOOST_DESC;
         }
         if(param1.specials[param2][0] == Equip.BOOST_THROWS)
         {
            _loc3_ += textFile.THROW_BOOST_DESC;
         }
         if(param1.specials[param2][0] == Equip.BOOST_CATCH)
         {
            _loc3_ += textFile.CATCH_BOOST_DESC;
         }
         if(param1.specials[param2][0] == Equip.STEAL)
         {
            _loc3_ += textFile.STEAL_DESC;
         }
         if(param1.specials[param2][0] == Equip.BOOST_BUFFS)
         {
            _loc3_ += textFile.BUFF_DESC;
         }
         if(param1.specials[param2][0] == Equip.BOOST_DEBUFFS)
         {
            _loc3_ += textFile.DEBUFF_DESC;
         }
         if(param1.specials[param2][0] == Equip.BOOST_STATUS)
         {
            _loc3_ += textFile.STATUS_DESC;
         }
         if(param1.specials[param2][0] == Equip.IGNORE_BUFFS)
         {
            _loc3_ += textFile.IGNORES_BUFF_DESC;
         }
         if(param1.specials[param2][0] == Equip.NO_STACK)
         {
            _loc3_ += textFile.NO_STACK;
         }
         if(param1.specials[param2][0] == Equip.CAST)
         {
            _loc3_ += textFile["UNLEASH_A"] + param1.specials[param2][1].name + textFile["UNLEASH_B"];
         }
         if(param1.specials[param2][0] == Equip.SUMMON)
         {
            _loc3_ += textFile["CASTS_A"] + param1.specials[param2][1].name + textFile["CASTS_B"];
         }
         if(param1.specials[param2][0] == Equip.COUNTER)
         {
            _loc3_ += textFile["COUNTERS_A"] + param1.specials[param2][1].name + textFile["COUNTERS_B"];
         }
         return _loc3_;
      }
      
      public static function setAllEquipsStrings() : *
      {
         var _loc1_:Equip = null;
         for each(_loc1_ in Equips.ALL_EQUIPS)
         {
            if(Debug.noLanguage)
            {
               _loc1_.name = "";
               _loc1_.description = "";
            }
            else
            {
               setEquipStrings(_loc1_);
            }
         }
      }
      
      public static function setBardText() : *
      {
         textFile = getNpcFile();
         textFile["bardD"] = (textFile["bardStart"] as Array).concat();
         SaveData.calculateEndingTheshold();
         if(SaveData.mattXnatz <= SaveData.endingThreshhold)
         {
            (textFile["bardD"] as Array).push(textFile["bardSegments"][0],0);
         }
         if(SaveData.lanceXnatz <= SaveData.endingThreshhold)
         {
            (textFile["bardD"] as Array).push(textFile["bardSegments"][1],0);
         }
         if(SaveData.lanceXanna <= SaveData.endingThreshhold)
         {
            (textFile["bardD"] as Array).push(textFile["bardSegments"][2],0);
         }
         if(SaveData.annaXnatz <= SaveData.endingThreshhold)
         {
            (textFile["bardD"] as Array).push(textFile["bardSegments"][3],0);
         }
         if(SaveData.mattXanna <= SaveData.endingThreshhold)
         {
            (textFile["bardD"] as Array).push(textFile["bardSegments"][4],0);
         }
         if(SaveData.mattXlance <= SaveData.endingThreshhold)
         {
            (textFile["bardD"] as Array).push(textFile["bardSegments"][5],0);
         }
         if((textFile["bardD"] as Array).length == (textFile["bardStart"] as Array).length)
         {
            (textFile["bardD"] as Array).push(textFile["bardSegments"][6],0);
         }
         NPCs.bard.dialogue = textFile["bardD"];
      }
      
      public static function setSkillStrings() : *
      {
         var _loc1_:Spell = null;
         textFile = getSkillsFile();
         for each(_loc1_ in Spells.ALL_SPELLS.concat(Spells.ALL_TACTICS))
         {
            if(Debug.noLanguage)
            {
               _loc1_.name = "";
               _loc1_.description = "";
            }
            else
            {
               _loc1_.name = textFile[_loc1_.SID]["name"];
               _loc1_.description = textFile[_loc1_.SID]["desc"];
            }
         }
         for each(_loc1_ in Spells.FOE_SPELLS)
         {
            if(Debug.noLanguage)
            {
               _loc1_.name = "";
            }
            else
            {
               _loc1_.name = textFile[_loc1_.SID];
            }
         }
         for each(_loc1_ in Summons.ALL_SUMMONS)
         {
            if(Debug.noLanguage)
            {
               _loc1_.description = "";
            }
            else
            {
               _loc1_.description = textFile[_loc1_.fname];
            }
         }
         textFile = getFoesFile();
         for each(_loc1_ in Summons.ALL_SUMMONS)
         {
            _loc1_.updateName();
         }
      }
      
      public static function setItemStrings() : *
      {
         var _loc1_:Item = null;
         textFile = getItemsFile();
         for each(_loc1_ in Items.CRAFT_LIST.concat(Items.FOOD_LIST.concat(Items.STAT_LIST.concat(Items.KEY_LIST).concat(Items.tomato))))
         {
            if(Debug.noLanguage)
            {
               _loc1_.name = "";
               _loc1_.description = "";
            }
            else
            {
               _loc1_.name = textFile[_loc1_.SID]["name"];
               _loc1_.description = textFile[_loc1_.SID]["description"];
            }
         }
      }
      
      public static function setCardStrings() : *
      {
         var _loc1_:Card = null;
         textFile = getCardsFile();
         for each(_loc1_ in Cards.ALL_CARDS)
         {
            if(Debug.noLanguage)
            {
               _loc1_.name = "";
               _loc1_.description = "";
            }
            else
            {
               _loc1_.name = textFile[_loc1_.SID]["name"];
               _loc1_.description = textFile[_loc1_.SID]["description"];
            }
         }
      }
      
      public static function setAchievementStrings() : *
      {
         var _loc1_:Object = null;
         textFile = getMedalsFile();
         for each(_loc1_ in Medals.MEDALS)
         {
            if(Debug.noLanguage)
            {
               _loc1_.name = "";
               _loc1_.desc = "";
            }
            else
            {
               _loc1_.name = textFile[_loc1_.SID]["name"];
               _loc1_.desc = textFile[_loc1_.SID]["desc"];
            }
         }
         if(Options.newgroundsVersion)
         {
            textFile = text.english.medals;
            for each(_loc1_ in Medals.MEDALS)
            {
               _loc1_.MID = textFile[_loc1_.SID]["name"];
            }
         }
      }
      
      public static function setFoeStrings(param1:Foe, param2:String) : *
      {
         textFile = getFoesFile();
         if(Debug.noLanguage)
         {
            param1.fname = "";
            param1.description = "";
         }
         else
         {
            param1.fname = textFile[param2].name;
            param1.description = textFile[param2].desc;
         }
      }
      
      public static function getEnglishFoeName(param1:String) : *
      {
         textFile = getFoesFile();
         return textFile[f].name;
      }
      
      public static function setSummonName(param1:Summon, param2:String) : *
      {
         param2 = param2.toLowerCase();
         param1.name = textFile[param2].name;
      }
      
      public static function setWeatherStrings() : *
      {
         var _loc1_:Weather = null;
         textFile = getNamesFile();
         for each(_loc1_ in Weather.WEATHER_LIST)
         {
            if(Debug.noLanguage)
            {
               _loc1_.name = "";
               _loc1_.desc = "";
            }
            else
            {
               _loc1_.name = textFile[_loc1_.SID]["name"];
               _loc1_.desc = textFile[_loc1_.SID]["description"];
            }
         }
      }
      
      public static function getElementString(param1:String) : *
      {
         if(Debug.noLanguage)
         {
            return "";
         }
         textFile = getNamesFile();
         param1 = param1.toUpperCase();
         return textFile[param1];
      }
      
      public static function getDialogue(param1:String) : Array
      {
         if(Debug.noLanguage)
         {
            return ["   ",1];
         }
         textFile = getDialogueFile();
         return textFile[param1];
      }
      
      public static function getBattles(param1:String, param2:int) : Array
      {
         if(Debug.noLanguage)
         {
            return ["   ",1];
         }
         textFile = getBattlesFile();
         return textFile[param1][param2];
      }
      
      public static function getStatString(param1:String) : *
      {
         if(Debug.noLanguage)
         {
            return "";
         }
         textFile = getNamesFile();
         param1 = param1.toUpperCase();
         return textFile[param1];
      }
      
      public static function getCutscene(param1:String) : Array
      {
         if(Debug.noLanguage)
         {
            return ["Missing text.",1];
         }
         textFile = getDialogueFile();
         return textFile[param1];
      }
      
      public static function getPlayerName(param1:int) : *
      {
         if(Debug.noLanguage)
         {
            return "";
         }
         textFile = getNamesFile();
         return textFile["playerNames"][param1];
      }
      
      public static function setBuffAndStatusDescriptions() : *
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         textFile = getNamesFile();
         if(Debug.noLanguage)
         {
            _loc1_ = [];
            _loc2_ = 0;
            while(_loc2_ < 50)
            {
               _loc1_[_loc2_] = ["",""];
               _loc2_++;
            }
            Buff.descriptions = _loc1_.concat();
            Status.descriptions = _loc1_.concat();
            _loc1_ = [];
            _loc2_ = 0;
            while(_loc2_ < 20)
            {
               _loc1_[_loc2_] = "";
               _loc2_++;
            }
            Status.resistanceNames = _loc1_.concat();
         }
         else
         {
            Buff.descriptions = textFile["BUFF_INFO"];
            Status.descriptions = textFile["STATUS_INFO"];
            Status.resistanceNames = textFile["RESISTANCE_NAMES"];
         }
      }
   }
}

