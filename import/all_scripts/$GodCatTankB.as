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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9648")]
   public dynamic class $GodCatTankB extends MovieClip
   {
      public var cat:MovieClip;
      
      public var skin:int;
      
      public function $GodCatTankB()
      {
         super();
         addFrameScript(0,this.frame1,122,this.frame123,188,this.frame189);
      }
      
      internal function frame1() : *
      {
         this.skin = 1;
      }
      
      internal function frame123() : *
      {
         this.cat.animate("magic2");
      }
      
      internal function frame189() : *
      {
         Text.speech(Text.nolegsSkills[35]);
         Text.speech(Text.nolegsSkills[34]);
      }
   }
}

