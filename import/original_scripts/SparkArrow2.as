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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8350")]
   public dynamic class SparkArrow2 extends SpellMC
   {
      public function SparkArrow2()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8,9,this.frame10,14,this.frame15,30,this.frame31);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame8() : *
      {
         Text.speech(Text.annaSkills[24]);
      }
      
      internal function frame10() : *
      {
         Skills.sparkarrow2();
      }
      
      internal function frame15() : *
      {
         Text.speech(Text.annaSkills[23]);
      }
      
      internal function frame31() : *
      {
         k();
      }
   }
}

