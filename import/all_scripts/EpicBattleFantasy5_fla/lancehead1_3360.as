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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5777")]
   public dynamic class lancehead1_3360 extends MovieClip
   {
      public var aid:MovieClip;
      
      public var band:MovieClip;
      
      public var hair1:MovieClip;
      
      public var mouth:MovieClip;
      
      public var paint:MovieClip;
      
      public var stash:MovieClip;
      
      public var playerNo:int;
      
      public function lancehead1_3360()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.playerNo = 3;
         this.band.visible = false;
         this.paint.visible = false;
         this.mouth.visible = false;
         this.aid.visible = false;
         if(Boolean(parent) && !parent.zombieMode)
         {
            if(Players.hasItem(17,3))
            {
               this.band.visible = true;
            }
            if(Players.hasItem(18,3))
            {
               this.aid.visible = true;
            }
            if(Players.hasItem(19,3))
            {
               this.mouth.visible = true;
            }
            if(Players.hasItem(32,3))
            {
               this.paint.visible = true;
            }
         }
         else
         {
            this.playerNo = -1;
         }
         this.stash.visible = false;
         if(Players.hasItem(33,3))
         {
            this.stash.visible = true;
         }
      }
   }
}

