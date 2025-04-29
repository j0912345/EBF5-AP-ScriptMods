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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11693")]
   public dynamic class nSymbol56_5382 extends MovieClip
   {
      public function nSymbol56_5382()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,10,this.frame11,11,this.frame12,18,this.frame19,19,this.frame20,20,this.frame21,21,this.frame22,27,this.frame28,28,this.frame29);
      }
      
      internal function frame1() : *
      {
         if(Boolean(parent) && Boolean(parent.zombieMode))
         {
            visible = false;
            stop();
         }
         else if(parent.playerNo == 2)
         {
            gotoAndStop(Math.floor(Math.random() * 16) + 2);
         }
         else
         {
            gotoAndStop(Math.floor(Math.random() * 14) + 19);
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
      
      internal function frame5() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame6() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame7() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame11() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame12() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame19() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame20() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame21() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame22() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame28() : *
      {
         parent.openMouth = true;
      }
      
      internal function frame29() : *
      {
         parent.openMouth = true;
      }
   }
}

