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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9124")]
   public dynamic class Quake extends SpellMC
   {
      public function Quake()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,4,this.frame5,12,this.frame13,19,this.frame20,59,this.frame60);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame4() : *
      {
         Battle.shake("small");
      }
      
      internal function frame5() : *
      {
         Skills.quakespikes();
      }
      
      internal function frame13() : *
      {
         Text.speech(Text.mattSkills[21]);
         Text.speech(Text.mattSkills[18]);
      }
      
      internal function frame20() : *
      {
         nextSpell(isSummon,Spells.quakespikes);
      }
      
      internal function frame60() : *
      {
         k();
      }
   }
}

