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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9040")]
   public dynamic class Pulsar extends SpellMC
   {
      public function Pulsar()
      {
         super();
         addFrameScript(0,this.frame1,40,this.frame41,45,this.frame46,46,this.frame47,66,this.frame67);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame41() : *
      {
         Text.speech(Text.natzSkills[14]);
         Text.speech(Text.natzSkills[18]);
         Text.speech(Text.natzSkills[23]);
         Text.speech(Text.natzSkills[21]);
      }
      
      internal function frame46() : *
      {
         Battle.shake("small");
      }
      
      internal function frame47() : *
      {
         Skills.pulsar();
      }
      
      internal function frame67() : *
      {
         k();
      }
   }
}

