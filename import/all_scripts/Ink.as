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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10420")]
   public dynamic class Ink extends SpellMC
   {
      public function Ink()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,36,this.frame37);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         if(isSummon)
         {
            Summons.SquidPink.effect2();
         }
         else
         {
            Skills.ink();
         }
      }
      
      internal function frame37() : *
      {
         k();
      }
   }
}

