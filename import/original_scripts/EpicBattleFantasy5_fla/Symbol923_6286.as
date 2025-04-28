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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9977")]
   public dynamic class Symbol923_6286 extends MovieClip
   {
      public var skin:int;
      
      public var hat:int;
      
      public function Symbol923_6286()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.skin = 2 + Math.random() * 22;
         this.skin = Players.P2equips[2];
         if(0.01 > Math.random() && Boolean(Flags.NEST_DEFEATED.quantity))
         {
            this.skin = 25;
         }
         if(!Options.titties)
         {
            this.skin = 23;
         }
         this.hat = 5;
         if(Players.player2.hat == Equips.orangebauble)
         {
            this.hat = 2;
         }
         if(Players.player2.hat == Equips.nursehat)
         {
            this.hat = 3;
         }
         if(Players.player2.hat == Equips.popehat)
         {
            this.hat = 4;
         }
         if(Players.player2.hat == Equips.leafclip)
         {
            this.hat = 4;
         }
         if(Players.player2.hat == Equips.cowhorns)
         {
            this.hat = 1;
         }
         if(Players.player2.hat == Equips.flowerbobble)
         {
            this.hat = 3;
         }
         if(Players.player2.hat == Equips.darkbauble)
         {
            this.hat = 2;
         }
         if(Players.player2.hat == Equips.ninjachopsticks)
         {
            this.hat = 1;
         }
         if(Players.player2.hat == Equips.robotears)
         {
            this.hat = 2;
         }
         if(Players.player2.hat == Equips.darkbauble)
         {
            this.hat = 2;
         }
         if(Players.player2.hat == Equips.drillbits)
         {
            this.hat = 4;
         }
         if(Players.player2.hat == Equips.iceshards)
         {
            this.hat = 3;
         }
         if(Players.player2.hat == Equips.royalcrown)
         {
            this.hat = 4;
         }
         if(Players.player2.hat == Equips.rubberduck)
         {
            this.hat = 3;
         }
         if(Players.player2.hat == Equips.spiderbobble)
         {
            this.hat = 4;
         }
         if(Players.player2.hat == Equips.hollyhairpin)
         {
            this.hat = 4;
         }
      }
   }
}

