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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol21783")]
   public dynamic class Icons6 extends MovieClip
   {
      public var pi:MovieClip;
      
      public function Icons6()
      {
         super();
         addFrameScript(3,this.frame4,9,this.frame10);
      }
      
      internal function frame4() : *
      {
         if(Battle.standbyPlayers[0])
         {
            this.pi.update(Battle.standbyPlayers[0].playerNo);
         }
         else
         {
            this.pi.visible = false;
         }
      }
      
      internal function frame10() : *
      {
         if(Battle.standbyPlayers[1])
         {
            this.pi.update(Battle.standbyPlayers[1].playerNo);
         }
         else
         {
            this.pi.visible = false;
         }
      }
   }
}

