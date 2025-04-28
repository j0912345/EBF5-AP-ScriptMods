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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12190")]
   public dynamic class Symbol808b_4826 extends MovieClip
   {
      public function Symbol808b_4826()
      {
         super();
         addFrameScript(0,this.frame1,15,this.frame16);
      }
      
      internal function frame1() : *
      {
         x += Math.random() * 50 - 25;
         y += Math.random() * 50 - 25;
         if(Boolean(parent.self) && Boolean(parent.self.isPlayer))
         {
            stop();
            visible = false;
         }
      }
      
      internal function frame16() : *
      {
         stop();
      }
   }
}

