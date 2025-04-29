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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10696")]
   public dynamic class BoulderMagic extends SpellMC
   {
      public function BoulderMagic()
      {
         super();
         addFrameScript(0,this.frame1,16,this.frame17,30,this.frame31,43,this.frame44,59,this.frame60);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         setXY();
         move(0,15,null);
      }
      
      internal function frame17() : *
      {
         makeMagic(EffectPurple,0,0);
         f2();
         parent.getRandomPlayer();
         setXY();
         move(0,12,null);
      }
      
      internal function frame31() : *
      {
         makeMagic(EffectPurple,0,0);
         f2();
         parent.getRandomPlayer();
         setXY();
         move(0,11,null);
      }
      
      internal function frame44() : *
      {
         makeMagic(EffectPurple,0,0);
         f2();
         X = -150;
         Y = 300;
         move(0,14,null);
      }
      
      internal function frame60() : *
      {
         k();
      }
   }
}

