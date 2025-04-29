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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10718")]
   public dynamic class BoneStar extends SpellMC
   {
      public function BoneStar()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,33,this.frame34,74,this.frame75);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         if(!Options.mature)
         {
            this.scaleY *= -1;
         }
      }
      
      internal function frame34() : *
      {
         if(isSummon)
         {
            Summons.WraithMaster.effect2();
         }
         else
         {
            Skills.bonestar();
         }
      }
      
      internal function frame75() : *
      {
         k();
      }
   }
}

