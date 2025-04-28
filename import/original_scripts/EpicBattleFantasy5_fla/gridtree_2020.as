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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19865")]
   public dynamic class gridtree_2020 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public function gridtree_2020()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,26,this.frame27,27,this.frame28,28,this.frame29,29,this.frame30,54,this.frame55);
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
            if(!Maps.bushData[MapData.mapNo])
            {
               Maps.bushData[MapData.mapNo] = [];
            }
            if(Maps.bushData[MapData.mapNo][name.substring(4)] == 2)
            {
               gotoAndStop("opened");
            }
            Maps.instance.addTile(22,x,y - 15);
            Maps.instance.addObject({
               "mc":this.name,
               "type":Maps.TREE
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
      
      internal function frame27() : *
      {
      }
      
      internal function frame28() : *
      {
         --Maps.instance.busy;
      }
      
      internal function frame29() : *
      {
         Maps.instance.addTile(0,x,y - 15);
         Maps.bushData[MapData.mapNo][name.substring(4)] = 2;
         Maps.instance.highlight();
      }
      
      internal function frame30() : *
      {
         stop();
      }
      
      internal function frame55() : *
      {
         gotoAndStop("normal");
      }
   }
}

