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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9065")]
   public dynamic class Fireball extends SpellMC
   {
      public function Fireball()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,10,this.frame11,33,this.frame34);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame5() : *
      {
         Skills.fireball();
      }
      
      internal function frame11() : *
      {
         Text.speech(Text.natzSkills[9]);
      }
      
      internal function frame34() : *
      {
         k();
      }
   }
}

