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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19366")]
   public dynamic class teleport1_2406 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var id:int;
      
      public function teleport1_2406()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,20,this.frame21);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         stop();
         this.id = name.substr(10,2);
         this.X = (x + 25) / 50;
         this.Y = (y + 20) / 40;
         (parent as Maps).addTile(43,x + 25,y + 20);
         parent.addObject({
            "mc":this.name,
            "type":Maps.TELEPORTER
         });
      }
      
      internal function frame21() : *
      {
         stop();
      }
   }
}

