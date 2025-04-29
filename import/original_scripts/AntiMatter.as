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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8953")]
   public dynamic class AntiMatter extends SpellMC
   {
      public function AntiMatter()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,22,this.frame23,27,this.frame28,32,this.frame33,37,this.frame38,56,this.frame57);
      }
      
      internal function frame1() : *
      {
         init(Target.CENTER_ENEMY,3);
      }
      
      internal function frame15() : *
      {
         Text.speech(Text.lanceSkills[39]);
         Text.speech(Text.lanceSkills[37]);
      }
      
      internal function frame23() : *
      {
         Battle.finalHit = false;
         Skills.antimatter();
      }
      
      internal function frame28() : *
      {
         Battle.finalHit = false;
         Skills.antimatter();
      }
      
      internal function frame33() : *
      {
         Skills.antimatter();
      }
      
      internal function frame38() : *
      {
         Text.speech(Text.lanceSkills[38]);
      }
      
      internal function frame57() : *
      {
         k();
      }
   }
}

