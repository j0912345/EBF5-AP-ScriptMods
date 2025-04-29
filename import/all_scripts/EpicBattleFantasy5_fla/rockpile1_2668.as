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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19378")]
   public dynamic class rockpile1_2668 extends MovieClip
   {
      public var pick:MovieClip;
      
      public var shovel:MovieClip;
      
      public function rockpile1_2668()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.shovel.visible = false;
         this.pick.visible = false;
         if(MapData.MX * MapData.MY % 3 == 1)
         {
            this.shovel.visible = true;
         }
         if(MapData.MX * MapData.MY % 3 == 2)
         {
            this.pick.visible = true;
         }
         if(MapData.MX * MapData.MY % 5 == 0)
         {
            this.pick.visible = true;
            this.shovel.visible = true;
         }
      }
   }
}

