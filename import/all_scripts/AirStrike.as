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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8987")]
   public dynamic class AirStrike extends SpellMC
   {
      public function AirStrike()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,19,this.frame20,44,this.frame45,45,this.frame46,84,this.frame85);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.lanceSkills[17]);
      }
      
      internal function frame20() : *
      {
         Battle.shake("small");
      }
      
      internal function frame45() : *
      {
         Battle.shake("small");
      }
      
      internal function frame46() : *
      {
         Skills.airstrike1();
      }
      
      internal function frame85() : *
      {
         k();
      }
   }
}

