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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19367")]
   public dynamic class teleport2_2409 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var id:int;
      
      public function teleport2_2409()
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
         this.id = name.substr(11,1);
         this.X = (x + 25) / 50;
         this.Y = (y + 20) / 40;
         (parent as Maps).addTile(42,x + 25,y + 20);
         parent.addObject({
            "mc":this.name,
            "type":Maps.DESTINATION
         });
      }
   }
}

