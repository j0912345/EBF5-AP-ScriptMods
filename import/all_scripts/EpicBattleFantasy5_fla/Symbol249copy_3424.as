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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3215")]
   public dynamic class Symbol249copy_3424 extends MovieClip
   {
      public var gold:MovieClip;
      
      public var green:MovieClip;
      
      public var purple:MovieClip;
      
      public var silver:MovieClip;
      
      public function Symbol249copy_3424()
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
         try
         {
            if(Boolean(parent) && Boolean(parent.parent) && Boolean(parent.parent.parent) && !parent.parent.parent.zombieMode)
            {
               if(Players.hasItem(24,5))
               {
                  this.gold.visible = true;
               }
               if(Players.hasItem(25,5))
               {
                  this.green.visible = true;
               }
               if(Players.hasItem(26,5))
               {
                  this.silver.visible = true;
               }
               if(Players.hasItem(27,5))
               {
                  this.purple.visible = true;
               }
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

