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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9063")]
   public dynamic class Ice extends SpellMC
   {
      public function Ice()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,9,this.frame10,27,this.frame28);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame5() : *
      {
         Skills.ice();
      }
      
      internal function frame10() : *
      {
         Text.speech(Text.natzSkills[6]);
         Text.speech(Text.natzSkills[7]);
         Text.speech(Text.natzSkills[15]);
      }
      
      internal function frame28() : *
      {
         k();
      }
   }
}

