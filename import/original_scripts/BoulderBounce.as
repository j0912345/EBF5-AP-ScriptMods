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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10709")]
   public dynamic class BoulderBounce extends SpellMC
   {
      public function BoulderBounce()
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
         if(skin == 1)
         {
            makeMagic(EffectWater,0,0);
         }
         if(skin == 3)
         {
            makeMagic(EffectPurple,0,0);
         }
         if(skin == 4)
         {
            makeMagic(EffectFire,0,0);
         }
         Battle.finalHit = false;
         Skills.user.boulderBounce();
         setXY();
         move(0,12,null);
      }
      
      internal function frame31() : *
      {
         if(skin == 1)
         {
            makeMagic(EffectWater,0,0);
         }
         if(skin == 3)
         {
            makeMagic(EffectPurple,0,0);
         }
         if(skin == 4)
         {
            makeMagic(EffectFire,0,0);
         }
         Battle.finalHit = false;
         Skills.user.boulderBounce();
         setXY();
         move(0,12,null);
      }
      
      internal function frame44() : *
      {
         if(skin == 1)
         {
            makeMagic(EffectWater,0,0);
         }
         if(skin == 3)
         {
            makeMagic(EffectPurple,0,0);
         }
         if(skin == 4)
         {
            makeMagic(EffectFire,0,0);
         }
         Skills.user.boulderBounce();
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

