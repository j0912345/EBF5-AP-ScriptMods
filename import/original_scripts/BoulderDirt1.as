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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10700")]
   public dynamic class BoulderDirt1 extends SpellMC
   {
      public function BoulderDirt1()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,24,this.frame25,34,this.frame35);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         setXY();
         move(0,17,null);
      }
      
      internal function frame18() : *
      {
         Skills.user.boulderDirt();
      }
      
      internal function frame25() : *
      {
         Text.speech(Text.boulders[4]);
      }
      
      internal function frame35() : *
      {
         k();
      }
   }
}

