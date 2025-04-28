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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10345")]
   public dynamic class PixelRiceball extends SpellMC
   {
      public function PixelRiceball()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,18,this.frame19,19,this.frame20,26,this.frame27,27,this.frame28,35,this.frame36,36,this.frame37,38,this.frame39,44,this.frame45);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame15() : *
      {
         if(Flags.battleEvent == Flags.SNOWFLAKE)
         {
            Text.speech(Text.snowflake[17]);
         }
      }
      
      internal function frame19() : *
      {
         Battle.finalHit = false;
         Skills.pixelriceball();
      }
      
      internal function frame20() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame27() : *
      {
         Battle.finalHit = false;
         Skills.pixelriceball();
      }
      
      internal function frame28() : *
      {
         Battle.shake("small");
      }
      
      internal function frame36() : *
      {
         Skills.pixelriceball();
      }
      
      internal function frame37() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame39() : *
      {
         nextSpell();
      }
      
      internal function frame45() : *
      {
         k();
      }
   }
}

