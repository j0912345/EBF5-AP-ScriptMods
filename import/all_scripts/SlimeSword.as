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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10202")]
   public dynamic class SlimeSword extends SpellMC
   {
      public function SlimeSword()
      {
         super();
         addFrameScript(0,this.frame1,15,this.frame16,35,this.frame36,51,this.frame52);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame16() : *
      {
         nextSpell();
      }
      
      internal function frame36() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.darksword();
      }
      
      internal function frame52() : *
      {
         k();
      }
   }
}

