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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15550")]
   public dynamic class _unfreezeeffect_4342 extends MovieClip
   {
      public function _unfreezeeffect_4342()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,20,this.frame21);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(!parent.freeze)
            {
               stop();
               visible = false;
            }
            else
            {
               parent.freeze = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame2() : *
      {
         SFX.playSound("unfreeze");
      }
      
      internal function frame21() : *
      {
         stop();
      }
   }
}

