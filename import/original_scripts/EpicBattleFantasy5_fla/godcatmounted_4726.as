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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9643")]
   public dynamic class godcatmounted_4726 extends MovieClip
   {
      public var animation:String;
      
      public function godcatmounted_4726()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,46,this.frame47,65,this.frame66,68,this.frame69,92,this.frame93,120,this.frame121,126,this.frame127);
      }
      
      public function k() : *
      {
         gotoAndPlay(this.animation);
      }
      
      public function animate(param1:*) : *
      {
         if(this.animation == "stand" && param1 != "stand")
         {
            gotoAndPlay(param1);
         }
         this.animation = param1;
      }
      
      internal function frame1() : *
      {
         this.animation = "stand";
         this.k();
      }
      
      internal function frame4() : *
      {
         if(!Options.idleFoes)
         {
            stop();
            cacheAsBitmap = true;
         }
      }
      
      internal function frame47() : *
      {
         this.k();
      }
      
      internal function frame66() : *
      {
         this.animation = "stand";
      }
      
      internal function frame69() : *
      {
         this.k();
      }
      
      internal function frame93() : *
      {
         this.k();
      }
      
      internal function frame121() : *
      {
         this.animation = "stand";
      }
      
      internal function frame127() : *
      {
         this.k();
      }
   }
}

