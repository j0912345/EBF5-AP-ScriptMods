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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6939")]
   public dynamic class shaker_3496 extends MovieClip
   {
      public function shaker_3496()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10,10,this.frame11);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         parent.y = MapText.boxY + 10;
      }
      
      internal function frame3() : *
      {
         parent.y = MapText.boxY - 10;
      }
      
      internal function frame4() : *
      {
         parent.y = MapText.boxY + 7;
      }
      
      internal function frame5() : *
      {
         parent.y = MapText.boxY - 7;
      }
      
      internal function frame6() : *
      {
         parent.y = MapText.boxY + 5;
      }
      
      internal function frame7() : *
      {
         parent.y = MapText.boxY - 5;
      }
      
      internal function frame8() : *
      {
         parent.y = MapText.boxY + 3;
      }
      
      internal function frame9() : *
      {
         parent.y = MapText.boxY - 2;
      }
      
      internal function frame10() : *
      {
         parent.y = MapText.boxY + 1;
      }
      
      internal function frame11() : *
      {
         gotoAndStop(1);
         parent.y = MapText.boxY;
      }
   }
}

