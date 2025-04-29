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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15704")]
   public dynamic class catshielddrop_4294 extends MovieClip
   {
      public function catshielddrop_4294()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         Options.setVolume(this);
         if(parent.shieldUp)
         {
            gotoAndPlay(2);
            parent.self.dropShield();
            parent.shieldUp = false;
         }
         else
         {
            visible = false;
            stop();
         }
      }
      
      internal function frame2() : *
      {
         try
         {
            parent.playSound("264");
         }
         catch(e:Error)
         {
         }
      }
   }
}

