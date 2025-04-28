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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10183")]
   public dynamic class Spark extends SpellMC
   {
      public function Spark()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,8,this.frame9,16,this.frame17,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame9() : *
      {
         nextSpell();
      }
      
      internal function frame17() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.spark();
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}

