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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5680")]
   public dynamic class natzhair2_3317 extends MovieClip
   {
      public var brows:MovieClip;
      
      public var derp:MovieClip;
      
      public var glasses:MovieClip;
      
      public var playerNo:int;
      
      public function natzhair2_3317()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.glasses.visible = false;
         if(Players.hasItem(49,2))
         {
            this.glasses.visible = true;
         }
         this.brows.visible = false;
         try
         {
            if(parent.zombieMode)
            {
               this.derp.gotoAndStop(56);
            }
            else
            {
               this.playerNo = 2;
               this.derp.gotoAndStop(Players.equips[this.playerNo][1]);
            }
            if(Players.hasItem(34,2))
            {
               this.brows.visible = true;
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

