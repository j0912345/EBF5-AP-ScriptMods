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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18802")]
   public dynamic class gridcrackrock_1581 extends MovieClip
   {
      public var spellcenter:MovieClip;
      
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public function gridcrackrock_1581()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,28,this.frame29,30,this.frame31,31,this.frame32,32,this.frame33,57,this.frame58);
      }
      
      internal function frame1() : *
      {
         if(Debug.mappingMode2)
         {
            visible = false;
            stop();
         }
      }
      
      internal function frame2() : *
      {
         stop();
         try
         {
            this.X = x / 50;
            this.Y = y / 40;
            if(!Maps.rockData[MapData.mapNo])
            {
               Maps.rockData[MapData.mapNo] = [];
            }
            if(Maps.rockData[MapData.mapNo][name.substring(4)] == 2)
            {
               gotoAndStop("opened");
            }
            Maps.instance.addTile(21,x,y - 15);
            Maps.instance.addObject({
               "mc":this.name,
               "type":Maps.ROCK
            });
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame5() : *
      {
         ++Maps.instance.busy;
      }
      
      internal function frame29() : *
      {
      }
      
      internal function frame31() : *
      {
         Maps.instance.addTile(0,x,y - 15);
         --Maps.instance.busy;
         Maps.instance.highlight();
      }
      
      internal function frame32() : *
      {
         (parent as Maps).addTile(0,x,y - 15);
         Maps.rockData[MapData.mapNo][name.substring(4)] = 2;
      }
      
      internal function frame33() : *
      {
         stop();
      }
      
      internal function frame58() : *
      {
         gotoAndStop("normal");
      }
   }
}

