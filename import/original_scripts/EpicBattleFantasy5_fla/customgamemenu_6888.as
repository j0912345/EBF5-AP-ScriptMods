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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2944")]
   public dynamic class customgamemenu_6888 extends MovieClip
   {
      public var b1:SimpleButton;
      
      public var b2:SimpleButton;
      
      public var b3:SimpleButton;
      
      public var b4:SimpleButton;
      
      public var b5:SimpleButton;
      
      public var b6:SimpleButton;
      
      public var b7:SimpleButton;
      
      public var b8:SimpleButton;
      
      public var dt1:TextField;
      
      public var dt2:TextField;
      
      public var dt3:TextField;
      
      public var dt4:TextField;
      
      public var dt5:TextField;
      
      public var dt6:TextField;
      
      public var ot1:TextField;
      
      public var ot2:TextField;
      
      public var ot3:TextField;
      
      public var ot4:TextField;
      
      public var ot5:TextField;
      
      public var ot6:TextField;
      
      public var ot7:TextField;
      
      public var ot8:TextField;
      
      public var tick1:MovieClip;
      
      public var tick2:MovieClip;
      
      public var tick3:MovieClip;
      
      public var tick4:MovieClip;
      
      public var tick5:MovieClip;
      
      public var tick6:MovieClip;
      
      public var tick7:MovieClip;
      
      public var tick8:MovieClip;
      
      public var tx0:TextField;
      
      public var tx1:TextField;
      
      public var i:int;
      
      public function customgamemenu_6888()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         Global.translate(this.tx0,"customA");
         Global.translate(this.tx1,"customB");
         this.i = 1;
         while(this.i <= 8)
         {
            Global.translate(this["ot" + this.i],"custom" + this.i);
            ++this.i;
         }
         this.i = 1;
         while(this.i <= 6)
         {
            Global.translate(this["dt" + this.i],"custom" + this.i + "D");
            ++this.i;
         }
         this.b1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.customClick(1);
         });
         this.b2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.customClick(2);
         });
         this.b3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.customClick(3);
         });
         this.b4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.customClick(4);
         });
         this.b5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.customClick(5);
         });
         this.b6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.customClick(6);
         });
         this.b7.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.customClick(7);
         });
         this.b8.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.customClick(8);
         });
         MapMenu.updateCustomMenu(this);
         this.tick6.box.gotoAndStop(2);
         this.tick7.box.gotoAndStop(2);
         this.tick8.box.gotoAndStop(2);
      }
   }
}

