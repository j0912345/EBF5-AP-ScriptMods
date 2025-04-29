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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9066")]
   public dynamic class Fire1 extends SpellMC
   {
      public function Fire1()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,9,this.frame10,34,this.frame35);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame6() : *
      {
         Skills.fire();
      }
      
      internal function frame10() : *
      {
         Text.speech(Text.natzSkills[6]);
         Text.speech(Text.natzSkills[7]);
         Text.speech(Text.natzSkills[9]);
      }
      
      internal function frame35() : *
      {
         k();
      }
   }
}

