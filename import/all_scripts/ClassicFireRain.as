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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10663")]
   public dynamic class ClassicFireRain extends SpellMC
   {
      public function ClassicFireRain()
      {
         super();
         addFrameScript(0,this.frame1,15,this.frame16,19,this.frame20,23,this.frame24,28,this.frame29,34,this.frame35,51,this.frame52);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame16() : *
      {
         Skills.user.firerain(1);
      }
      
      internal function frame20() : *
      {
         Skills.user.firerain(1);
      }
      
      internal function frame24() : *
      {
         Skills.user.firerain(1);
      }
      
      internal function frame29() : *
      {
         Skills.user.firerain(1);
      }
      
      internal function frame35() : *
      {
         Skills.user.firerain(2);
      }
      
      internal function frame52() : *
      {
         k();
      }
   }
}

