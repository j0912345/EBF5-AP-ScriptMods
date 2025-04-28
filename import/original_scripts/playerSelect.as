package
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
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4186")]
   public dynamic class playerSelect extends MovieClip
   {
      public var icon1:playerIcons;
      
      public var icon2:playerIcons;
      
      public var icon3:playerIcons;
      
      public var icon4:playerIcons;
      
      public var icon5:playerIcons;
      
      public var p1:SimpleButton;
      
      public var p2:SimpleButton;
      
      public var p3:SimpleButton;
      
      public var p4:SimpleButton;
      
      public var p5:SimpleButton;
      
      public function playerSelect()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function init() : *
      {
         for each(o in [this.icon1,this.icon2,this.icon3,this.icon4,this.icon5,this.p1,this.p2,this.p3,this.p4,this.p5])
         {
            o.visible = true;
            o.alpha = 1;
         }
         Global.translate(this.icon1.tx1,"",33,SetStrings.getPlayerName(0));
         if(!Players.player1.inParty())
         {
            this.icon1.alpha = 0.3;
            this.icon1.gotoAndStop(11);
            this.p1.visible = false;
         }
         if(!Players.player2.inParty())
         {
            this.icon2.alpha = 0.3;
            this.icon2.gotoAndStop(11);
            this.p2.visible = false;
         }
         else
         {
            this.icon2.gotoAndStop(2);
         }
         if(!Players.player3.inParty())
         {
            this.icon3.alpha = 0.3;
            this.icon3.gotoAndStop(11);
            this.p3.visible = false;
         }
         if(!Players.player4.inParty())
         {
            this.icon4.alpha = 0.3;
            this.icon4.gotoAndStop(11);
            this.p4.visible = false;
         }
         if(!Players.player5.inParty())
         {
            this.icon5.alpha = 0.3;
            this.icon5.gotoAndStop(11);
            this.p5.visible = false;
         }
      }
      
      internal function frame1() : *
      {
         stop();
         this.icon1.gotoAndStop(1);
         this.icon2.gotoAndStop(2);
         this.icon3.gotoAndStop(3);
         this.icon4.gotoAndStop(4);
         this.icon5.gotoAndStop(5);
         this.p1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectPlayer(1);
         });
         this.p2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectPlayer(2);
         });
         this.p3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectPlayer(3);
         });
         this.p4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectPlayer(4);
         });
         this.p5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectPlayer(5);
         });
         this.init();
      }
   }
}

