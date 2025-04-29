package
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7277")]
   public dynamic class EffectItem extends SpellMC
   {
      public function EffectItem()
      {
         super();
         addFrameScript(0,this.frame1,26,this.frame27,32,this.frame33);
      }
      
      internal function frame1() : *
      {
         if(Global.itemIcon == 1)
         {
            this.visible = false;
         }
         if(Skills.user == Players.player3)
         {
            this.x -= 110;
            this.y -= 150;
         }
         this.y -= Global.stealcount * 10;
         this.x += Global.stealcount * 50;
         ++Global.stealcount;
      }
      
      internal function frame27() : *
      {
         Global.stealcount = 0;
      }
      
      internal function frame33() : *
      {
         k();
      }
   }
}

