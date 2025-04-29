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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8982")]
   public dynamic class AirStrike3 extends SpellMC
   {
      public function AirStrike3()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,15,this.frame16,69,this.frame70,70,this.frame71,125,this.frame126);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,2);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.lanceSkills[19]);
      }
      
      internal function frame16() : *
      {
         Battle.shake("small");
      }
      
      internal function frame70() : *
      {
         Battle.shake("big");
      }
      
      internal function frame71() : *
      {
         Skills.airstrike3();
      }
      
      internal function frame126() : *
      {
         k();
      }
   }
}

