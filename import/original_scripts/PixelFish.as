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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10354")]
   public dynamic class PixelFish extends SpellMC
   {
      public function PixelFish()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,17,this.frame18,40,this.frame41,41,this.frame42,53,this.frame54);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame10() : *
      {
         nextSpell();
      }
      
      internal function frame18() : *
      {
         if(Flags.battleEvent == Flags.SNOWFLAKE)
         {
            Text.speech(Text.snowflake[19]);
         }
      }
      
      internal function frame41() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.pixelfish();
      }
      
      internal function frame42() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame54() : *
      {
         k();
      }
   }
}

