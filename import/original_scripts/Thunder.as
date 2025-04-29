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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9000")]
   public dynamic class Thunder extends SpellMC
   {
      public function Thunder()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,5,this.frame6,6,this.frame7,14,this.frame15,22,this.frame23);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.finalHit = false;
         Skills.thunder();
      }
      
      internal function frame6() : *
      {
         Skills.thunder();
      }
      
      internal function frame7() : *
      {
         Text.speech(Text.natzSkills[6]);
         Text.speech(Text.natzSkills[7]);
         Text.speech(Text.natzSkills[12]);
      }
      
      internal function frame15() : *
      {
         nextSpell();
      }
      
      internal function frame23() : *
      {
         k();
      }
   }
}

