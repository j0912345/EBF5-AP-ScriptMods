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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8374")]
   public dynamic class RazorLeaf2 extends SpellMC
   {
      public function RazorLeaf2()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,17,this.frame18,26,this.frame27,42,this.frame43);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame7() : *
      {
         Text.speech(Text.annaSkills[11]);
      }
      
      internal function frame18() : *
      {
         Battle.finalHit = false;
         Skills.razorleaf();
      }
      
      internal function frame27() : *
      {
         Skills.razorleaf();
      }
      
      internal function frame43() : *
      {
         k();
      }
   }
}

