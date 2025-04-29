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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12492")]
   public dynamic class Symbol443_5411 extends MovieClip
   {
      public function Symbol443_5411()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,9,this.frame10);
      }
      
      internal function frame1() : *
      {
         visible = false;
         if(Boolean(parent) && Boolean(parent.zombieMode))
         {
            gotoAndStop(10);
         }
         else
         {
            gotoAndStop(2 + Math.floor(Math.random() * 3));
         }
      }
      
      internal function frame2() : *
      {
         SFX.playSound("flute1");
      }
      
      internal function frame3() : *
      {
         SFX.playSound("flute2");
      }
      
      internal function frame4() : *
      {
         SFX.playSound("flute3");
      }
      
      internal function frame10() : *
      {
         SFX.playSound("flute4");
      }
   }
}

