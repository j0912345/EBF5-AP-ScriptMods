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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol20085")]
   public dynamic class castlecannon_2036 extends MovieClip
   {
      public function castlecannon_2036()
      {
         super();
         addFrameScript(7,this.frame8,12,this.frame13);
      }
      
      internal function frame8() : *
      {
         if(Flags.TANK_DEFEATED.quantity)
         {
            stop();
         }
      }
      
      internal function frame13() : *
      {
         if(Math.random() > 0.05)
         {
            gotoAndPlay(2);
         }
         if(Maps.instance.parent.textbox.visible)
         {
            gotoAndPlay(2);
         }
      }
   }
}

