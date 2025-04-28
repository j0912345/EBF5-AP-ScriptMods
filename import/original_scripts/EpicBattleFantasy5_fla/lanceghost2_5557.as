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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12251")]
   public dynamic class lanceghost2_5557 extends MovieClip
   {
      public function lanceghost2_5557()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         Global.nestedAnimation(this,true);
         try
         {
            if(Boolean(parent) && parent.self is Foe)
            {
               visible = false;
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

