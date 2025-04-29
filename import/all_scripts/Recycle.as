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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10301")]
   public dynamic class Recycle extends SpellMC
   {
      public function Recycle()
      {
         super();
         addFrameScript(0,this.frame1,11,this.frame12,16,this.frame17,33,this.frame34,48,this.frame49);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame12() : *
      {
         nextSpell(isSummon);
      }
      
      internal function frame17() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.recycle();
      }
      
      internal function frame34() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.flybots[4]);
         }
      }
      
      internal function frame49() : *
      {
         k();
      }
   }
}

