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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8435")]
   public dynamic class Gust extends SpellMC
   {
      public function Gust()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,21,this.frame22);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.annaSkills[16]);
      }
      
      internal function frame5() : *
      {
         Skills.gust();
      }
      
      internal function frame22() : *
      {
         k();
      }
   }
}

