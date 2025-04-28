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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12450")]
   public dynamic class annaunfreeze_5378 extends MovieClip
   {
      public function annaunfreeze_5378()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,23,this.frame24);
      }
      
      internal function frame1() : *
      {
         if(parent.freeze)
         {
            gotoAndPlay(2);
         }
         else
         {
            stop();
         }
         stop();
      }
      
      internal function frame2() : *
      {
         parent.self.unfreeze();
         parent.freeze = false;
         Global.playSound("unfreeze");
      }
      
      internal function frame24() : *
      {
         stop();
      }
   }
}

