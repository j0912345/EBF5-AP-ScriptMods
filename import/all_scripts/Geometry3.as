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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10484")]
   public dynamic class Geometry3 extends SpellMC
   {
      public function Geometry3()
      {
         super();
         addFrameScript(0,this.frame1,16,this.frame17,40,this.frame41,60,this.frame61,84,this.frame85);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
         if(!Options.showFlashes)
         {
            gotoAndPlay("alt");
         }
      }
      
      internal function frame17() : *
      {
         Skills.geometry3();
      }
      
      internal function frame41() : *
      {
         k();
      }
      
      internal function frame61() : *
      {
         Skills.geometry3();
      }
      
      internal function frame85() : *
      {
         k();
      }
   }
}

