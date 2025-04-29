package
{
   import fl.transitions.easing.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10512")]
   public dynamic class GemThrow extends SpellMC
   {
      public var gem:int;
      
      public function GemThrow()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,20,this.frame21,32,this.frame33,38,this.frame39);
      }
      
      internal function frame1() : *
      {
         skipPositioning = true;
         this.gem = Math.random() * 7 + 1;
         init(Target.ONE_ENEMY,3);
         if(isSummon)
         {
            this.x = 360 - Math.random() * 40;
            this.y = 240 - Math.random() * 25;
         }
      }
      
      internal function frame2() : *
      {
         setXY();
         move(0,30,Regular.easeOut);
      }
      
      internal function frame21() : *
      {
         Battle.selectedTarget = selectedTarget;
      }
      
      internal function frame33() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.ArcadeTreagure.effect2(this.gem);
         }
         else
         {
            Skills.user.gem(this.gem);
         }
      }
      
      internal function frame39() : *
      {
         k();
      }
   }
}

