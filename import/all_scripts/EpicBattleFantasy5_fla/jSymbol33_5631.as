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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11907")]
   public dynamic class jSymbol33_5631 extends MovieClip
   {
      public function jSymbol33_5631()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,7,this.frame8,9,this.frame10);
      }
      
      internal function frame1() : *
      {
         if(parent.zombieMode)
         {
            this.visible = false;
            stop();
         }
         else
         {
            gotoAndStop(Math.floor(Math.random() * 10) + 2);
         }
      }
      
      internal function frame2() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame3() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame4() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame8() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame10() : *
      {
         parent.openMouth = true;
      }
   }
}

