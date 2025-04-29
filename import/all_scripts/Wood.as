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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8433")]
   public dynamic class Wood extends SpellMC
   {
      public function Wood()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,11,this.frame12,34,this.frame35);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.annaSkills[7]);
         Text.speech(Text.annaSkills[9]);
         Battle.shake("tiny");
      }
      
      internal function frame4() : *
      {
         Skills.log();
      }
      
      internal function frame12() : *
      {
         Text.speech(Text.annaSkills[8]);
      }
      
      internal function frame35() : *
      {
         k();
      }
   }
}

