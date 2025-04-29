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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10651")]
   public dynamic class ClassicThunderstorm extends SpellMC
   {
      public function ClassicThunderstorm()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,10,this.frame11,14,this.frame15,18,this.frame19,22,this.frame23,33,this.frame34);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         parent.targetAll = true;
         f2();
      }
      
      internal function frame7() : *
      {
         parent.targetAll = true;
         f2();
      }
      
      internal function frame11() : *
      {
         parent.targetAll = true;
         f2();
      }
      
      internal function frame15() : *
      {
         parent.targetAll = true;
         f2();
      }
      
      internal function frame19() : *
      {
         parent.targetAll = true;
         f2();
      }
      
      internal function frame23() : *
      {
         parent.targetAll = true;
         f2();
      }
      
      internal function frame34() : *
      {
         k();
      }
   }
}

