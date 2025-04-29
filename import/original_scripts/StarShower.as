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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9002")]
   public dynamic class StarShower extends SpellMC
   {
      public function StarShower()
      {
         super();
         addFrameScript(0,this.frame1,21,this.frame22,26,this.frame27,31,this.frame32,37,this.frame38,52,this.frame53);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame22() : *
      {
         Battle.finalHit = false;
         Skills.starshower();
      }
      
      internal function frame27() : *
      {
         Battle.finalHit = false;
         Skills.starshower();
      }
      
      internal function frame32() : *
      {
         Skills.starshower();
      }
      
      internal function frame38() : *
      {
         Text.speech(Text.natzSkills[2]);
      }
      
      internal function frame53() : *
      {
         k();
      }
   }
}

