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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5679")]
   public dynamic class natzhairclip_3319 extends MovieClip
   {
      public function natzhairclip_3319()
      {
         super();
         addFrameScript(2,this.frame3,5,this.frame6,14,this.frame15,18,this.frame19);
      }
      
      internal function frame3() : *
      {
         if(parent.playerNo == 4 && Players.equips[4][2] == 2)
         {
            gotoAndStop(33);
         }
         if(parent.playerNo == 2 && Players.equips[2][2] == 2)
         {
            gotoAndStop(30);
         }
      }
      
      internal function frame6() : *
      {
      }
      
      internal function frame15() : *
      {
         if(parent.playerNo == 4 && Players.equips[4][2] == 9)
         {
            gotoAndStop(31);
         }
         else if(parent.playerNo == 2 && Players.equips[2][2] == 9)
         {
            gotoAndStop(31);
         }
      }
      
      internal function frame19() : *
      {
         if(parent.playerNo == 4 && Players.equips[4][2] == 14)
         {
            gotoAndStop(32);
         }
         else if(parent.playerNo == 2 && Players.equips[2][2] == 14)
         {
            gotoAndStop(32);
         }
      }
   }
}

