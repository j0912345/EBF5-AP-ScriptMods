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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol20283")]
   public dynamic class natzfoe_1652 extends MovieClip
   {
      public function natzfoe_1652()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(Game.party.length != 2 || Flags.CYCLOPS_DEFEATED.quantity || Items.shovel.quantity == 0)
         {
            stop();
            visible = false;
         }
      }
   }
}

