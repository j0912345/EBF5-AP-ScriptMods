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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4172")]
   public dynamic class _PlayerIcons_279 extends MovieClip
   {
      public var icon:MovieClip;
      
      public var face:int;
      
      public function _PlayerIcons_279()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6);
      }
      
      public function update(param1:int) : *
      {
         gotoAndStop(8);
         this.face = 1;
         if(Players["player" + param1].dead)
         {
            this.face = 3;
         }
         else if(Players["player" + param1].getHpPercent() < 50)
         {
            this.face = 2;
         }
         gotoAndStop(param1 + 1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.face = 1;
      }
      
      internal function frame2() : *
      {
         if(!Players.player1.inParty())
         {
            gotoAndStop(11);
         }
      }
      
      internal function frame3() : *
      {
         if(!Players.player2.inParty())
         {
            gotoAndStop(11);
         }
      }
      
      internal function frame4() : *
      {
         if(!Players.player3.inParty())
         {
            gotoAndStop(11);
         }
      }
      
      internal function frame5() : *
      {
         if(!Players.player4.inParty())
         {
            gotoAndStop(11);
         }
      }
      
      internal function frame6() : *
      {
         if(!Players.player5.inParty())
         {
            gotoAndStop(11);
         }
      }
   }
}

