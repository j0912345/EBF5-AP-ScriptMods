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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19195")]
   public dynamic class slimecats_1120 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public var ID:int;
      
      public var b:int;
      
      public function slimecats_1120()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,66,this.frame67,70,this.frame71,88,this.frame89,104,this.frame105,105,this.frame106);
      }
      
      internal function frame1() : *
      {
         this.state = 0;
         this.ID = name.substr(3,2);
         if(Debug.mappingMode2)
         {
            visible = false;
            stop();
         }
      }
      
      internal function frame2() : *
      {
         this.X = x / 50;
         this.Y = y / 40;
         try
         {
            if(Maps.warpData[this.ID])
            {
               Maps.instance.addTile(7,x,y);
               Maps.instance.addObject({
                  "mc":this.name,
                  "type":Maps.WARP
               });
               this.b = Math.random() * 20 + 3;
               gotoAndPlay(this.b);
            }
            else
            {
               visible = false;
               Maps.instance.addTile(1,x,y);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame67() : *
      {
         gotoAndPlay(3);
      }
      
      internal function frame71() : *
      {
         Maps.instance.warpID = this.ID;
      }
      
      internal function frame89() : *
      {
         Maps.instance.player.getWarp();
      }
      
      internal function frame105() : *
      {
         Maps.instance.fader.gotoAndPlay("fadeOut");
      }
      
      internal function frame106() : *
      {
         stop();
      }
   }
}

