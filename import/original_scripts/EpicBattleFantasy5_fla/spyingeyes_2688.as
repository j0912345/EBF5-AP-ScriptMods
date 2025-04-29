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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol17077")]
   public dynamic class spyingeyes_2688 extends MovieClip
   {
      public function spyingeyes_2688()
      {
         super();
         addFrameScript(1,this.frame2,112,this.frame113,173,this.frame174);
      }
      
      internal function frame2() : *
      {
         gotoAndPlay(int(2 + Math.random() * 160));
      }
      
      internal function frame113() : *
      {
         if(Math.random() < 0.85)
         {
            gotoAndPlay(int(20 + Math.random() * 40));
         }
      }
      
      internal function frame174() : *
      {
         if(Math.random() < 0.85)
         {
            gotoAndPlay(140);
         }
         else
         {
            gotoAndPlay(5);
         }
      }
   }
}

