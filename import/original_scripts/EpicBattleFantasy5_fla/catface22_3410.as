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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3195")]
   public dynamic class catface22_3410 extends MovieClip
   {
      public var aid:MovieClip;
      
      public var brows:MovieClip;
      
      public var mouth:MovieClip;
      
      public var mouth2:MovieClip;
      
      public var paint:MovieClip;
      
      public var stash:MovieClip;
      
      public var playerNo:int;
      
      public function catface22_3410()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.playerNo = 5;
         try
         {
            this.aid.visible = false;
            this.mouth2.visible = false;
            this.paint.visible = false;
            this.stash.visible = false;
            this.brows.visible = false;
            if(Boolean(parent) && !parent.zombieMode)
            {
               if(Players.hasItem(18,5))
               {
                  this.aid.visible = true;
               }
               if(Players.hasItem(19,5))
               {
                  this.mouth2.visible = true;
               }
               if(Players.hasItem(32,5))
               {
                  this.paint.visible = true;
               }
            }
            if(Players.hasItem(33,5))
            {
               this.stash.visible = true;
            }
            if(Players.hasItem(34,5))
            {
               this.brows.visible = true;
            }
         }
         catch(errObject:Error)
         {
         }
      }
   }
}

