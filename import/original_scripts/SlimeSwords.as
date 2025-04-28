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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10201")]
   public dynamic class SlimeSwords extends SpellMC
   {
      public function SlimeSwords()
      {
         super();
         addFrameScript(0,this.frame1,35,this.frame36,40,this.frame41,46,this.frame47,53,this.frame54);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame36() : *
      {
         Battle.finalHit = false;
         Skills.darkswords();
      }
      
      internal function frame41() : *
      {
         Battle.finalHit = false;
         Skills.darkswords();
      }
      
      internal function frame47() : *
      {
         Skills.darkswords();
      }
      
      internal function frame54() : *
      {
         k();
      }
   }
}

