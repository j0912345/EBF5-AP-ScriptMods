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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3124")]
   public dynamic class Symbol222copy2_3104 extends MovieClip
   {
      public var cross:MovieClip;
      
      public var gold:MovieClip;
      
      public var heart:MovieClip;
      
      public var pearls:MovieClip;
      
      public var ring:MovieClip;
      
      public var tags:MovieClip;
      
      public var tri:MovieClip;
      
      public var pno:int;
      
      public function Symbol222copy2_3104()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.gold.visible = false;
         this.heart.visible = false;
         this.cross.visible = false;
         this.tri.visible = false;
         this.pearls.visible = false;
         this.ring.visible = false;
         this.tags.visible = false;
         try
         {
            if(Boolean(parent) && Boolean(parent.parent) && !parent.parent.zombieMode)
            {
               this.pno = parent.parent.playerNo;
               if(Players.hasItem(28,this.pno))
               {
                  this.gold.visible = true;
               }
               if(Players.hasItem(29,this.pno))
               {
                  this.heart.visible = true;
               }
               if(Players.hasItem(30,this.pno))
               {
                  this.tri.visible = true;
               }
               if(Players.hasItem(31,this.pno))
               {
                  this.cross.visible = true;
               }
               if(Players.hasItem(37,this.pno))
               {
                  this.pearls.visible = true;
               }
               if(Players.hasItem(47,this.pno))
               {
                  this.ring.visible = true;
               }
               if(Players.hasItem(48,this.pno))
               {
                  this.tags.visible = true;
               }
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

