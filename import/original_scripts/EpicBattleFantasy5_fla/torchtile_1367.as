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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18812")]
   public dynamic class torchtile_1367 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public function torchtile_1367()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,8,this.frame9,23,this.frame24,24,this.frame25,25,this.frame26,50,this.frame51,56,this.frame57);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         stop();
         this.X = x / 50;
         this.Y = y / 40;
         (parent as Maps).addTile(15,x,y - 15);
         parent.addObject({
            "mc":this.name,
            "type":Maps.TORCH
         });
         if(!Maps.torchData[MapData.mapNo])
         {
            Maps.torchData[MapData.mapNo] = [];
         }
         if(Maps.torchData[MapData.mapNo][name.substring(5)] == 2)
         {
            gotoAndStop("opened");
            (parent as Maps).addLight();
            this.state = 1;
         }
      }
      
      internal function frame9() : *
      {
         (parent as Maps).addLight();
      }
      
      internal function frame24() : *
      {
      }
      
      internal function frame25() : *
      {
         (parent as Maps).addTile(1,x,y - 15);
         Maps.torchData[MapData.mapNo][name.substring(5)] = 2;
      }
      
      internal function frame26() : *
      {
         stop();
      }
      
      internal function frame51() : *
      {
         gotoAndStop("normal");
      }
      
      internal function frame57() : *
      {
         stop();
      }
   }
}

