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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19265")]
   public dynamic class pushblockice_2441 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var px:int;
      
      public var py:int;
      
      public var state:int;
      
      public function pushblockice_2441()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10);
      }
      
      public function push() : *
      {
         this.x += this.px * 2;
         this.y += this.py * 2;
      }
      
      internal function frame1() : *
      {
         this.state = 0;
      }
      
      internal function frame2() : *
      {
         stop();
         if(Maps.blockData[MapData.mapNo])
         {
            if(Maps.blockData[MapData.mapNo][name.substring(4)][0])
            {
               this.x = Maps.blockData[MapData.mapNo][name.substring(4)][0] * 50;
               this.y = Maps.blockData[MapData.mapNo][name.substring(4)][1] * 40 - 12;
            }
         }
         this.X = (x + 25) / 50;
         this.Y = (y + 20) / 40;
         if(Boolean(Maps.blockDataLoad) && Boolean(Maps.blockDataLoad[name.substring(4)]))
         {
            this.X = Maps.blockDataLoad[name.substring(4)][0];
            this.Y = Maps.blockDataLoad[name.substring(4)][1];
            x = this.X * 50;
            y = this.Y * 40 - 12;
            Maps.blockDataLoad[name.substring(4)] = null;
         }
         (parent as Maps).addTile(25,x + 25,y + 20);
         try
         {
            parent.setChildIndex(this,parent.getChildIndex(parent["layer" + (this.Y + 1)]));
         }
         catch(errObject:Error)
         {
         }
         if(this.state)
         {
            --parent.busy;
            if(this.px < 0 && (parent as Maps).grid[this.X - 1 + this.Y * Constants.gridWidth] == 4)
            {
               gotoAndPlay("push");
            }
            else if(this.px > 0 && (parent as Maps).grid[this.X + 1 + this.Y * Constants.gridWidth] == 4)
            {
               gotoAndPlay("push");
            }
            else if(this.py < 0 && (parent as Maps).grid[this.X - Constants.gridWidth + this.Y * Constants.gridWidth] == 4)
            {
               gotoAndPlay("push");
            }
            else if(this.py > 0 && (parent as Maps).grid[this.X + Constants.gridWidth + this.Y * Constants.gridWidth] == 4)
            {
               gotoAndPlay("push");
            }
            else
            {
               parent.checkBlocks(false);
               Maps.playSound("iceblock");
            }
         }
         if(this.state == 0)
         {
            parent.addObject({
               "mc":this.name,
               "type":Maps.ICE_BLOCK
            });
            this.state = 1;
         }
      }
      
      internal function frame5() : *
      {
         (parent as Maps).addTile(4,x + 25,y + 20);
         ++parent.busy;
         this.push();
      }
      
      internal function frame6() : *
      {
         this.push();
      }
      
      internal function frame7() : *
      {
         this.push();
      }
      
      internal function frame8() : *
      {
         this.push();
      }
      
      internal function frame9() : *
      {
         this.push();
      }
      
      internal function frame10() : *
      {
         gotoAndStop("normal");
      }
   }
}

