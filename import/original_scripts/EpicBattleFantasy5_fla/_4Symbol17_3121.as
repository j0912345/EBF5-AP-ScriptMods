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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5091")]
   public dynamic class _4Symbol17_3121 extends MovieClip
   {
      public var aid:MovieClip;
      
      public var band:MovieClip;
      
      public var mouth:MovieClip;
      
      public var paint:MovieClip;
      
      public var stash:MovieClip;
      
      public var playerNo:int;
      
      public function _4Symbol17_3121()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         try
         {
            this.playerNo = 1;
            this.band.visible = false;
            this.aid.visible = false;
            this.mouth.visible = false;
            this.paint.visible = false;
            this.stash.visible = false;
            if(!parent.zombieMode)
            {
               if(Players.hasItem(17,1))
               {
                  this.band.visible = true;
               }
               if(Players.hasItem(18,1))
               {
                  this.aid.visible = true;
               }
               if(Players.hasItem(19,1))
               {
                  this.mouth.visible = true;
               }
               if(Players.hasItem(32,1))
               {
                  this.paint.visible = true;
               }
            }
            else
            {
               this.playerNo = -1;
            }
            if(Players.hasItem(33,1))
            {
               this.stash.visible = true;
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

