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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9406")]
   public dynamic class Revive extends SpellMC
   {
      public function Revive()
      {
         super();
         addFrameScript(0,this.frame1,40,this.frame41,50,this.frame51,61,this.frame62);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame41() : *
      {
         Text.speech(Text.miscSkills[28]);
      }
      
      internal function frame51() : *
      {
         Skills.revive();
      }
      
      internal function frame62() : *
      {
         k();
      }
   }
}

