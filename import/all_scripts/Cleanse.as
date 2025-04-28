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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9093")]
   public dynamic class Cleanse extends SpellMC
   {
      public function Cleanse()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,50,this.frame51,61,this.frame62);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame7() : *
      {
         Text.speech(Text.natzSkills[8]);
      }
      
      internal function frame51() : *
      {
         Skills.cleanse();
      }
      
      internal function frame62() : *
      {
         k();
      }
   }
}

