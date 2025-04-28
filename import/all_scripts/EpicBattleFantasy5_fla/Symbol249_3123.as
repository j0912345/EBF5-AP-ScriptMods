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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5069")]
   public dynamic class Symbol249_3123 extends MovieClip
   {
      public var gold:MovieClip;
      
      public var green:MovieClip;
      
      public var purple:MovieClip;
      
      public var red:MovieClip;
      
      public var silver:MovieClip;
      
      public function Symbol249_3123()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.gold.visible = false;
         this.green.visible = false;
         this.silver.visible = false;
         this.purple.visible = false;
         if(parent.playerNo != -1)
         {
            if(Players.hasItem(24,parent.playerNo))
            {
               this.gold.visible = true;
               this.red.visible = false;
            }
            if(Players.hasItem(25,parent.playerNo))
            {
               this.green.visible = true;
               this.red.visible = false;
            }
            if(Players.hasItem(26,parent.playerNo))
            {
               this.silver.visible = true;
               this.red.visible = false;
            }
            if(Players.hasItem(27,parent.playerNo))
            {
               this.purple.visible = true;
               this.red.visible = false;
            }
         }
         if(parent.playerNo != 2)
         {
            this.red.visible = false;
         }
      }
   }
}

