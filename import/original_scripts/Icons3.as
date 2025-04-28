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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol21934")]
   public dynamic class Icons3 extends MovieClip
   {
      public function Icons3()
      {
         super();
         addFrameScript(19,this.frame20);
      }
      
      internal function frame20() : *
      {
         if(Players.player3.status[Status.CHARGE])
         {
            nextFrame();
         }
      }
   }
}

