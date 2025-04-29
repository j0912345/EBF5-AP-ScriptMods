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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18641")]
   public dynamic class superteleport_1338 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public var into:int;
      
      public var ini:Boolean;
      
      public function superteleport_1338()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,15,this.frame16,16,this.frame17,28,this.frame29);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         stop();
         (parent as Maps).addTile(0,x + 75,y + 60);
         this.X = (x + 75) / 50;
         this.Y = (y + 60) / 40;
         parent.addObject({
            "ref":this,
            "type":Maps.SUPER_TELEPORTER
         });
         this.ini = true;
      }
      
      internal function frame3() : *
      {
         ++parent.busy;
      }
      
      internal function frame16() : *
      {
         stop();
         this.state = 1;
         (parent as Maps).addTile(58,x + 75,y + 60);
         if(!this.ini)
         {
            this.X = (x + 75) / 50;
            this.Y = (y + 60) / 40;
            parent.addObject({
               "ref":this,
               "type":Maps.SUPER_TELEPORTER
            });
            this.ini = true;
         }
         --parent.busy;
      }
      
      internal function frame17() : *
      {
         ++parent.busy;
      }
      
      internal function frame29() : *
      {
         stop();
         this.state = 0;
         (parent as Maps).addTile(0,x + 75,y + 60);
         --parent.busy;
      }
   }
}

