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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18849")]
   public dynamic class spiketile_1209 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public function spiketile_1209()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,8,this.frame9,9,this.frame10,16,this.frame17);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         stop();
         this.X = (x + 25) / 50;
         this.Y = (y + 20) / 40;
         (parent as Maps).addTile(1,x + 25,y + 20);
      }
      
      internal function frame3() : *
      {
         ++parent.busy;
      }
      
      internal function frame9() : *
      {
         stop();
         this.state = 1;
         (parent as Maps).addTile(0,x + 25,y + 20);
         --parent.busy;
      }
      
      internal function frame10() : *
      {
         ++parent.busy;
      }
      
      internal function frame17() : *
      {
         stop();
         this.state = 0;
         (parent as Maps).addTile(1,x + 25,y + 20);
         --parent.busy;
      }
   }
}

