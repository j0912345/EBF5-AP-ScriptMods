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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4671")]
   public dynamic class forgeSelect extends MovieClip
   {
      public var b1:SimpleButton;
      
      public var b10:SimpleButton;
      
      public var b11:SimpleButton;
      
      public var b12:SimpleButton;
      
      public var b2:SimpleButton;
      
      public var b3:SimpleButton;
      
      public var b4:SimpleButton;
      
      public var b5:SimpleButton;
      
      public var b6:SimpleButton;
      
      public var b7:SimpleButton;
      
      public var b8:SimpleButton;
      
      public var b9:SimpleButton;
      
      public var pi1:MovieClip;
      
      public var pi2:MovieClip;
      
      public var pi3:MovieClip;
      
      public var pi4:MovieClip;
      
      public var pi5:MovieClip;
      
      public var t1:TextField;
      
      public var t10:TextField;
      
      public var t11:TextField;
      
      public var t12:TextField;
      
      public var t2:TextField;
      
      public var t3:TextField;
      
      public var t4:TextField;
      
      public var t5:TextField;
      
      public var t6:TextField;
      
      public var t7:TextField;
      
      public var t8:TextField;
      
      public var t9:TextField;
      
      public var f:int;
      
      public function forgeSelect()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.b1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(1);
         });
         this.b2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(2);
         });
         this.b3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(3);
         });
         this.b4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(4);
         });
         this.b5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(5);
         });
         this.b6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(6);
         });
         this.b7.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(7);
         });
         this.b8.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(8);
         });
         this.b9.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(9);
         });
         this.b10.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(10);
         });
         this.b11.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(11);
         });
         this.b12.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectForge(12);
         });
         if(!Players.player1.inParty())
         {
            this.pi1.visible = false;
         }
         if(!Players.player2.inParty())
         {
            this.pi2.visible = false;
         }
         if(!Players.player3.inParty())
         {
            this.pi3.visible = false;
         }
         if(!Players.player4.inParty())
         {
            this.pi4.visible = false;
         }
         if(!Players.player5.inParty())
         {
            this.pi5.visible = false;
         }
         stop();
         this.f = 1;
         while(this.f <= 11)
         {
            Global.translate(this["t" + this.f],"forge" + this.f,25);
            ++this.f;
         }
         Global.translate(this["t12"],"forge22",25);
      }
   }
}

