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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10349")]
   public dynamic class PixelFork extends SpellMC
   {
      public function PixelFork()
      {
         super();
         addFrameScript(0,this.frame1,12,this.frame13,15,this.frame16,19,this.frame20,23,this.frame24,33,this.frame34);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame13() : *
      {
         if(Flags.battleEvent == Flags.SNOWFLAKE)
         {
            Text.speech(Text.snowflake[16]);
         }
      }
      
      internal function frame16() : *
      {
         Battle.finalHit = false;
         Skills.pixelfork();
      }
      
      internal function frame20() : *
      {
         Battle.finalHit = false;
         Skills.pixelfork();
      }
      
      internal function frame24() : *
      {
         Skills.pixelfork();
      }
      
      internal function frame34() : *
      {
         k();
      }
   }
}

