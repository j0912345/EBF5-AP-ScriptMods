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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9537")]
   public dynamic class Debilitate extends SpellMC
   {
      public function Debilitate()
      {
         super();
         addFrameScript(0,this.frame1,31,this.frame32,42,this.frame43,52,this.frame53);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame32() : *
      {
         Skills.debilitate();
      }
      
      internal function frame43() : *
      {
         Text.speech(Text.miscSkills[22]);
         Text.speech(Text.miscSkills[23]);
      }
      
      internal function frame53() : *
      {
         k();
      }
   }
}

