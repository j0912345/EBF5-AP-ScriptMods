package EpicBattleFantasy5_fla
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6027")]
   public dynamic class NPCbackdye_2901 extends MovieClip
   {
      public var colorTransform:ColorTransform;
      
      public function NPCbackdye_2901()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(parent)
         {
            gotoAndStop(parent.parent.hair);
            this.colorTransform = this.transform.colorTransform;
            this.colorTransform.color = NPC.COLORS[parent.parent.dye];
            this.transform.colorTransform = this.colorTransform;
         }
      }
   }
}

