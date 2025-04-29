package
{
   import flash.display.MovieClip;
   import flash.events.*;
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18083")]
   public class MapPlayer extends MovieClip
   {
      public static var watered:Boolean = false;
      
      internal static var waterOffset:int = 8;
      
      public var X:int = 8;
      
      public var Y:int = 6;
      
      public var center:MovieClip;
      
      public var busy:Boolean = false;
      
      public var facing:String = "";
      
      public var bubbles:MovieClip;
      
      public var bubble:MovieClip;
      
      public var shoes:int = 2;
      
      public var hat:int = 30;
      
      public var body:int = 50;
      
      public var player:int = 1;
      
      public var back:int = 2;
      
      public var hold:int = 2;
      
      public var emo:int = 1;
      
      public var hand:int = 1;
      
      public var hideHair:Boolean = false;
      
      public var hideCowlick:Boolean = false;
      
      public var magnetwave:MovieClip;
      
      public var race:int = 2;
      
      public var dye:int = 2;
      
      public var skinDirty:Boolean = false;
      
      public var prevX:int;
      
      public var prevY:int;
      
      public var shownBubble:Boolean = false;
      
      public var healCount:int = 0;
      
      public var sliding:Boolean = false;
      
      public var boosting:Boolean = false;
      
      public var teleport:int = -1;
      
      public var transWater:int = 0;
      
      public function MapPlayer(param1:*, param2:*)
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10,10,this.frame11,11,this.frame12,12,this.frame13,13,this.frame14,14,this.frame15,15,this.frame16,16,this.frame17,17,this.frame18,18,this.frame19,19,this.frame20,20,this.frame21,21,this.frame22,22,this.frame23,23,this.frame24,24,this.frame25,25,this.frame26,26,this.frame27,27,this.frame28,28,this.frame29,30,this.frame31,40,this.frame41,41,this.frame42,43,this.frame44,53,this.frame54,54,this.frame55,56,this.frame57,66,this.frame67,67,this.frame68,69,this.frame70,80,this.frame81,81,this.frame82,84,this.frame85,101,this.frame102,102,this.frame103,103,this.frame104,121,this.frame122,122,this.frame123,123,this.frame124,124,this.frame125,125,this.frame126,126,this.frame127,127,this.frame128,128,this.frame129,129,this.frame130,130,this.frame131,131,this.frame132,132,this.frame133,133,this.frame134,134,this.frame135,135,this.frame136,136,this.frame137,137,this.frame138,138,this.frame139,139,this.frame140,140,this.frame141,141,this.frame142,142,this.frame143,143,this.frame144,144,this.frame145,145,this.frame146,146,this.frame147,147,this.frame148,148,this.frame149,149,this.frame150,150,this.frame151,151,this.frame152,161,this.frame162,166,this.frame167,167,this.frame168,168,this.frame169,169,this.frame170,170,this.frame171,171,this.frame172,172,this.frame173,173,this.frame174,174,this.frame175,175,this.frame176,176,this.frame177,177,this.frame178,178,this.frame179,179,this.frame180,180,this.frame181,181,this.frame182,182,this.frame183,183,this.frame184,184,this.frame185,185,this.frame186,186,this.frame187,187,this.frame188,188,this.frame189,189,this.frame190,190,this.frame191,191,this.frame192,192,this.frame193,193,this.frame194,194,this.frame195,219,this.frame220);
         if(param1 != -1)
         {
            this.X = param1;
         }
         else
         {
            this.X = Constants.PLAYER_X;
         }
         if(param2 != -1)
         {
            this.Y = param2;
         }
         else
         {
            this.Y = Constants.PLAYER_Y;
         }
      }
      
      public function skin() : *
      {
         var _loc1_:Player = null;
         var _loc2_:int = 0;
         this.back = 2;
         this.hold = 2;
         this.race = 2;
         this.player = (Game.party[0] as Player).playerNo;
         if(this.player == 1)
         {
            _loc1_ = Players.player1;
            this.emo = 10;
         }
         if(this.player == 2)
         {
            _loc1_ = Players.player2;
            this.emo = 56;
         }
         if(this.player == 3)
         {
            _loc1_ = Players.player3;
            this.emo = 57;
         }
         if(this.player == 4)
         {
            _loc1_ = Players.player4;
            this.emo = 13;
         }
         if(this.player == 5)
         {
            _loc1_ = Players.player5;
            this.emo = 55;
            this.race = 17;
            this.shoes = 20;
         }
         this.hat = _loc1_.hat.map[0];
         this.body = _loc1_.armor.map[0];
         this.shoes = _loc1_.armor.map[1];
         this.hand = 1;
         this.hideHair = false;
         this.hideCowlick = false;
         for each(_loc2_ in [5,27,31,33])
         {
            if(this.hat == _loc2_)
            {
               this.hideHair = true;
            }
         }
         for each(_loc2_ in [5,10,13,15,18,19,20,22,24,25,26,27,29,31,33])
         {
            if(this.hat == _loc2_)
            {
               this.hideCowlick = true;
            }
         }
         if(this.player == 5)
         {
            this.hand = 17;
         }
         this.setFace();
         if(this.busy)
         {
            this.skinDirty = true;
         }
         else
         {
            this.updateSkin();
         }
      }
      
      public function updateSkin() : *
      {
         gotoAndStop("empty");
         if(watered)
         {
            gotoAndStop("rdown2");
         }
         else
         {
            gotoAndStop("down2");
         }
         this.facing = Maps.RIGHT;
         this.skinDirty = false;
      }
      
      public function setFace() : *
      {
         var _loc1_:int = 0;
         if(Players.PLAYERS[this.player - 1].getHpPercent() >= 75)
         {
            _loc1_ = 3;
         }
         else if(Players.PLAYERS[this.player - 1].getHpPercent() >= 50)
         {
            _loc1_ = 2;
         }
         else if(Players.PLAYERS[this.player - 1].getHpPercent() >= 25)
         {
            _loc1_ = 1;
         }
         else
         {
            _loc1_ = 0;
         }
         this.emo = [[],[15,19,48,12],[25,22,18,56],[11,38,57,10],[32,33,13,8],[63,61,55,62]][this.player][_loc1_];
      }
      
      public function init() : *
      {
         if(MapMenu.tempMapVars)
         {
            this.X = MapMenu.tempMapVars[0];
            this.Y = MapMenu.tempMapVars[1];
            if(MapMenu.tempMapVars[3])
            {
               watered = true;
               gotoAndStop("rright2");
               this.onWater(0,0,false,true);
            }
         }
         this.player = (Game.party[0] as Player).playerNo;
         this.prevX = -2;
         this.prevY = -2;
         this.player = 1;
         this.skin();
         this.updatePosition();
         parent.setChildIndex(this,parent.getChildIndex(parent["layer" + (this.Y + 1)]));
         if(MapMenu.tempMapVars)
         {
            this.face(MapMenu.tempMapVars[2]);
         }
      }
      
      public function done() : *
      {
         this.busy = false;
         if(this.skinDirty && (parent as Maps).path.length == 0 && (parent as Maps).interact == "" && (parent as Maps).moveMap == "" && !this.boosting)
         {
            this.updateSkin();
         }
         stop();
         if(Options.keyboard)
         {
            if(this.X < 0)
            {
               parent.moveMap = Maps.LEFT;
            }
            if(this.X > Constants.gridWidth - 1)
            {
               parent.moveMap = Maps.RIGHT;
            }
            if(this.Y < 0)
            {
               parent.moveMap = Maps.UP;
            }
            if(this.Y > Constants.gridHeight - 1)
            {
               parent.moveMap = Maps.DOWN;
            }
         }
         if(!parent)
         {
            return;
         }
         this.updatePosition();
         this.move();
         if((parent as Maps).grid[Maps.getTile(this.X,this.Y)] == 3 && !this.busy && !Options.keyboard)
         {
            gotoAndStop("up2");
         }
      }
      
      public function animate(param1:String) : *
      {
         this.busy = true;
         if(this.sliding)
         {
            this.sliding = false;
            gotoAndPlay("i" + param1);
         }
         else
         {
            gotoAndPlay(param1);
         }
      }
      
      public function setCave() : *
      {
      }
      
      public function boosterIgnores() : Boolean
      {
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 6 && Items.magneticboots.quantity != 0)
         {
            this.boosting = false;
            Maps.playSound("magnet");
            this.magnetwave.gotoAndPlay(2);
         }
         return (parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 0 || (parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 44 || (parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 17 || (parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 6 && Items.magneticboots.quantity == 0;
      }
      
      public function updatePosition() : *
      {
         var newlyBoosted:Boolean;
         var prevFace:String;
         var p:Player = null;
         var o:Object = null;
         var mc:MovieClip = null;
         var moved:Boolean = false;
         var stepped:Boolean = false;
         x = this.X * 50 - this.center.x + 30;
         y = this.Y * 40 - this.center.y + 40;
         if(MapPlayer.watered)
         {
            y -= waterOffset;
         }
         if(this.X != this.prevX || this.Y != this.prevY)
         {
            moved = true;
         }
         this.prevX = this.X;
         this.prevY = this.Y;
         this.setCave();
         if(moved)
         {
            if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 10 && Items.leafyboots.quantity != 0)
            {
               Maps.playSound("lily" + int(Math.random() * 3 + 1));
            }
            if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 12 && Items.wingedboots.quantity != 0)
            {
               Maps.playSound("cloud" + int(Math.random() * 3 + 1));
            }
            if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 41 && Items.spikedboots.quantity != 0)
            {
               Maps.playSound("ice" + int(Math.random() * 3 + 1));
            }
            if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 11 && Items.thermalboots.quantity != 0)
            {
               this.bubbles.gotoAndPlay("burn");
               Maps.playSound("lava" + int(Math.random() * 3 + 1));
               for each(p in [Players.player1,Players.player2,Players.player3,Players.player4,Players.player5])
               {
                  p.realHP -= p.maxHP / 50 * p.getResistance("elemental",Element.FIRE);
                  if(p.realHP < 1)
                  {
                     p.realHP = 1;
                  }
                  if(p.realHP > p.maxHP)
                  {
                     p.realHP = p.maxHP;
                  }
                  (parent.parent as MapMenu).updatePlayerBars();
               }
            }
            if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 57 && Items.rubberboots.quantity != 0)
            {
               this.bubbles.gotoAndPlay("acid");
               Maps.playSound("lava" + int(Math.random() * 3 + 1));
               for each(p in [Players.player1,Players.player2,Players.player3,Players.player4,Players.player5])
               {
                  p.realHP -= p.maxHP / 50 * p.getResistance("elemental",Element.BIO);
                  if(p.realHP < 1)
                  {
                     p.realHP = 1;
                  }
                  if(p.realHP > p.maxHP)
                  {
                     p.realHP = p.maxHP;
                  }
                  (parent.parent as MapMenu).updatePlayerBars();
               }
            }
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 0)
         {
            Maps.touchedPlainTile = true;
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] != 44)
         {
            Maps.puzzleTemp = null;
         }
         if(moved)
         {
            if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 41 && Items.spikedboots.quantity == 0)
            {
               (parent as Maps).path = [];
               (parent as Maps).moveMap = "";
               this.move(true);
            }
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 36)
         {
            this.interact();
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 44 || (parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 45)
         {
            if((parent as Maps).path.length >= 1 || this.boosting)
            {
               this.interact();
            }
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 45)
         {
            if((parent as Maps).path.length == 0)
            {
               this.interact();
            }
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 44 || (parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 45 || (parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 43 || (parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 58)
         {
            if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 45)
            {
               this.busy = true;
            }
            if(!this.boosting && Options.keyboard)
            {
               this.interact();
            }
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 63 && !stepped)
         {
            this.face(Maps.DOWN);
            (parent as Maps).path = [];
            this.move(false,true);
            stepped = true;
            Maps.playSound("rapid");
            (parent as Maps).moveMap = "";
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 62 && !stepped)
         {
            this.face(Maps.UP);
            (parent as Maps).path = [];
            this.move(false,true);
            stepped = true;
            Maps.playSound("rapid");
            (parent as Maps).moveMap = "";
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 64 && !stepped)
         {
            this.face(Maps.LEFT);
            (parent as Maps).path = [];
            this.move(false,true);
            stepped = true;
            Maps.playSound("rapid");
            (parent as Maps).moveMap = "";
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 65 && !stepped)
         {
            this.face(Maps.RIGHT);
            (parent as Maps).path = [];
            this.move(false,true);
            stepped = true;
            Maps.playSound("rapid");
            (parent as Maps).moveMap = "";
         }
         newlyBoosted = this.boosting;
         prevFace = this.facing;
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 50 && !stepped || this.boosting && this.facing == Maps.DOWN && this.boosterIgnores())
         {
            this.face(Maps.DOWN);
            (parent as Maps).path = [];
            this.boosting = true;
            this.move(false,true);
            stepped = true;
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 51 && !stepped || this.boosting && this.facing == Maps.UP && this.boosterIgnores())
         {
            this.face(Maps.UP);
            (parent as Maps).path = [];
            this.boosting = true;
            this.move(false,true);
            stepped = true;
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 52 && !stepped || this.boosting && this.facing == Maps.LEFT && this.boosterIgnores())
         {
            this.face(Maps.LEFT);
            (parent as Maps).path = [];
            this.boosting = true;
            this.move(false,true);
            stepped = true;
         }
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] == 53 && !stepped || this.boosting && this.facing == Maps.RIGHT && this.boosterIgnores())
         {
            this.face(Maps.RIGHT);
            (parent as Maps).path = [];
            this.boosting = true;
            this.move(false,true);
            stepped = true;
         }
         if((!newlyBoosted || this.facing != prevFace) && this.boosting)
         {
            Maps.playSound("booster");
            (parent as Maps).moveMap = "";
         }
         ++SaveData.stepsWalked;
         if(Debug.showCutscenes || Debug.showMinorCutscenes)
         {
            try
            {
               for each(o in (parent as Maps).objectData)
               {
                  mc = parent.getChildByName(o.mc);
                  if(o.type == Maps.SCENE && mc.X == this.X && this.Y == mc.Y)
                  {
                     if(!Maps.sceneData[MapData.mapNo][o.id])
                     {
                        ++parent.busy;
                        Maps.sceneData[MapData.mapNo][o.id] = true;
                        ((parent.parent as MapMenu).textbox as MapText).page = 0;
                        ((parent.parent as MapMenu).textbox as MapText).NpcData = null;
                        ((parent.parent as MapMenu).textbox as MapText).scene(o.data,o.slides);
                     }
                  }
                  else if(o.type == Maps.FOE2 && mc.X == this.X && this.Y == mc.Y)
                  {
                     if(mc.state == 0)
                     {
                        this.busy = true;
                        Game.battleNo = mc.name.substring(3);
                        (parent as Maps).interact = "";
                        (parent as Maps).startBattle();
                        mc.state = 1;
                        Game.mapNo = MapData.mapNo;
                     }
                  }
               }
            }
            catch(e:Error)
            {
            }
         }
         if(Maps.outOfGrid(this.X,this.Y) && (parent as Maps).moveMap != "")
         {
            parent.fader.gotoAndPlay((parent as Maps).moveMap);
            if(watered)
            {
               this.transWater = 2;
            }
            else
            {
               this.transWater = 0;
            }
         }
         else
         {
            try
            {
               parent.setChildIndex(this,parent.getChildIndex(parent["layer" + (this.Y + 1)]));
            }
            catch(errObject:Error)
            {
            }
         }
         try
         {
            (parent.parent as MapMenu).showTipBubbles();
         }
         catch(e:Error)
         {
         }
      }
      
      public function showBubble(param1:int) : *
      {
      }
      
      public function passiveHeal() : *
      {
         var _loc1_:Player = null;
         ++this.healCount;
         for each(_loc1_ in [Players.player1,Players.player2,Players.player3,Players.player4,Players.player5])
         {
            if(_loc1_.dead)
            {
               _loc1_.HP = 0;
            }
            else
            {
               _loc1_.realHP += Math.ceil(_loc1_.maxHP / 15);
               if(this.healCount % 4 == 0)
               {
                  _loc1_.reduceCooldowns(1);
               }
               if(_loc1_.realHP > _loc1_.maxHP)
               {
                  _loc1_.realHP = _loc1_.maxHP;
               }
               try
               {
                  (parent.parent as MapMenu).updatePlayerBars();
               }
               catch(e:Error)
               {
               }
               try
               {
                  if((parent.parent as MapMenu).itemsSelect.visible && (parent.parent as MapMenu).itemsSelect.currentFrame >= 3)
                  {
                     (parent.parent as MapMenu).initFood(false);
                  }
               }
               catch(e:Error)
               {
                  continue;
               }
            }
         }
      }
      
      public function keepSliding(param1:String) : *
      {
         if(param1 == Maps.UP)
         {
            if((parent as Maps).tryNode((parent as Maps).grid[Maps.getTile(this.X,this.Y - 1)],(parent as Maps).grid[Maps.getTile(this.X,this.Y)],Maps.UP))
            {
               return true;
            }
            this.boosting = false;
            return false;
         }
         if(param1 == Maps.DOWN)
         {
            if((parent as Maps).tryNode((parent as Maps).grid[Maps.getTile(this.X,this.Y + 1)],(parent as Maps).grid[Maps.getTile(this.X,this.Y)],Maps.DOWN))
            {
               return true;
            }
            this.boosting = false;
            return false;
         }
         if(param1 == Maps.LEFT)
         {
            if((parent as Maps).tryNode((parent as Maps).grid[Maps.getTile(this.X - 1,this.Y)],(parent as Maps).grid[Maps.getTile(this.X,this.Y)],Maps.LEFT))
            {
               return true;
            }
            this.boosting = false;
            return false;
         }
         if(param1 == Maps.RIGHT)
         {
            if((parent as Maps).tryNode((parent as Maps).grid[Maps.getTile(this.X + 1,this.Y)],(parent as Maps).grid[Maps.getTile(this.X,this.Y)],Maps.RIGHT))
            {
               return true;
            }
            this.boosting = false;
            return false;
         }
      }
      
      public function move(param1:Boolean = false, param2:Boolean = false) : *
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:MovieClip = null;
         if(!Options.keyboard && !this.busy && !(parent as Maps).busy && Boolean((parent as Maps).path.length))
         {
            _loc3_ = int((parent as Maps).path.pop());
            this.busy = true;
            if(_loc3_ == Maps.getTile(this.X,this.Y) + 1)
            {
               this.moveRight();
            }
            if(_loc3_ == Maps.getTile(this.X,this.Y) - 1)
            {
               this.moveLeft();
            }
            if(_loc3_ == Maps.getTile(this.X,this.Y) - Constants.gridWidth)
            {
               this.moveUp();
            }
            if(_loc3_ == Maps.getTile(this.X,this.Y) + Constants.gridWidth)
            {
               this.moveDown();
            }
         }
         if(param1 || param2)
         {
            if(this.facing == Maps.RIGHT && this.keepSliding(Maps.RIGHT))
            {
               if(param1)
               {
                  this.sliding = true;
               }
               this.moveRight();
            }
            if(this.facing == Maps.LEFT && this.keepSliding(Maps.LEFT))
            {
               if(param1)
               {
                  this.sliding = true;
               }
               this.moveLeft();
            }
            if(this.facing == Maps.UP && this.keepSliding(Maps.UP))
            {
               if(param1)
               {
                  this.sliding = true;
               }
               this.moveUp();
            }
            if(this.facing == Maps.DOWN && this.keepSliding(Maps.DOWN))
            {
               if(param1)
               {
                  this.sliding = true;
               }
               this.moveDown();
            }
         }
         else if(!this.busy && !(parent as Maps).busy && (parent as Maps).moveMap != "")
         {
            this.busy = true;
            if((parent as Maps).moveMap == Maps.RIGHT)
            {
               this.moveRight();
            }
            if((parent as Maps).moveMap == Maps.LEFT)
            {
               this.moveLeft();
            }
            if((parent as Maps).moveMap == Maps.UP)
            {
               this.moveUp();
            }
            if((parent as Maps).moveMap == Maps.DOWN)
            {
               this.moveDown();
            }
         }
         else if(!Options.keyboard && !(parent as Maps).busy && !this.busy && !(parent as Maps).path.length)
         {
            if((parent as Maps).interact == Maps.RIGHT)
            {
               this.face(Maps.RIGHT);
            }
            if((parent as Maps).interact == Maps.LEFT)
            {
               this.face(Maps.LEFT);
            }
            if((parent as Maps).interact == Maps.UP)
            {
               this.face(Maps.UP);
            }
            if((parent as Maps).interact == Maps.DOWN)
            {
               this.face(Maps.DOWN);
            }
            if(parent)
            {
               this.interact();
            }
         }
         else if(Options.keyboard && !this.busy && !(parent as Maps).busy)
         {
            (parent as Maps).handleKeys();
         }
         if(Options.keyboard)
         {
            for each(_loc4_ in (parent as Maps).objectData)
            {
               if(_loc4_.ref)
               {
                  _loc5_ = _loc4_.ref;
               }
               else
               {
                  _loc5_ = parent.getChildByName(_loc4_.mc);
               }
               if(_loc5_)
               {
                  if(!(_loc4_.type == Maps.TELEPORTER || _loc4_.type == Maps.SUPER_TELEPORTER || _loc4_.type == Maps.GLOW_TILE || _loc4_.type == Maps.DOOR || _loc4_.type == Maps.DESTINATION || _loc4_.type == Maps.PUSH_BLOCK || _loc4_.type == Maps.ICE_BLOCK))
                  {
                     if(_loc4_.type == Maps.SIGN && _loc5_.X + _loc5_.Y * Constants.gridWidth == this.X + (this.Y - 1) * Constants.gridWidth && this.facing == Maps.UP || _loc4_.type != Maps.SIGN && _loc4_.type != Maps.SCENE && _loc5_.X + _loc5_.Y * Constants.gridWidth == this.facingTile() && (parent as Maps).grid[_loc5_.X + _loc5_.Y * Constants.gridWidth] != 0 && (parent as Maps).grid[_loc5_.X + _loc5_.Y * Constants.gridWidth] != 1)
                     {
                        this.showBubble(2);
                     }
                  }
               }
            }
         }
      }
      
      public function teleportMove() : *
      {
         if(this.teleport != 66)
         {
            this.X = (parent as Maps)["destination" + this.teleport].X;
            this.Y = (parent as Maps)["destination" + this.teleport].Y;
         }
         this.updatePosition();
      }
      
      public function checkForShapedBlocks(param1:MovieClip) : *
      {
         var _loc3_:int = 0;
         if(!(param1 is Pushblock) || !param1.shape)
         {
            return false;
         }
         var _loc2_:int = 0;
         while(_loc2_ <= 2)
         {
            _loc3_ = 0;
            while(_loc3_ <= 2)
            {
               if(Boolean(param1.shape[_loc2_][_loc3_]) && this.facingTile() == param1.X + _loc3_ + (param1.Y + _loc2_) * Constants.gridWidth)
               {
                  return true;
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function checkForShapedPush(param1:MovieClip, param2:int, param3:int) : *
      {
         var _loc5_:int = 0;
         if(!(param1 is Pushblock) || !param1.shape)
         {
            return false;
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ <= 2)
         {
            _loc5_ = 0;
            while(true)
            {
               if(_loc5_ > 2)
               {
                  _loc4_++;
                  continue loop0;
               }
               if(param1.shape[_loc4_][_loc5_])
               {
                  try
                  {
                     if(param1.shape[_loc4_ + param3][_loc5_ + param2])
                     {
                        continue;
                     }
                  }
                  catch(e:Error)
                  {
                  }
                  if((parent as Maps).grid[param1.X + _loc5_ + param2 + (param1.Y + _loc4_ + param3) * Constants.gridWidth] != 4)
                  {
                     break;
                  }
               }
               _loc5_++;
            }
            return false;
         }
         return true;
      }
      
      public function interact() : *
      {
         var o:Object = null;
         var mc:MovieClip = null;
         var pushed:Boolean = false;
         var paint:MovieClip = null;
         var c:int = 0;
         var b:Boolean = false;
         var n:Boolean = false;
         var sign2:Boolean = false;
         if(watered)
         {
            return;
         }
         for each(o in (parent as Maps).objectData)
         {
            if(o.ref)
            {
               mc = o.ref;
            }
            else
            {
               mc = parent.getChildByName(o.mc);
            }
            if(mc)
            {
               if((mc.X + mc.Y * Constants.gridWidth == this.facingTile() || this.checkForShapedBlocks(mc)) && (parent as Maps).grid[mc.X + mc.Y * Constants.gridWidth] != 0 && (parent as Maps).grid[mc.X + mc.Y * Constants.gridWidth] != 1)
               {
                  if(o.type == Maps.CHEST && Boolean((parent as Maps).interact))
                  {
                     if(mc.state == 0)
                     {
                        this.busy = true;
                        this.animate("open" + this.facing);
                        mc.gotoAndPlay("open");
                        mc.state = 1;
                        --Maps.treasures;
                        (parent.parent as MapMenu).showTreasure(o.data);
                        (parent as Maps).interact = "";
                     }
                  }
                  if(o.type == Maps.SHOP && Boolean((parent as Maps).interact))
                  {
                     this.busy = true;
                     this.animate("open" + this.facing);
                     (parent.parent as MapMenu).showShop(o.data);
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.FOE && Boolean((parent as Maps).interact))
                  {
                     if(mc.state == 0)
                     {
                        if(!Debug.skipBattles)
                        {
                           this.busy = true;
                           this.animate("open" + this.facing);
                           Game.battleNo = mc.name.substring(3);
                           (parent as Maps).interact = "";
                           (parent as Maps).startBattle();
                           mc.state = 1;
                           Game.mapNo = MapData.mapNo;
                        }
                        else
                        {
                           this.busy = true;
                           this.animate("open" + this.facing);
                           (parent as Maps).interact = "";
                           Maps.foeData[MapData.mapNo][mc.name.substring(3)] = 2;
                           mc.visible = false;
                           (parent as Maps).addTile(0,mc.X,mc.Y,false);
                        }
                     }
                  }
                  if(o.type == Maps.TORCH && Boolean((parent as Maps).interact))
                  {
                     if(Items.candle.quantity == 0)
                     {
                        mc.gotoAndPlay("bubble");
                     }
                     else if(mc.state == 0)
                     {
                        mc.gotoAndPlay("open");
                        mc.state = 1;
                     }
                     this.animate("open" + this.facing);
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.ROCK && Boolean((parent as Maps).interact))
                  {
                     if(Items.hammer.quantity == 0)
                     {
                        mc.gotoAndPlay("bubble");
                     }
                     else if(mc.state == 0)
                     {
                        mc.gotoAndPlay("open");
                        mc.state = 1;
                        (parent.parent as MapMenu).rockTreasure();
                     }
                     this.animate("open" + this.facing);
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.CRYSTAL && Boolean((parent as Maps).interact))
                  {
                     if(Items.bighammer.quantity == 0)
                     {
                        mc.gotoAndPlay("bubble");
                     }
                     else if(mc.state == 0)
                     {
                        mc.gotoAndPlay("open");
                        mc.state = 1;
                        (parent.parent as MapMenu).crystalTreasure();
                     }
                     this.animate("open" + this.facing);
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.LADDER && Boolean((parent as Maps).interact))
                  {
                     if(Items.stepladder.quantity == 0)
                     {
                        mc.gotoAndPlay("bubble");
                     }
                     else if(mc.state == 0)
                     {
                        mc.gotoAndPlay("open");
                        mc.state = 1;
                     }
                     this.animate("open" + this.facing);
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.TREE && Boolean((parent as Maps).interact))
                  {
                     if(Items.axe.quantity == 0)
                     {
                        mc.gotoAndPlay("bubble");
                     }
                     else if(mc.state == 0)
                     {
                        mc.gotoAndPlay("open");
                        mc.state = 1;
                        (parent.parent as MapMenu).treeTreasure();
                     }
                     this.animate("open" + this.facing);
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.DIRT && Boolean((parent as Maps).interact))
                  {
                     if(Items.shovel.quantity == 0)
                     {
                        mc.gotoAndPlay("bubble");
                     }
                     else if(mc.state == 0)
                     {
                        mc.gotoAndPlay("open");
                        mc.state = 1;
                        (parent.parent as MapMenu).dirtTreasure();
                     }
                     this.animate("open" + this.facing);
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.SNOW && Boolean((parent as Maps).interact))
                  {
                     if(Items.shovel.quantity == 0)
                     {
                        mc.gotoAndPlay("bubble");
                     }
                     else if(mc.state == 0)
                     {
                        mc.gotoAndPlay("open");
                        mc.state = 1;
                        (parent.parent as MapMenu).snowTreasure();
                     }
                     this.animate("open" + this.facing);
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.SWITCH && Boolean((parent as Maps).interact))
                  {
                     this.animate("open" + this.facing);
                     mc.play();
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.PED && Boolean((parent as Maps).interact))
                  {
                     this.animate("open" + this.facing);
                     if(mc.state == 0 && mc.item.quantity != 0)
                     {
                        Maps.switchData[mc.id] = true;
                        mc.gotoAndPlay("on");
                        mc.state = 1;
                        --mc.item.quantity;
                     }
                     else if(mc.state == 1)
                     {
                        Maps.switchData[mc.id] = false;
                        mc.gotoAndPlay("off");
                        mc.state = 0;
                        (parent.parent as MapMenu).showTreasure([mc.item,1]);
                     }
                     else
                     {
                        mc.gotoAndPlay("bubble");
                     }
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.KEY_BLOCK && Boolean((parent as Maps).interact))
                  {
                     if(mc.state == 0)
                     {
                        if(mc.item.quantity > 0)
                        {
                           this.busy = true;
                           this.animate("open" + this.facing);
                           mc.gotoAndPlay("open");
                           mc.state = 1;
                           --mc.item.quantity;
                        }
                        else
                        {
                           this.animate("open" + this.facing);
                           mc.gotoAndPlay("nope");
                        }
                        (parent as Maps).interact = "";
                     }
                  }
                  if(o.type == Maps.PUSH_BLOCK && Boolean((parent as Maps).interact))
                  {
                     pushed = false;
                     this.busy = true;
                     this.animate("open" + this.facing);
                     if(mc.shape)
                     {
                        if(this.facing == Maps.RIGHT && this.checkForShapedPush(mc,1,0))
                        {
                           mc.px = 5;
                           mc.py = 0;
                           pushed = true;
                        }
                        if(this.facing == Maps.LEFT && this.checkForShapedPush(mc,-1,0))
                        {
                           mc.px = -5;
                           mc.py = 0;
                           pushed = true;
                        }
                        if(this.facing == Maps.UP && this.checkForShapedPush(mc,0,-1))
                        {
                           mc.px = 0;
                           mc.py = -4;
                           pushed = true;
                        }
                        if(this.facing == Maps.DOWN && this.checkForShapedPush(mc,0,1))
                        {
                           mc.px = 0;
                           mc.py = 4;
                           pushed = true;
                        }
                        if(pushed)
                        {
                           mc.gotoAndPlay("push");
                        }
                     }
                     else if(!Maps.blockData[MapData.mapNo] || !Maps.blockData[MapData.mapNo][mc.name.substring(4)][0])
                     {
                        if(this.facing == Maps.RIGHT && (parent as Maps).grid[mc.X + 1 + mc.Y * Constants.gridWidth] == 4)
                        {
                           mc.px = 5;
                           mc.py = 0;
                           pushed = true;
                        }
                        if(this.facing == Maps.LEFT && (parent as Maps).grid[mc.X - 1 + mc.Y * Constants.gridWidth] == 4)
                        {
                           mc.px = -5;
                           mc.py = 0;
                           pushed = true;
                        }
                        if(this.facing == Maps.UP && (parent as Maps).grid[mc.X - Constants.gridWidth + mc.Y * Constants.gridWidth] == 4)
                        {
                           mc.px = 0;
                           mc.py = -4;
                           pushed = true;
                        }
                        if(this.facing == Maps.DOWN && (parent as Maps).grid[mc.X + Constants.gridWidth + mc.Y * Constants.gridWidth] == 4)
                        {
                           mc.px = 0;
                           mc.py = 4;
                           pushed = true;
                        }
                        if(pushed)
                        {
                           mc.gotoAndPlay("push");
                        }
                     }
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.ICE_BLOCK && Boolean((parent as Maps).interact))
                  {
                     pushed = false;
                     this.busy = true;
                     this.animate("open" + this.facing);
                     if(!Maps.blockData[MapData.mapNo] || !Maps.blockData[MapData.mapNo][mc.name.substring(4)][0])
                     {
                        if(this.facing == Maps.RIGHT && (parent as Maps).grid[mc.X + 1 + mc.Y * Constants.gridWidth] == 4)
                        {
                           mc.px = 5;
                           mc.py = 0;
                           pushed = true;
                        }
                        if(this.facing == Maps.LEFT && (parent as Maps).grid[mc.X - 1 + mc.Y * Constants.gridWidth] == 4)
                        {
                           mc.px = -5;
                           mc.py = 0;
                           pushed = true;
                        }
                        if(this.facing == Maps.UP && (parent as Maps).grid[mc.X - Constants.gridWidth + mc.Y * Constants.gridWidth] == 4)
                        {
                           mc.px = 0;
                           mc.py = -4;
                           pushed = true;
                        }
                        if(this.facing == Maps.DOWN && (parent as Maps).grid[mc.X + Constants.gridWidth + mc.Y * Constants.gridWidth] == 4)
                        {
                           mc.px = 0;
                           mc.py = 4;
                           pushed = true;
                        }
                        if(pushed)
                        {
                           mc.gotoAndPlay("push");
                           Maps.playSound("iceblock2");
                        }
                     }
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.BUNNY && Boolean((parent as Maps).interact))
                  {
                     this.busy = true;
                     ++(parent as Maps).busy;
                     this.animate("open" + this.facing);
                     this.facing = Maps.DOWN;
                     mc.gotoAndPlay("open");
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.WARP && Boolean((parent as Maps).interact))
                  {
                     this.busy = true;
                     ++(parent as Maps).busy;
                     this.animate("open" + this.facing);
                     this.facing = Maps.DOWN;
                     mc.gotoAndPlay("open");
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.ANIMAL && Boolean((parent as Maps).interact))
                  {
                     this.busy = true;
                     this.animate("open" + this.facing);
                     (parent as Maps).interact = "";
                     if(Math.random() < 0.02)
                     {
                        Maps.playSound("evil");
                        mc.gotoAndPlay("evil");
                     }
                     else
                     {
                        mc.gotoAndPlay("scare");
                     }
                  }
                  if((o.type == Maps.SIGN2 || o.type == Maps.NPCMC) && Boolean((parent as Maps).interact))
                  {
                     sign2 = true;
                     (parent as Maps).interact = "";
                  }
               }
               if(mc.X + mc.Y * Constants.gridWidth == this.X + this.Y * Constants.gridWidth)
               {
                  if(o.type == Maps.TELEPORTER)
                  {
                     this.busy = true;
                     this.teleport = mc.id;
                     this.animate("warp");
                     mc.gotoAndPlay("glow");
                     (parent as Maps).interact = "";
                  }
                  if(o.type == Maps.DESTINATION)
                  {
                  }
                  if(o.type == Maps.GLOW_TILE)
                  {
                     mc.activate();
                  }
                  if(o.type == Maps.DOOR)
                  {
                     if(!Maps.doorDetails)
                     {
                        Maps.doorDetails = MapData.doorLinks[o.ref.name.substr(4,1)];
                        parent.fader.gotoAndPlay("door" + MapData.doorLinks[o.ref.name.substr(4,1)][3]);
                        Maps.playSound(MapData.doorLinks[o.ref.name.substr(4,1)][4]);
                     }
                  }
                  if(o.type == Maps.SUPER_TELEPORTER && mc.state == 1)
                  {
                     Maps.doorDetails = MapData.doorLinks[0];
                     this.busy = true;
                     this.teleport = 66;
                     this.animate("warp");
                     this.facing = Maps.DOWN;
                     (parent as Maps).interact = "";
                  }
               }
               if(mc.X + (mc.Y + 1) * Constants.gridWidth == this.X + this.Y * Constants.gridWidth && !(parent.parent as MapMenu).equipsMenu.visible && this.facing == Maps.UP || sign2)
               {
                  if(o.type == Maps.PAINTING && Boolean((parent as Maps).interact))
                  {
                     if((parent.parent as MapMenu).gallery == null)
                     {
                        paint = new Gallery();
                        Medals.unlock(Medals.artConnoisseur);
                        Maps.playSound("painting");
                        paint.y = -450;
                        (parent.parent as MapMenu).gallery = paint;
                        (parent.parent as MapMenu).addChild(paint);
                        (parent.parent as MapMenu).setChildIndex(paint,(parent.parent as MapMenu).getChildIndex((parent.parent as MapMenu).textbox));
                        paint.gotoAndStop(o.data);
                        paint.ok.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
                        {
                           (parent.parent as MapMenu).removeChild(paint);
                           (parent.parent as MapMenu).gallery = null;
                           stage.focus = parent;
                        });
                     }
                  }
                  if(o.type == Maps.SIGN && (parent as Maps).interact || o.type == Maps.SIGN2 && sign2)
                  {
                     if(o.data == "mattConsole")
                     {
                        SaveData.consoles[0] = true;
                     }
                     if(o.data == "N64")
                     {
                        SaveData.consoles[1] = true;
                     }
                     if(o.data == "N642")
                     {
                        SaveData.consoles[2] = true;
                     }
                     if(o.data == "annaPS")
                     {
                        SaveData.consoles[3] = true;
                     }
                     if(o.data == "NGC")
                     {
                        SaveData.consoles[4] = true;
                     }
                     c = 0;
                     for each(b in SaveData.consoles)
                     {
                        if(b)
                        {
                           c++;
                        }
                     }
                     if(c >= 5)
                     {
                        Medals.unlock(Medals.videoGames);
                     }
                     if((o.data as String).substr(0,7) == "library")
                     {
                        SaveData.books[int((o.data as String).substr(7,2))] = true;
                     }
                     c = 0;
                     for each(b in SaveData.books)
                     {
                        if(b)
                        {
                           c++;
                        }
                     }
                     if(c >= 31)
                     {
                        Medals.unlock(Medals.bookWorm);
                     }
                     (parent.parent as MapMenu).textbox.more = false;
                     (parent.parent as MapMenu).showText(SetStrings.getDialogue(o.data)[0],SetStrings.getDialogue(o.data)[1],0);
                  }
                  if(o.type == Maps.NPCMC && sign2)
                  {
                     if(this.facing == Maps.RIGHT)
                     {
                        mc.Npc.animate(Maps.LEFT);
                     }
                     if(this.facing == Maps.LEFT)
                     {
                        mc.Npc.animate(Maps.RIGHT);
                     }
                     if(this.facing == Maps.UP)
                     {
                        mc.Npc.animate(Maps.DOWN);
                     }
                     if(this.facing == Maps.DOWN)
                     {
                        mc.Npc.animate(Maps.UP);
                     }
                     n = (parent.parent as MapMenu).textbox.NpcData != mc.data as NPC || !(parent.parent as MapMenu).textbox.more;
                     if((parent.parent as MapMenu).textbox.NpcData != mc.data as NPC)
                     {
                        if(Boolean(Flags.GLITCHINESS.quantity) && mc.data.sound != "screech")
                        {
                           Maps.playSound("static" + int(1 + Math.random() * 3));
                        }
                        else
                        {
                           NPCs.playSound(mc.data.sound);
                        }
                     }
                     (parent.parent as MapMenu).textbox.NpcData = mc.data as NPC;
                     (parent.parent as MapMenu).textbox.NpcTalk(true);
                  }
                  sign2 = false;
                  this.bubble.visible = false;
               }
            }
         }
      }
      
      public function dark() : *
      {
         if(!parent)
         {
            return;
         }
         if((parent as Maps).darkness)
         {
            (parent as Maps).darkness.x = this.x + this.center.x * 0.9;
            (parent as Maps).darkness.y = this.y + this.center.y * 0.9 - 40;
         }
      }
      
      public function getHeal() : *
      {
         var _loc1_:Player = null;
         (parent.parent as MapMenu).textbox.type = MapText.BUNNY;
         (parent.parent as MapMenu).showText(SetStrings.getString("menus","bunny"),0);
         for each(_loc1_ in [Players.player1,Players.player2,Players.player3,Players.player4,Players.player5])
         {
            _loc1_.eatItem(Items.burger);
            _loc1_.reduceCooldowns(99);
            _loc1_.dead = false;
         }
         (parent.parent as MapMenu).updatePlayerBars();
         this.animate("heal");
      }
      
      public function getWarp() : *
      {
         this.animate("warp");
      }
      
      public function facingTile() : int
      {
         if(this.facing == Maps.LEFT)
         {
            return this.X + this.Y * Constants.gridWidth - 1;
         }
         if(this.facing == Maps.RIGHT)
         {
            return this.X + this.Y * Constants.gridWidth + 1;
         }
         if(this.facing == Maps.UP)
         {
            return this.X + this.Y * Constants.gridWidth - Constants.gridWidth;
         }
         if(this.facing == Maps.DOWN)
         {
            return this.X + this.Y * Constants.gridWidth + Constants.gridWidth;
         }
      }
      
      public function moveLeft() : *
      {
         if(this.onWater(-1,0))
         {
            this.animate("r" + Maps.LEFT);
         }
         else
         {
            this.animate(Maps.LEFT);
         }
         this.facing = Maps.LEFT;
         --this.X;
      }
      
      public function moveRight() : *
      {
         if(this.onWater(1,0))
         {
            this.animate("r" + Maps.RIGHT);
         }
         else
         {
            this.animate(Maps.RIGHT);
         }
         this.facing = Maps.RIGHT;
         ++this.X;
      }
      
      public function moveUp() : *
      {
         if(this.onWater(0,-1))
         {
            this.animate("r" + Maps.UP);
         }
         else
         {
            this.animate(Maps.UP);
         }
         this.facing = Maps.UP;
         --this.Y;
      }
      
      public function moveDown() : *
      {
         if(this.onWater(0,1))
         {
            this.animate("r" + Maps.DOWN);
         }
         else
         {
            this.animate(Maps.DOWN);
         }
         this.facing = Maps.DOWN;
         ++this.Y;
      }
      
      public function face(param1:String) : Boolean
      {
         this.shownBubble = false;
         var _loc2_:String = "";
         if(watered)
         {
            _loc2_ = "r";
         }
         gotoAndStop(_loc2_ + param1 + "2");
         this.facing = param1;
         return true;
      }
      
      public function onWater(param1:int, param2:int, param3:Boolean = false, param4:Boolean = false) : *
      {
         var _loc5_:Boolean = false;
         if(param4)
         {
            _loc5_ = true;
         }
         if((parent as Maps).grid[Maps.getTile(this.X + param1,this.Y + param2)] == 99 && watered)
         {
            _loc5_ = true;
         }
         if(!((parent as Maps).moveMap != "" && (parent as Maps).path.length <= 0))
         {
            if(!(this.X + param1 < 0 || this.Y + param2 < 0 || this.X + param1 > 19 || this.Y + param2 > 11))
            {
               if((parent as Maps).grid[this.X + param1 + (this.Y + param2) * Constants.gridWidth] == 60)
               {
                  _loc5_ = true;
               }
               if((parent as Maps).grid[this.X + param1 + (this.Y + param2) * Constants.gridWidth] == 62)
               {
                  _loc5_ = true;
               }
               if((parent as Maps).grid[this.X + param1 + (this.Y + param2) * Constants.gridWidth] == 63)
               {
                  _loc5_ = true;
               }
               if((parent as Maps).grid[this.X + param1 + (this.Y + param2) * Constants.gridWidth] == 64)
               {
                  _loc5_ = true;
               }
               if((parent as Maps).grid[this.X + param1 + (this.Y + param2) * Constants.gridWidth] == 65)
               {
                  _loc5_ = true;
               }
            }
         }
         if((parent as Maps).moveMap != "" && watered && (parent as Maps).path.length <= 0)
         {
            _loc5_ = true;
         }
         if(!param3 && this.transWater > 0)
         {
            _loc5_ = true;
            --this.transWater;
         }
         if(!param3)
         {
            if(!MapPlayer.watered && _loc5_)
            {
               MapPlayer.watered = true;
               Maps.playSound("waterOn");
               y -= waterOffset;
            }
            else if(MapPlayer.watered && !_loc5_)
            {
               MapPlayer.watered = false;
               Maps.playSound("waterOff");
               y += waterOffset;
            }
         }
         return _loc5_;
      }
      
      public function ripple() : *
      {
         if((parent as Maps).grid[this.X + this.Y * Constants.gridWidth] != 60)
         {
            return;
         }
         var _loc1_:MovieClip = new Ripple();
         parent.addChild(_loc1_);
         _loc1_.x = x + 33;
         _loc1_.y = y + 81;
         parent.setChildIndex(_loc1_,parent.getChildIndex((parent as Maps).layer0));
      }
      
      internal function frame1() : *
      {
         stop();
         if(Debug.mappingMode2 || Debug.mappingMode)
         {
            visible = false;
         }
         this.dark();
      }
      
      internal function frame2() : *
      {
         this.dark();
         this.bubble.visible = false;
      }
      
      internal function frame3() : *
      {
         this.dark();
      }
      
      internal function frame4() : *
      {
         this.dark();
      }
      
      internal function frame5() : *
      {
         this.dark();
      }
      
      internal function frame6() : *
      {
         this.dark();
      }
      
      internal function frame7() : *
      {
         if(Debug.mappingMode2 || Debug.mappingMode)
         {
            visible = false;
         }
         this.setFace();
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame8() : *
      {
         this.done();
         this.dark();
         if(Boolean(Maps.treasures) && Options.treasureFinder)
         {
            this.bubble.visible = true;
            this.bubble.gotoAndPlay(2);
         }
      }
      
      internal function frame9() : *
      {
         this.dark();
         this.bubble.visible = false;
      }
      
      internal function frame10() : *
      {
         this.dark();
      }
      
      internal function frame11() : *
      {
         this.dark();
      }
      
      internal function frame12() : *
      {
         this.dark();
      }
      
      internal function frame13() : *
      {
         this.dark();
      }
      
      internal function frame14() : *
      {
         if(Debug.mappingMode2 || Debug.mappingMode)
         {
            visible = false;
         }
         this.setFace();
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame15() : *
      {
         this.done();
         this.dark();
         if(Boolean(Maps.treasures) && Options.treasureFinder)
         {
            this.bubble.visible = true;
            this.bubble.gotoAndPlay(2);
         }
      }
      
      internal function frame16() : *
      {
         this.dark();
         this.bubble.visible = false;
      }
      
      internal function frame17() : *
      {
         this.dark();
      }
      
      internal function frame18() : *
      {
         this.dark();
      }
      
      internal function frame19() : *
      {
         this.dark();
      }
      
      internal function frame20() : *
      {
         this.dark();
      }
      
      internal function frame21() : *
      {
         if(Debug.mappingMode2 || Debug.mappingMode)
         {
            visible = false;
         }
         this.setFace();
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame22() : *
      {
         this.done();
         this.dark();
         if(Boolean(Maps.treasures) && Options.treasureFinder)
         {
            this.bubble.visible = true;
            this.bubble.gotoAndPlay(2);
         }
      }
      
      internal function frame23() : *
      {
         this.dark();
         this.bubble.visible = false;
      }
      
      internal function frame24() : *
      {
         this.dark();
      }
      
      internal function frame25() : *
      {
         this.dark();
      }
      
      internal function frame26() : *
      {
         this.dark();
      }
      
      internal function frame27() : *
      {
         this.dark();
      }
      
      internal function frame28() : *
      {
         if(Debug.mappingMode2 || Debug.mappingMode)
         {
            visible = false;
         }
         this.setFace();
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame29() : *
      {
         this.done();
         this.dark();
         if(Boolean(Maps.treasures) && Options.treasureFinder)
         {
            this.bubble.visible = true;
            this.bubble.gotoAndPlay(2);
         }
      }
      
      internal function frame31() : *
      {
         this.bubble.visible = false;
      }
      
      internal function frame41() : *
      {
         Maps.instance.highlight();
      }
      
      internal function frame42() : *
      {
         gotoAndStop("left2");
      }
      
      internal function frame44() : *
      {
         this.bubble.visible = false;
      }
      
      internal function frame54() : *
      {
         Maps.instance.highlight();
      }
      
      internal function frame55() : *
      {
         gotoAndStop("right2");
      }
      
      internal function frame57() : *
      {
         this.bubble.visible = false;
      }
      
      internal function frame67() : *
      {
         Maps.instance.highlight();
      }
      
      internal function frame68() : *
      {
         gotoAndStop("up2");
      }
      
      internal function frame70() : *
      {
         this.bubble.visible = false;
      }
      
      internal function frame81() : *
      {
         Maps.instance.highlight();
      }
      
      internal function frame82() : *
      {
         gotoAndStop("down2");
      }
      
      internal function frame85() : *
      {
         this.bubble.visible = false;
      }
      
      internal function frame102() : *
      {
         stop();
         this.done();
      }
      
      internal function frame103() : *
      {
         this.dark();
      }
      
      internal function frame104() : *
      {
         this.bubble.visible = false;
      }
      
      internal function frame122() : *
      {
         stop();
         if(this.teleport == 66)
         {
            ++parent.busy;
            gotoAndPlay("delay");
         }
         else if(this.teleport != -1)
         {
            gotoAndPlay("warp2");
         }
         else
         {
            parent.warp();
            this.done();
         }
         this.dark();
      }
      
      internal function frame123() : *
      {
         stop();
         this.dark();
      }
      
      internal function frame124() : *
      {
         this.dark();
      }
      
      internal function frame125() : *
      {
         this.dark();
      }
      
      internal function frame126() : *
      {
         this.dark();
      }
      
      internal function frame127() : *
      {
         this.dark();
      }
      
      internal function frame128() : *
      {
         this.dark();
      }
      
      internal function frame129() : *
      {
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame130() : *
      {
         this.done();
         this.dark();
      }
      
      internal function frame131() : *
      {
         this.dark();
      }
      
      internal function frame132() : *
      {
         this.dark();
      }
      
      internal function frame133() : *
      {
         this.dark();
      }
      
      internal function frame134() : *
      {
         this.dark();
      }
      
      internal function frame135() : *
      {
         this.dark();
      }
      
      internal function frame136() : *
      {
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame137() : *
      {
         this.done();
         this.dark();
      }
      
      internal function frame138() : *
      {
         this.dark();
      }
      
      internal function frame139() : *
      {
         this.dark();
      }
      
      internal function frame140() : *
      {
         this.dark();
      }
      
      internal function frame141() : *
      {
         this.dark();
      }
      
      internal function frame142() : *
      {
         this.dark();
      }
      
      internal function frame143() : *
      {
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame144() : *
      {
         this.done();
         this.dark();
      }
      
      internal function frame145() : *
      {
         this.dark();
      }
      
      internal function frame146() : *
      {
         this.dark();
      }
      
      internal function frame147() : *
      {
         this.dark();
      }
      
      internal function frame148() : *
      {
         this.dark();
      }
      
      internal function frame149() : *
      {
         this.dark();
      }
      
      internal function frame150() : *
      {
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame151() : *
      {
         this.done();
         this.dark();
      }
      
      internal function frame152() : *
      {
         this.busy = true;
         this.bubble.visible = false;
         this.teleportMove();
         this.dark();
      }
      
      internal function frame162() : *
      {
         this.teleport = -1;
         parent.path = [];
         parent.moveMap = "";
         stop();
         this.done();
         this.dark();
      }
      
      internal function frame167() : *
      {
         this.dark();
         this.bubble.visible = false;
      }
      
      internal function frame168() : *
      {
         this.dark();
      }
      
      internal function frame169() : *
      {
         this.dark();
      }
      
      internal function frame170() : *
      {
         this.dark();
      }
      
      internal function frame171() : *
      {
         this.dark();
      }
      
      internal function frame172() : *
      {
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame173() : *
      {
         this.done();
         this.dark();
         this.ripple();
         if(Boolean(Maps.treasures) && Options.treasureFinder)
         {
            this.bubble.visible = true;
            this.bubble.gotoAndPlay(2);
         }
      }
      
      internal function frame174() : *
      {
         this.dark();
         this.bubble.visible = false;
      }
      
      internal function frame175() : *
      {
         this.dark();
      }
      
      internal function frame176() : *
      {
         this.dark();
      }
      
      internal function frame177() : *
      {
         this.dark();
      }
      
      internal function frame178() : *
      {
         this.dark();
      }
      
      internal function frame179() : *
      {
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame180() : *
      {
         this.done();
         this.dark();
         this.ripple();
         if(Boolean(Maps.treasures) && Options.treasureFinder)
         {
            this.bubble.visible = true;
            this.bubble.gotoAndPlay(2);
         }
      }
      
      internal function frame181() : *
      {
         this.dark();
         this.bubble.visible = false;
      }
      
      internal function frame182() : *
      {
         this.dark();
      }
      
      internal function frame183() : *
      {
         this.dark();
      }
      
      internal function frame184() : *
      {
         this.dark();
      }
      
      internal function frame185() : *
      {
         this.dark();
      }
      
      internal function frame186() : *
      {
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame187() : *
      {
         this.done();
         this.dark();
         this.ripple();
         if(Boolean(Maps.treasures) && Options.treasureFinder)
         {
            this.bubble.visible = true;
            this.bubble.gotoAndPlay(2);
         }
      }
      
      internal function frame188() : *
      {
         this.dark();
         this.bubble.visible = false;
      }
      
      internal function frame189() : *
      {
         this.dark();
      }
      
      internal function frame190() : *
      {
         this.dark();
      }
      
      internal function frame191() : *
      {
         this.dark();
      }
      
      internal function frame192() : *
      {
         this.dark();
      }
      
      internal function frame193() : *
      {
         this.bubble.visible = false;
         this.shownBubble = false;
         this.dark();
      }
      
      internal function frame194() : *
      {
         this.done();
         this.dark();
         this.ripple();
         if(Boolean(Maps.treasures) && Options.treasureFinder)
         {
            this.bubble.visible = true;
            this.bubble.gotoAndPlay(2);
         }
      }
      
      internal function frame195() : *
      {
         this.busy = true;
         parent.fader.gotoAndPlay("door" + MapData.doorLinks[0][3]);
      }
      
      internal function frame220() : *
      {
         --parent.busy;
         gotoAndPlay("warp2");
      }
   }
}

