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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10680")]
   public dynamic class BubbleBlast extends SpellMC
   {
      public function BubbleBlast()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,39,this.frame40);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame6() : *
      {
         if(isSummon)
         {
            Summons.BitWater.effect2();
         }
         else
         {
            Skills.bubbleblast();
         }
      }
      
      internal function frame40() : *
      {
         k();
      }
   }
}

