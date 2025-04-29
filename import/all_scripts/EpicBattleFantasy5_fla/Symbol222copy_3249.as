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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5389")]
   public dynamic class Symbol222copy_3249 extends MovieClip
   {
      public var cross:MovieClip;
      
      public var gold:MovieClip;
      
      public var heart:MovieClip;
      
      public var pearls:MovieClip;
      
      public var ring:MovieClip;
      
      public var tags:MovieClip;
      
      public var tri:MovieClip;
      
      public function Symbol222copy_3249()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.gold.visible = false;
         if(Players.hasItem(28,4))
         {
            this.gold.visible = true;
         }
         this.heart.visible = false;
         if(Players.hasItem(29,4))
         {
            this.heart.visible = true;
         }
         this.tri.visible = false;
         if(Players.hasItem(30,4))
         {
            this.tri.visible = true;
         }
         this.cross.visible = false;
         if(Players.hasItem(31,4))
         {
            this.cross.visible = true;
         }
         this.pearls.visible = false;
         if(Players.hasItem(37,4))
         {
            this.pearls.visible = true;
         }
         this.ring.visible = false;
         if(Players.hasItem(47,4))
         {
            this.ring.visible = true;
         }
         this.tags.visible = false;
         if(Players.hasItem(48,4))
         {
            this.tags.visible = true;
         }
      }
   }
}

