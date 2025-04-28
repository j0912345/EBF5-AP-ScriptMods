package EpicBattleFantasy5_fla
{
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7068")]
   public dynamic class MinimapMenu_6843 extends MovieClip
   {
      public var arrow:MovieClip;
      
      public var back:SimpleButton;
      
      public var newstar0:MovieClip;
      
      public var newstar1:MovieClip;
      
      public var newstar2:MovieClip;
      
      public var newstar3:MovieClip;
      
      public var star0:MovieClip;
      
      public var star1:MovieClip;
      
      public var star10:MovieClip;
      
      public var star11:MovieClip;
      
      public var star12:MovieClip;
      
      public var star13:MovieClip;
      
      public var star14:MovieClip;
      
      public var star15:MovieClip;
      
      public var star16:MovieClip;
      
      public var star17:MovieClip;
      
      public var star18:MovieClip;
      
      public var star19:MovieClip;
      
      public var star2:MovieClip;
      
      public var star20:MovieClip;
      
      public var star21:MovieClip;
      
      public var star22:MovieClip;
      
      public var star23:MovieClip;
      
      public var star24:MovieClip;
      
      public var star25:MovieClip;
      
      public var star26:MovieClip;
      
      public var star27:MovieClip;
      
      public var star28:MovieClip;
      
      public var star29:MovieClip;
      
      public var star3:MovieClip;
      
      public var star30:MovieClip;
      
      public var star31:MovieClip;
      
      public var star32:MovieClip;
      
      public var star4:MovieClip;
      
      public var star5:MovieClip;
      
      public var star6:MovieClip;
      
      public var star7:MovieClip;
      
      public var star8:MovieClip;
      
      public var star9:MovieClip;
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public var txt4:TextField;
      
      public var X:int;
      
      public var Y:int;
      
      public var segments:Array;
      
      public var updated:Boolean;
      
      public var markerCount:int;
      
      public function MinimapMenu_6843()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function mouseUp(param1:Event) : *
      {
         this.updated = false;
      }
      
      public function addMarker(param1:Event) : *
      {
         if(this.updated)
         {
            return;
         }
         var _loc2_:int = this.mouseX + 72;
         var _loc3_:int = this.mouseY + 32;
         if(_loc2_ < 83 || _loc2_ > 1040)
         {
            return;
         }
         if(_loc3_ < 71 || _loc3_ > 508)
         {
            return;
         }
         var _loc4_:MovieClip = new Marker();
         addChild(_loc4_);
         _loc4_.x = _loc2_;
         _loc4_.y = _loc3_;
         _loc4_.ID = this.markerCount;
         SaveData.markerData.push([_loc4_.x,_loc4_.y,1]);
         _loc4_ = null;
         ++this.markerCount;
      }
      
      public function loadMarkers() : *
      {
         var _loc1_:Array = null;
         this.markerCount = 0;
         for each(_loc1_ in SaveData.markerData)
         {
            if(Boolean(SaveData.markerData[this.markerCount]) && SaveData.markerData[this.markerCount][2] < 4)
            {
               marker = new Marker();
               addChild(marker);
               marker.x = SaveData.markerData[this.markerCount][0];
               marker.y = SaveData.markerData[this.markerCount][1];
               marker.gotoAndStop(1);
               marker.gotoAndStop(SaveData.markerData[this.markerCount][2]);
               marker.ID = this.markerCount;
               marker = null;
            }
            ++this.markerCount;
         }
      }
      
      public function update() : *
      {
         var _loc3_:int = 0;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         if(this.segments)
         {
            for each(_loc4_ in this.segments)
            {
               if(_loc4_.parent)
               {
                  removeChild(_loc4_);
               }
            }
         }
         this.segments = [];
         var _loc2_:int = 0;
         while(_loc2_ < 110)
         {
            this.X = _loc2_ % 11;
            this.Y = Math.floor(_loc2_ / 11);
            _loc4_ = new Segment();
            addChild(_loc4_);
            _loc4_.x = 11.7 + this.X * 87;
            _loc4_.y = 39.2 + this.Y * 44;
            this.segments.push(_loc4_);
            _loc4_.X = this.X;
            _loc4_.Y = this.Y;
            if(Boolean(Maps.mapVisits[this.Y][this.X]) || Debug.wholeMap)
            {
               _loc4_.stop();
               _loc1_++;
            }
            else
            {
               _loc4_.gotoAndStop(2);
            }
            if(Maps.minimapCoords[0] == this.X && Maps.minimapCoords[1] == this.Y)
            {
               _loc4_.gotoAndStop(3);
            }
            _loc2_++;
         }
         if(_loc1_ >= 110)
         {
            Medals.unlock(Medals.cartographer);
         }
         _loc3_ = 0;
         while(_loc3_ < 33)
         {
            if(Boolean(NPCs.questList[_loc3_].flag) && Boolean(NPCs.questList[_loc3_].flag2) && Boolean(NPCs.questList[_loc3_].checkQuest(false)))
            {
               this["star" + _loc3_].visible = true;
               this["star" + _loc3_].play();
               setChildIndex(this["star" + _loc3_],numChildren - 1);
            }
            else
            {
               this["star" + _loc3_].visible = false;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < 4)
         {
            if(Boolean(NPCs.questList[_loc3_ + 38].flag) && Boolean(NPCs.questList[_loc3_ + 38].flag2) && Boolean(NPCs.questList[_loc3_ + 38].checkQuest(false)))
            {
               this["newstar" + _loc3_].visible = true;
               this["newstar" + _loc3_].play();
               setChildIndex(this["newstar" + _loc3_],numChildren - 1);
            }
            else
            {
               this["newstar" + _loc3_].visible = false;
            }
            _loc3_++;
         }
         if(!Items.shovel.quantity)
         {
            this.arrow.x = 55;
            this.arrow.y = 147;
         }
         else if(!Flags.CYCLOPS_DEFEATED.quantity)
         {
            this.arrow.x = 341;
            this.arrow.y = 272;
         }
         else if(!Flags.FORT_ENTERED.quantity)
         {
            this.arrow.x = 684;
            this.arrow.y = 282;
         }
         else if(Game.party.length < 4)
         {
            this.arrow.x = 664;
            this.arrow.y = 183;
         }
         else if(!Flags.TANK_DEFEATED.quantity)
         {
            this.arrow.x = 684;
            this.arrow.y = 282;
         }
         else if(!Items.axe.quantity)
         {
            this.arrow.x = 846;
            this.arrow.y = 98;
         }
         else if(!Items.stepladder.quantity)
         {
            this.arrow.x = 457;
            this.arrow.y = 50;
         }
         else if(!Items.leafyboots.quantity)
         {
            this.arrow.x = 870;
            this.arrow.y = 61;
         }
         else if(!Items.raft.quantity)
         {
            this.arrow.x = 384;
            this.arrow.y = 137;
         }
         else if(!Flags.TUNDRA_REACHED.quantity)
         {
            this.arrow.x = 215;
            this.arrow.y = 324;
         }
         else if(!Flags.GOLEM_DEFEATED.quantity)
         {
            this.arrow.x = 252;
            this.arrow.y = 454;
         }
         else
         {
            this.arrow.x = 751;
            this.arrow.y = 412;
         }
         this.arrow.play();
         setChildIndex(this.arrow,numChildren - 1);
         this.loadMarkers();
      }
      
      internal function frame1() : *
      {
         this.X = 0;
         this.Y = 0;
         stop();
         Global.translate(this.txt1,"mapMenu1",25);
         Global.translate(this.txt2,"mapMenu2",20);
         Global.translate(this.txt3,"mapMenu3",20);
         Global.translate(this.txt4,"back",20);
         this.back.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.closeMenus();
         });
         this.updated = false;
         addEventListener(MouseEvent.MOUSE_DOWN,this.addMarker);
         addEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
         this.markerCount = 0;
      }
      
      internal function frame2() : *
      {
         removeEventListener(MouseEvent.MOUSE_DOWN,this.addMarker);
         removeEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
      }
   }
}

