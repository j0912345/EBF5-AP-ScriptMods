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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10731")]
   public dynamic class BlueScreen extends SpellMC
   {
      public function BlueScreen()
      {
         super();
         addFrameScript(0,this.frame1,276,this.frame277,362,this.frame363,364,this.frame365,368,this.frame369);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
         Battle.menu.visible = false;
      }
      
      internal function frame277() : *
      {
         Medals.unlock(Medals.reformat);
         Flags.GLITCH_DEFEATED.quantity = 1;
         Battle.bossDefeated();
      }
      
      internal function frame363() : *
      {
         Battle.menu.visible = true;
      }
      
      internal function frame365() : *
      {
         Text.speech(Text.glitch[9]);
      }
      
      internal function frame369() : *
      {
         k();
      }
   }
}

