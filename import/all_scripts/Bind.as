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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9566")]
   public dynamic class Bind extends SpellMC
   {
      public function Bind()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,18,this.frame19,38,this.frame39);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame10() : *
      {
         Skills.bind();
      }
      
      internal function frame19() : *
      {
         Text.speech(Text.miscSkills[25]);
         Text.speech(Text.miscSkills[21]);
      }
      
      internal function frame39() : *
      {
         k();
      }
   }
}

