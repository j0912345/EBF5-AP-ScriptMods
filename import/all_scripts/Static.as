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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7981")]
   public dynamic class Static extends SpellMC
   {
      public function Static()
      {
         super();
         addFrameScript(0,this.frame1,29,this.frame30,41,this.frame42);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,3);
         if(!Options.showFlashes)
         {
            gotoAndPlay(4);
         }
      }
      
      internal function frame30() : *
      {
         Skills.static();
      }
      
      internal function frame42() : *
      {
         k();
      }
   }
}

