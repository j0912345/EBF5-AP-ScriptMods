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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11931")]
   public dynamic class matthairfall_5635 extends MovieClip
   {
      public function matthairfall_5635()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.zombieMode)
            {
               this.visible = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame20() : *
      {
         stop();
      }
   }
}

