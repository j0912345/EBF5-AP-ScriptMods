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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol20070")]
   public dynamic class nataliehelpprisoner_2083 extends MovieClip
   {
      public var shoes:int;
      
      public var hat:int;
      
      public var body:int;
      
      public var player:int;
      
      public var back:int;
      
      public var hold:int;
      
      public var emo:int;
      
      public var hand:int;
      
      public var race:int;
      
      public var dye:int;
      
      public var hideHair:Boolean;
      
      public var hideCowlick:Boolean;
      
      public var p:Player;
      
      public var i:int;
      
      public function nataliehelpprisoner_2083()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(Game.party.length > 3)
         {
            stop();
            visible = false;
         }
         this.shoes = 2;
         this.hat = 30;
         this.body = 50;
         this.player = 1;
         this.back = 2;
         this.hold = 2;
         this.emo = 1;
         this.hand = 1;
         this.race = 2;
         this.dye = 2;
         this.hideHair = false;
         this.hideCowlick = false;
         this.p = Players.player2;
         this.back = 2;
         this.hold = 2;
         this.race = 2;
         this.player = 2;
         this.hat = this.p.hat.map[0];
         this.body = this.p.armor.map[0];
         this.shoes = this.p.armor.map[1];
         this.hand = 1;
         this.emo = 32;
         this.hideHair = false;
         this.hideCowlick = false;
         for each(this.i in [5,27,31,33])
         {
            if(this.hat == this.i)
            {
               this.hideHair = true;
            }
         }
         for each(this.i in [5,10,13,15,18,19,20,22,24,25,26,27,29,31,33])
         {
            if(this.hat == this.i)
            {
               this.hideCowlick = true;
            }
         }
      }
   }
}

