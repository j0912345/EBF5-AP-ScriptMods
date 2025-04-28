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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9685")]
   public dynamic class $GodCatTankA extends MovieClip
   {
      public var cat:MovieClip;
      
      public var skin:int;
      
      public function $GodCatTankA()
      {
         super();
         addFrameScript(1,this.frame2,129,this.frame130,214,this.frame215,302,this.frame303);
      }
      
      internal function frame2() : *
      {
         this.skin = 2;
      }
      
      internal function frame130() : *
      {
         this.cat.animate("magic");
      }
      
      internal function frame215() : *
      {
         this.cat.animate("magic");
      }
      
      internal function frame303() : *
      {
         Text.speech(Text.nolegsSkills[37]);
         Text.speech(Text.nolegsSkills[36]);
      }
   }
}

