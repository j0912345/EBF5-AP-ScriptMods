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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2281")]
   public dynamic class SlimeHand extends SpellMC
   {
      public function SlimeHand()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,11,this.frame12,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame11() : *
      {
         Skills.user.hand();
      }
      
      internal function frame12() : *
      {
         nextSpell();
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}

