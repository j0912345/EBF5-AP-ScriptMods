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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3078")]
   public dynamic class cattail_3402 extends MovieClip
   {
      public var tail:MovieClip;
      
      public function cattail_3402()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.zombieMode)
            {
               gotoAndStop(30);
            }
            else
            {
               gotoAndStop(Players.equips[5][2]);
            }
         }
         catch(errObject:Error)
         {
         }
         this.tail.visible = false;
         if(parent && !parent.zombieMode && Players.hasItem(35,5))
         {
            this.tail.visible = true;
         }
      }
   }
}

