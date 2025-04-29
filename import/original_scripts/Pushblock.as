package
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18729")]
   public dynamic class Pushblock extends MovieClip
   {
      public var block:MovieClip;
      
      public var X:int;
      
      public var Y:int;
      
      public var px:int;
      
      public var py:int;
      
      public var state:int;
      
      public var shape:Array;
      
      public function Pushblock()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10,10,this.frame11,11,this.frame12,12,this.frame13,13,this.frame14,14,this.frame15,15,this.frame16);
      }
      
      public function skin(param1:int) : *
      {
         this.block.gotoAndStop(param1);
         if(param1 == 11)
         {
            this.shape = [[1,0,0],[1,0,0],[0,0,0]];
         }
         if(param1 == 12 || param1 == 21 || param1 == 27 || param1 == 28 || param1 == 30 || param1 == 32 || param1 == 33 || param1 == 34)
         {
            this.shape = [[1,1,0],[0,0,0],[0,0,0]];
         }
         if(param1 == 13)
         {
            this.shape = [[1,1,0],[0,1,0],[0,0,0]];
         }
         if(param1 == 14)
         {
            this.shape = [[1,1,0],[1,0,0],[0,0,0]];
         }
         if(param1 == 15 || param1 == 22 || param1 == 23)
         {
            this.shape = [[1,1,0],[1,1,0],[0,0,0]];
         }
         if(param1 == 16)
         {
            this.shape = [[1,0,0],[1,0,0],[1,0,0]];
         }
         if(param1 == 17)
         {
            this.shape = [[1,1,1],[0,0,0],[0,0,0]];
         }
      }
      
      public function setTiles(param1:int) : *
      {
         (parent as Maps).addTile(param1,x + 25,y + 20);
         if(!this.shape)
         {
            return;
         }
         if(this.shape[0][1])
         {
            (parent as Maps).addTile(param1,x + 25 + 50,y + 20);
         }
         if(this.shape[0][2])
         {
            (parent as Maps).addTile(param1,x + 25 + 100,y + 20);
         }
         if(this.shape[1][0])
         {
            (parent as Maps).addTile(param1,x + 25,y + 20 + 40);
         }
         if(this.shape[1][1])
         {
            (parent as Maps).addTile(param1,x + 25 + 50,y + 20 + 40);
         }
         if(this.shape[1][2])
         {
            (parent as Maps).addTile(param1,x + 25 + 100,y + 20 + 40);
         }
         if(this.shape[2][0])
         {
            (parent as Maps).addTile(param1,x + 25,y + 20 + 80);
         }
         if(this.shape[2][1])
         {
            (parent as Maps).addTile(param1,x + 25 + 50,y + 20 + 80);
         }
         if(this.shape[2][2])
         {
            (parent as Maps).addTile(param1,x + 25 + 100,y + 20 + 80);
         }
      }
      
      public function push() : *
      {
         this.x += this.px;
         this.y += this.py;
      }
      
      internal function frame1() : *
      {
         this.state = 0;
         this.shape = null;
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
         this.setTiles(8);
         try
         {
            parent.setChildIndex(this,parent.getChildIndex(parent["layer" + (this.Y + 1)]));
         }
         catch(errObject:Error)
         {
         }
         if(this.state)
         {
            parent.checkBlocks();
         }
         if(this.state == 0)
         {
            parent.addObject({
               "mc":this.name,
               "type":Maps.PUSH_BLOCK
            });
            this.state = 1;
         }
      }
      
      internal function frame3() : *
      {
      }
      
      internal function frame5() : *
      {
         this.setTiles(4);
         parent.busy = true;
      }
      
      internal function frame6() : *
      {
         this.push();
         if(this.block.currentFrame == 31 || this.block.currentFrame == 18 || this.block.currentFrame == 20 || this.block.currentFrame == 10 || this.block.currentFrame == 21 || this.block.currentFrame == 26 || this.block.currentFrame > 31)
         {
            Maps.playSound("pushWood");
         }
         else
         {
            Maps.playSound("pushBlock");
         }
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
         this.push();
      }
      
      internal function frame11() : *
      {
         this.push();
      }
      
      internal function frame12() : *
      {
         this.push();
      }
      
      internal function frame13() : *
      {
         this.push();
      }
      
      internal function frame14() : *
      {
         this.push();
      }
      
      internal function frame15() : *
      {
         this.push();
      }
      
      internal function frame16() : *
      {
         gotoAndStop("normal");
      }
   }
}

