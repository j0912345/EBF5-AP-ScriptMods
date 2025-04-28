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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11873")]
   public dynamic class _4Symbol16_5573 extends MovieClip
   {
      public var derp:MovieClip;
      
      public var playerNo:int;
      
      public function _4Symbol16_5573()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            this.playerNo = parent.playerNo;
            if(!parent)
            {
               return;
            }
            if(!parent.zombieMode)
            {
               try
               {
                  this.derp.gotoAndStop(Players.equips[1][2]);
               }
               catch(e:Error)
               {
               }
            }
            else
            {
               this.derp.gotoAndStop(2);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

