package
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6711")]
   public dynamic class NPCbody extends MovieClip
   {
      public var bubble:MovieClip;
      
      public var racem:MovieClip;
      
      public var body:int;
      
      public var hat:int;
      
      public var race:int;
      
      public var hold:int;
      
      public var hold2:int;
      
      public var back:int;
      
      public var hand:int;
      
      public var emo:int;
      
      public var beard:int;
      
      public var glasses:int;
      
      public var shoes:int;
      
      public var hair:int;
      
      public var dye:int;
      
      public var anim:String;
      
      public function NPCbody()
      {
         super();
         addFrameScript(0,this.frame1,58,this.frame59,118,this.frame119,177,this.frame178,235,this.frame236);
      }
      
      public function redress() : *
      {
         var _loc1_:int = currentFrame;
         gotoAndStop(10);
         gotoAndStop(_loc1_);
      }
      
      public function animate(param1:String) : *
      {
         if(this.anim != param1)
         {
            this.anim = param1;
            gotoAndPlay(param1);
            gotoAndPlay(currentFrame + Math.floor(Math.random() * 50));
         }
      }
      
      public function skin(param1:Array, param2:String) : *
      {
         this.body = param1[7];
         this.hat = param1[6];
         this.race = param1[0];
         this.hold = param1[10];
         this.hold2 = param1[11];
         this.back = param1[8];
         this.emo = param1[3];
         this.beard = param1[5];
         this.glasses = param1[4];
         this.shoes = param1[9];
         this.hair = param1[2];
         this.dye = param1[1];
         this.hand = this.race;
         this.redress();
         this.animate(param2);
      }
      
      internal function frame1() : *
      {
         stop();
         if(Debug.mappingMode2)
         {
            visible = false;
         }
         this.anim = "";
      }
      
      internal function frame59() : *
      {
         gotoAndPlay(Maps.RIGHT);
      }
      
      internal function frame119() : *
      {
         gotoAndPlay(Maps.DOWN);
      }
      
      internal function frame178() : *
      {
         gotoAndPlay(Maps.UP);
      }
      
      internal function frame236() : *
      {
         gotoAndPlay(Maps.LEFT);
      }
   }
}

