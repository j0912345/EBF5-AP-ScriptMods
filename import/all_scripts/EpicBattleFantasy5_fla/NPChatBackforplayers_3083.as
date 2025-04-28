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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18076")]
   public dynamic class NPChatBackforplayers_3083 extends MovieClip
   {
      public function NPChatBackforplayers_3083()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(parent)
         {
            gotoAndStop(parent.hat);
            if(parent.player == 5)
            {
               gotoAndStop(parent.hat + 70);
            }
         }
      }
   }
}

