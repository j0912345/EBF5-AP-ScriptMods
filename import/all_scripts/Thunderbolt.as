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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8995")]
   public dynamic class Thunderbolt extends SpellMC
   {
      public function Thunderbolt()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,6,this.frame7,8,this.frame9,11,this.frame12,25,this.frame26);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.finalHit = false;
         Skills.thunderbolt();
      }
      
      internal function frame7() : *
      {
         Battle.finalHit = false;
         Skills.thunderbolt();
      }
      
      internal function frame9() : *
      {
         Text.speech(Text.natzSkills[12]);
      }
      
      internal function frame12() : *
      {
         Skills.thunderbolt();
      }
      
      internal function frame26() : *
      {
         k();
      }
   }
}

