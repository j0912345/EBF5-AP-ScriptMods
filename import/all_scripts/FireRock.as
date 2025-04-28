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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10546")]
   public dynamic class FireRock extends SpellMC
   {
      public function FireRock()
      {
         super();
         addFrameScript(0,this.frame1,31,this.frame32,51,this.frame52);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,4);
      }
      
      internal function frame32() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.SlimeLava.effect2();
         }
         else
         {
            Skills.firerock();
         }
         randomizeRotation();
      }
      
      internal function frame52() : *
      {
         k();
      }
   }
}

