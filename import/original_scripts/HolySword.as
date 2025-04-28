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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9122")]
   public dynamic class HolySword extends SpellMC
   {
      public function HolySword()
      {
         super();
         addFrameScript(0,this.frame1,21,this.frame22,24,this.frame25,30,this.frame31,54,this.frame55);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame22() : *
      {
         Battle.shake("small");
      }
      
      internal function frame25() : *
      {
         Skills.holysword();
      }
      
      internal function frame31() : *
      {
         Text.speech(Text.mattSkills[26]);
         Text.speech(Text.mattSkills[27]);
      }
      
      internal function frame55() : *
      {
         k();
      }
   }
}

