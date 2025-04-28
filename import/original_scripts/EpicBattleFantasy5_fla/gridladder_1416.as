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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18757")]
   public dynamic class gridladder_1416 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public function gridladder_1416()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,19,this.frame20,21,this.frame22,22,this.frame23,31,this.frame32,56,this.frame57);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         stop();
         try
         {
            this.X = x / 50;
            this.Y = y / 40;
            if(!Maps.ladderData[MapData.mapNo])
            {
               Maps.ladderData[MapData.mapNo] = [];
            }
            if(Maps.ladderData[MapData.mapNo][name.substring(6)] == 2)
            {
               gotoAndStop("opened");
               Maps.instance.addTile(0,x,y);
               Maps.ladderData[MapData.mapNo][name.substring(6)] = 2;
            }
            else
            {
               Maps.instance.addTile(26,x,y);
               Maps.instance.addObject({
                  "mc":this.name,
                  "type":Maps.LADDER
               });
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame5() : *
      {
         ++parent.busy;
      }
      
      internal function frame20() : *
      {
      }
      
      internal function frame22() : *
      {
         --parent.busy;
      }
      
      internal function frame23() : *
      {
         Maps.instance.addTile(0,x,y);
         Maps.ladderData[MapData.mapNo][name.substring(6)] = 2;
         Maps.instance.highlight();
      }
      
      internal function frame32() : *
      {
         stop();
      }
      
      internal function frame57() : *
      {
         gotoAndStop("normal");
      }
   }
}

