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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7768")]
   public dynamic class unfreezeeffectcopy_6682 extends MovieClip
   {
      public function unfreezeeffectcopy_6682()
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
         SFX.playSound("pixFreeze");
      }
      
      internal function frame21() : *
      {
         stop();
      }
   }
}

