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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7296")]
   public dynamic class ClassicTornado extends SpellMC
   {
      public function ClassicTornado()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,35,this.frame36);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame18() : *
      {
         if(isSummon)
         {
            Summons.ClassicClayBlue.effect2();
         }
         else
         {
            Skills.user.tornado();
         }
      }
      
      internal function frame36() : *
      {
         k();
      }
   }
}

