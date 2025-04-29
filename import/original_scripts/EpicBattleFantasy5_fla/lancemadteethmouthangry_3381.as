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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5807")]
   public dynamic class lancemadteethmouthangry_3381 extends MovieClip
   {
      public function lancemadteethmouthangry_3381()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Boolean(parent) && Boolean(parent.hideMouth))
            {
               this.visible = false;
            }
            else if(Boolean(parent) && Boolean(parent.parent) && Boolean(parent.parent.hideMouth))
            {
               this.visible = false;
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

