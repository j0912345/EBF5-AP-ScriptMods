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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19044")]
   public dynamic class _healingslimebunny_1555 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public function _healingslimebunny_1555()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,45,this.frame46,57,this.frame58,61,this.frame62);
      }
      
      internal function frame1() : *
      {
         this.state = 0;
      }
      
      internal function frame2() : *
      {
         stop();
         this.X = x / 50;
         this.Y = y / 40;
         try
         {
            Maps.instance.addTile(7,x,y - 15);
            Maps.instance.addObject({
               "mc":this.name,
               "type":Maps.BUNNY
            });
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame3() : *
      {
      }
      
      internal function frame46() : *
      {
         Maps.instance.player.getHeal();
      }
      
      internal function frame58() : *
      {
         --Maps.instance.busy;
      }
      
      internal function frame62() : *
      {
         stop();
      }
   }
}

