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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9041")]
   public dynamic class LuckyStar extends SpellMC
   {
      public function LuckyStar()
      {
         super();
         addFrameScript(0,this.frame1,21,this.frame22,26,this.frame27,40,this.frame41);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame22() : *
      {
         Skills.luckystar();
      }
      
      internal function frame27() : *
      {
         Text.speech(Text.natzSkills[1]);
      }
      
      internal function frame41() : *
      {
         k();
      }
   }
}

