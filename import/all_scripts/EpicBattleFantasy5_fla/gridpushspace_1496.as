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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18732")]
   public dynamic class gridpushspace_1496 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public function gridpushspace_1496()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         visible = false;
      }
      
      internal function frame2() : *
      {
         stop();
         try
         {
            this.X = (x + 25) / 50;
            this.Y = (y + 20) / 40;
            if(!Maps.instance.grid[this.X + this.Y * Constants.gridWidth])
            {
               Maps.instance.addTile(4,x + 25,y + 20);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

