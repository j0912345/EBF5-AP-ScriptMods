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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8578")]
   public dynamic class PoisonGas extends SpellMC
   {
      public function PoisonGas()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,26,this.frame27,59,this.frame60);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.lanceSkills[16]);
      }
      
      internal function frame27() : *
      {
         Skills.poisongas();
      }
      
      internal function frame60() : *
      {
         k();
      }
   }
}

