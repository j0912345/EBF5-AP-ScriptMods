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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9457")]
   public dynamic class LaserBlade extends SpellMC
   {
      public function LaserBlade()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,3,this.frame4,9,this.frame10,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame3() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame4() : *
      {
         Skills.laserblade();
      }
      
      internal function frame10() : *
      {
         Text.speech(Text.miscSkills[1]);
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}

