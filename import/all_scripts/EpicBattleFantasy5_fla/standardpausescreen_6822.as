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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4592")]
   public dynamic class standardpausescreen_6822 extends MovieClip
   {
      public var card1:MovieClip;
      
      public var card2:MovieClip;
      
      public var card3:MovieClip;
      
      public var card4:MovieClip;
      
      public var card5:MovieClip;
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public function standardpausescreen_6822()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         Global.translate(this.txt1,"party1",10);
         Global.translate(this.txt2,"party2",10);
         Global.translate(this.txt3,"party3",20);
         GUI.setTextColor(this.txt3);
      }
   }
}

