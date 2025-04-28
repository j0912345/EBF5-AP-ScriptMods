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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3108")]
   public dynamic class playerbadge2_3115 extends MovieClip
   {
      public var badges:MovieClip;
      
      public function playerbadge2_3115()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.parent.zombieMode)
            {
               this.badges.gotoAndStop(2);
               return;
            }
            this.badges.gotoAndStop(Players.equips[parent.parent.playerNo][4]);
            if(!Options.showFlair)
            {
               this.badges.gotoAndStop(2);
            }
         }
         catch(errObject:Error)
         {
         }
      }
   }
}

