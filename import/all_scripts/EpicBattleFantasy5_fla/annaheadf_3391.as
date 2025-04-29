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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5843")]
   public dynamic class annaheadf_3391 extends MovieClip
   {
      public var aid:MovieClip;
      
      public var m2:MovieClip;
      
      public var mouth:MovieClip;
      
      public var paint:MovieClip;
      
      public var stash:MovieClip;
      
      public var playerNo:int;
      
      public function annaheadf_3391()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         stop();
         if(parent.lowHP)
         {
            this.m2.visible = true;
         }
         this.aid.visible = false;
         this.mouth.visible = false;
         this.paint.visible = false;
         this.stash.visible = false;
         this.playerNo = 4;
         try
         {
            if(parent.zombieMode)
            {
               gotoAndStop(2);
               this.playerNo = -1;
            }
            else
            {
               if(Players.hasItem(18,4))
               {
                  this.aid.visible = true;
               }
               if(Players.hasItem(19,4))
               {
                  this.mouth.visible = true;
               }
               if(Players.hasItem(32,4))
               {
                  this.paint.visible = true;
               }
               if(Players.hasItem(33,4))
               {
                  this.stash.visible = true;
               }
               stop();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame2() : *
      {
         this.playerNo = 4;
      }
   }
}

