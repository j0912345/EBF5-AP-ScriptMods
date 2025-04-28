package
{
   import flash.display.MovieClip;
   import flash.net.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2864")]
   public class SaveMenu extends MovieClip
   {
      public static var fileNo:int = 1;
      
      public static var meowLoadingComplete:Boolean = false;
      
      public static var saveDataList:Array = [{},{},{},{},{},{},{},{},{}];
      
      public var s:MovieClip;
      
      public var slot:MovieClip;
      
      public var slots:Array;
      
      private var so:SharedObject;
      
      private var jo:Object;
      
      private var saveMode:Boolean = false;
      
      public var deleteMenu:MovieClip;
      
      public var confirmMenu:MovieClip;
      
      public var selectedSave:int = 0;
      
      public var tempid:int = 0;
      
      public function SaveMenu()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public static function loadMeowFiles(param1:Boolean = false) : *
      {
         SaveData.forceOverwrite = param1;
         if(!Options.applicationFeatures || !Main.messagesEnabled)
         {
            return;
         }
         Main.log("CONVERTING MEOW FILES TO .SOL FILES...");
         Main.sendMessage("loadAllFiles");
      }
      
      public static function loadMeowOptions() : *
      {
         Main.sendMessage("loadOptions");
      }
      
      public static function loadCloud() : *
      {
         if(!Debug.armorGames)
         {
            return;
         }
         try
         {
            Main.armorAPI.retrieveUserData(recieveDataCallback,"file" + fileNo);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function recieveDataCallback(param1:Object) : void
      {
         var data2:Object = null;
         var jo:Object = null;
         var s:String = null;
         var so:SharedObject = null;
         var data:Object = param1;
         Main.log("\nGetting save: " + fileNo);
         if(Boolean(data.success) && Boolean(data.data))
         {
            data2 = {};
            jo = JSON.parse(data.data);
            for each(s in ["blocks","equipLevels","equipOwnage","equipUsage","npcFlags","itemQuantities","rareItemCosts","spellLevels","spellOwnage","spellUsage","playerData","mapData","eventData","textFlags","party","scans","gameStats","questNo","area","misc"])
            {
               data2[s] = jo[s];
            }
            if(Options.enableSols)
            {
               try
               {
                  so = SharedObject.getLocal("EBF5file" + fileNo);
                  so.data = data2;
                  so.flush();
               }
               catch(e:Error)
               {
               }
            }
            else
            {
               saveDataList[fileNo] = data2;
            }
         }
         else
         {
            saveDataList[fileNo] = {};
         }
         ++fileNo;
      }
      
      public function init() : *
      {
         var _loc1_:MovieClip = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         if(this.deleteMenu)
         {
            this.deleteMenu.visible = false;
         }
         if(this.confirmMenu)
         {
            this.confirmMenu.visible = false;
         }
         for each(_loc1_ in this.slots)
         {
            if(Boolean(_loc1_) && Boolean(_loc1_.parent))
            {
               removeChild(_loc1_);
            }
         }
         this.slots = [];
         if(Game.mode == Game.MAP)
         {
            this.saveMode = true;
         }
         var _loc2_:int = 0;
         while(_loc2_ < 8)
         {
            _loc3_ = {};
            this.slot = new SaveSlot();
            addChild(this.slot);
            this.slots.push(this.slot);
            this.slot.stop();
            this.slot.x = -406 + 160 * (_loc2_ % 4);
            if(Debug.armorGames)
            {
               this.slot.y = -96 + 181 * Math.floor(_loc2_ / 4);
            }
            else
            {
               this.slot.y = -88 + 168 * Math.floor(_loc2_ / 4);
            }
            this.slot.ID = _loc2_ + 1;
            if(_loc2_ == 7)
            {
               if(Options.enableSols)
               {
                  this.so = SharedObject.getLocal("EBF5autosave");
                  _loc3_ = this.so.data;
               }
               else
               {
                  _loc3_ = saveDataList[8];
               }
               Global.translate(this.slot.getChildByName("title"),"save11",20,"",false,"",false,true);
            }
            else
            {
               if(Options.enableSols)
               {
                  this.so = SharedObject.getLocal("EBF5file" + (_loc2_ + 1));
                  _loc3_ = this.so.data;
               }
               else
               {
                  _loc3_ = saveDataList[_loc2_ + 1];
               }
               Global.translate(this.slot.getChildByName("title"),"save12",20,_loc2_ + 1,false,"",false,true);
            }
            this.slot.title.setTextFormat(GUI.boldText);
            if(!_loc3_ || !_loc3_.party)
            {
               this.slot.gotoAndStop(2);
               this.slot.area.gotoAndStop("empty");
            }
            else
            {
               this.slot.time.text = "" + GUI.formatTime(_loc3_.gameStats[6]);
               this.slot.levels.text = "";
               this.slot.levels.text += _loc3_.playerData[0][0];
               this.slot.area.gotoAndStop(_loc3_.area);
               if(_loc3_.questNo == 1)
               {
                  this.slot.ngp.visible = false;
               }
               else
               {
                  this.slot.ngp.visible = true;
               }
               if(Boolean(_loc3_.altWeather) || Boolean(_loc3_.altFoes) || Boolean(_loc3_.altEquipStats) || Boolean(_loc3_.altEquipLocations) || Boolean(_loc3_.alwaysScaleFoes) || Boolean(_loc3_.alwaysGiveEXP) || Boolean(_loc3_.threePlayerMode) || Boolean(_loc3_.twoPlayerMode) || Boolean(_loc3_.onePlayerMode))
               {
                  _loc4_ = 1;
                  while(_loc4_ <= 6)
                  {
                     this.slot["tick" + _loc4_].gotoAndStop(2);
                     _loc4_++;
                  }
                  if(_loc3_.altFoes)
                  {
                     this.slot.tick1.gotoAndStop(1);
                  }
                  if(_loc3_.altWeather)
                  {
                     this.slot.tick2.gotoAndStop(1);
                  }
                  if(_loc3_.altEquipStats)
                  {
                     this.slot.tick3.gotoAndStop(1);
                  }
                  if(_loc3_.altEquipLocations)
                  {
                     this.slot.tick4.gotoAndStop(1);
                  }
                  if(_loc3_.alwaysScaleFoes)
                  {
                     this.slot.tick5.gotoAndStop(1);
                  }
                  if(_loc3_.onePlayerMode)
                  {
                     this.slot.tick6.gotoAndStop(1);
                  }
                  else if(_loc3_.twoPlayerMode)
                  {
                     this.slot.tick6.gotoAndStop(2);
                  }
                  else if(_loc3_.threePlayerMode)
                  {
                     this.slot.tick6.gotoAndStop(3);
                  }
                  else
                  {
                     this.slot.tick6.gotoAndStop(4);
                  }
               }
               else
               {
                  _loc4_ = 1;
                  while(_loc4_ <= 6)
                  {
                     this.slot["tick" + _loc4_].gotoAndStop(5);
                     _loc4_++;
                  }
               }
               this.slot.time.setTextFormat(GUI.boldText);
               this.slot.levels.setTextFormat(GUI.boldText);
            }
            this.slot.scaleX = 0.9;
            this.slot.scaleY = 0.9;
            if(Game.mode == Game.MAIN_MENU)
            {
               this.slot.x -= 35;
            }
            if(_loc2_ == 7 && Boolean(this.saveMode))
            {
               this.slot.b.visible = false;
            }
            if(!this.saveMode && this.slot.currentFrame == 2)
            {
               this.slot.b.visible = false;
            }
            _loc2_++;
         }
      }
      
      public function selectFile(param1:int, param2:Boolean) : *
      {
         this.selectedSave = param1;
         if(this.saveMode)
         {
            if(!this.canSave())
            {
               return;
            }
            if(param2)
            {
               this.confirmMenu.visible = true;
               setChildIndex(this.confirmMenu,numChildren - 1);
               this.confirmMenu.x = -280 + 160 * ((this.selectedSave - 1) % 4);
               this.confirmMenu.y = -40 + 168 * Math.floor((this.selectedSave - 1) / 4);
            }
            else
            {
               this.saveFile(param1);
            }
         }
         else
         {
            this.loadFile(param1);
         }
      }
      
      public function overwrite(param1:Boolean) : *
      {
         if(param1)
         {
            if(!this.canSave())
            {
               return;
            }
            this.saveFile(this.selectedSave);
         }
         else
         {
            this.confirmMenu.visible = false;
         }
      }
      
      public function selectDelete(param1:int) : *
      {
         this.selectedSave = param1;
         this.deleteMenu.visible = true;
         setChildIndex(this.deleteMenu,numChildren - 1);
         this.deleteMenu.x = -280 + 160 * ((this.selectedSave - 1) % 4);
         this.deleteMenu.y = 168 * Math.floor((this.selectedSave - 1) / 4);
      }
      
      public function deleteData(param1:Boolean) : *
      {
         if(!param1)
         {
            this.deleteMenu.visible = false;
         }
         else
         {
            saveDataList[this.selectedSave] = {};
            try
            {
               this.so = SharedObject.getLocal("EBF5file" + this.selectedSave);
               this.so.clear();
            }
            catch(e:Error)
            {
            }
            try
            {
               Main.sendMessage("deleteMeow","file" + this.selectedSave + ".meow");
            }
            catch(e:Error)
            {
            }
            this.init();
            try
            {
               parent.parent.splash.gotoAndPlay("deleted");
               parent.parent.splash.x = -293 + 160 * ((this.selectedSave - 1) % 4);
               parent.parent.splash.y = -370 + 168 * Math.floor((this.selectedSave - 1) / 4);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function loadFile(param1:int) : *
      {
         (parent.parent as MainMenu).fadeTo(MainMenu.START);
         MainMenu.loadFile = param1;
      }
      
      public function saveFile(param1:int) : *
      {
         if(!Options.enableSols)
         {
            Main.remakeReceiver();
         }
         SaveData.saveGame("file" + param1);
         if(!Options.enableSols)
         {
            if(this.deleteMenu)
            {
               this.deleteMenu.visible = false;
            }
            if(this.confirmMenu)
            {
               this.confirmMenu.visible = false;
            }
            this.tempid = param1;
            (Game.root as Main).saveMenu = this;
            gotoAndStop(2);
         }
         else
         {
            this.init();
            parent.parent.splash.gotoAndPlay("saved");
            parent.parent.splash.x = -293 + 160 * ((param1 - 1) % 4);
            parent.parent.splash.y = -370 + 168 * Math.floor((param1 - 1) / 4);
         }
      }
      
      public function saveConfirmed() : *
      {
         gotoAndStop(1);
         this.init();
         (Game.root as Main).saveMenu = null;
         parent.parent.splash.gotoAndPlay("saved");
         parent.parent.splash.x = -293 + 160 * ((this.tempid - 1) % 4);
         parent.parent.splash.y = -370 + 168 * Math.floor((this.tempid - 1) / 4);
      }
      
      public function canSave() : Boolean
      {
         if(Boolean(Game.mapMenu.maps.player) && Game.mapMenu.maps.player.boosting)
         {
            Maps.playSound("nope");
            return false;
         }
         if(Boolean(Game.mapMenu.maps.player) && (Game.mapMenu.maps.player.X < 0 || Game.mapMenu.maps.player.Y < 0 || Game.mapMenu.maps.player.X > 19 || Game.mapMenu.maps.player.Y > 11))
         {
            return false;
         }
         var _loc1_:int = Maps.instance.tileUnderPlayer();
         if(_loc1_ == 41 && Maps.instance.player.busy)
         {
            Maps.playSound("nope");
            return false;
         }
         if(_loc1_ >= 62 && _loc1_ <= 65)
         {
            Maps.playSound("nope");
            return false;
         }
         if(_loc1_ >= 50 && _loc1_ <= 53)
         {
            Maps.playSound("nope");
            return false;
         }
         return true;
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         for each(this.s in this.slots)
         {
            removeChild(this.s);
         }
      }
   }
}

