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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18867")]
   public dynamic class switchtile_1488 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var id:int;
      
      public var state:int;
      
      public function switchtile_1488()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,9,this.frame10,17,this.frame18);
      }
      
      public function init(param1:int) : *
      {
         this.id = param1;
         if(Maps.switchData[this.id])
         {
            this.state = 1;
         }
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         stop();
         if(this.state == 1)
         {
            gotoAndStop("on");
         }
         if(this.state == 0)
         {
            gotoAndStop("off");
         }
         this.X = (x + 25) / 50;
         this.Y = (y + 20) / 40;
         (parent as Maps).addTile(13,x + 25,y + 20);
         parent.addObject({
            "mc":this.name,
            "type":Maps.SWITCH
         });
      }
      
      internal function frame3() : *
      {
         this.state = 0;
         stop();
         Maps.switchData[this.id] = false;
         parent.checkSwitches();
      }
      
      internal function frame10() : *
      {
         this.state = 1;
         Maps.switchData[this.id] = true;
         stop();
         parent.checkSwitches();
      }
      
      internal function frame18() : *
      {
         gotoAndStop("off");
      }
   }
}

