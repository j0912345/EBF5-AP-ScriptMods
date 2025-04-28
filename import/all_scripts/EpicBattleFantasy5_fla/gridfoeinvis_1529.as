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
   import foes.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol20103")]
   public dynamic class gridfoeinvis_1529 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public function gridfoeinvis_1529()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
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
            if(!Maps.foeData[MapData.mapNo])
            {
               Maps.foeData[MapData.mapNo] = [];
            }
            if(Maps.foeData[MapData.mapNo][name.substring(3)] == 2)
            {
               Maps.instance.addTile(0,x,y - 15);
            }
            else
            {
               Maps.instance.addTile(37,x,y - 15);
               Maps.instance.addObject({
                  "mc":this.name,
                  "type":Maps.FOE2
               });
               this.y -= 10;
            }
            g.visible = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}

