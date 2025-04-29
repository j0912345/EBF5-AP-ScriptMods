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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11807")]
   public dynamic class matteatmouth_5137 extends MovieClip
   {
      public function matteatmouth_5137()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            stop();
            if(Boolean(parent) && Boolean(parent.hideMouth))
            {
               this.visible = false;
            }
            if(Boolean(parent) && Boolean(parent.parent) && Boolean(parent.parent.hideMouth))
            {
               this.visible = false;
            }
            if(parent && parent.zombieMode && Boolean(parent.zombieMatt))
            {
               nextFrame();
            }
            if(parent && parent.parent && parent.parent.zombieMode && Boolean(parent.parent.zombieMatt))
            {
               nextFrame();
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

