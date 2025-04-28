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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11067")]
   public dynamic class saiyanauranolegs_5870 extends MovieClip
   {
      public function saiyanauranolegs_5870()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(!parent.zombieMode)
            {
               stop();
               visible = false;
            }
         }
         catch(e:Error)
         {
         }
         mouseEnabled = false;
         mouseChildren = false;
      }
   }
}

