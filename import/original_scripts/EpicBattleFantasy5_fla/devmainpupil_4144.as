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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15908")]
   public dynamic class devmainpupil_4144 extends MovieClip
   {
      public var b:int;
      
      public function devmainpupil_4144()
      {
         super();
         addFrameScript(0,this.frame1,30,this.frame31,75,this.frame76,145,this.frame146,173,this.frame174,207,this.frame208,230,this.frame231);
      }
      
      internal function frame1() : *
      {
         Global.nestedAnimation(this);
      }
      
      internal function frame31() : *
      {
         this.b = Math.random() * 35;
         if(this.b == 26 || this.b == 25)
         {
            gotoAndPlay("back");
         }
         else if(this.b == 27)
         {
            gotoAndPlay("front");
         }
         else if(this.b == 38)
         {
            gotoAndPlay("up");
         }
         else if(this.b == 29)
         {
            gotoAndPlay("down");
         }
         else
         {
            gotoAndPlay(2);
         }
      }
      
      internal function frame76() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame146() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame174() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame208() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame231() : *
      {
         gotoAndPlay(2);
      }
   }
}

