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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4261")]
   public dynamic class Cheatschallengesmenu extends MovieClip
   {
      public var c1:MovieClip;
      
      public var c10:MovieClip;
      
      public var c11:MovieClip;
      
      public var c12:MovieClip;
      
      public var c13:MovieClip;
      
      public var c14:MovieClip;
      
      public var c15:MovieClip;
      
      public var c2:MovieClip;
      
      public var c3:MovieClip;
      
      public var c4:MovieClip;
      
      public var c5:MovieClip;
      
      public var c6:MovieClip;
      
      public var c7:MovieClip;
      
      public var c8:MovieClip;
      
      public var c9:MovieClip;
      
      public var h1:MovieClip;
      
      public var h10:MovieClip;
      
      public var h11:MovieClip;
      
      public var h12:MovieClip;
      
      public var h13:MovieClip;
      
      public var h14:MovieClip;
      
      public var h15:MovieClip;
      
      public var h2:MovieClip;
      
      public var h3:MovieClip;
      
      public var h4:MovieClip;
      
      public var h5:MovieClip;
      
      public var h6:MovieClip;
      
      public var h7:MovieClip;
      
      public var h8:MovieClip;
      
      public var h9:MovieClip;
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public var i:int;
      
      public function Cheatschallengesmenu()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         MapMenu.cheatSource = this;
         MapMenu.cheatsUpdate();
         Global.translate(this.txt1,"cheatsMenu",25);
         Global.translate(this.txt2,"collect7",10);
         Global.translate(this.txt3,"collect8",10);
         stop();
         this.i = 1;
         while(this.i <= 15)
         {
            Global.translate(this["c" + this.i].txt,"cheat" + this.i,5,"",false,"",false,true);
            this["c" + this.i].info.tip = {"text":SetStrings.getString("menus","cheat" + this.i + "D")};
            Global.translate(this["h" + this.i].txt,"challenge" + this.i,5,"",false,"",false,true);
            this["h" + this.i].info.tip = {"text":SetStrings.getString("menus","challenge" + this.i + "D")};
            ++this.i;
         }
         if(!Flags.SUPER_CHEATS.quantity || !Flags.MAX_MEDALS.quantity)
         {
            this["c9"].visible = false;
            this["c13"].visible = false;
            this["c14"].visible = false;
            this["c15"].visible = false;
            Options.stunnedFoes = false;
            Options.catSimulator = false;
            Options.oneHP = false;
            Options.sillyNPCs = false;
         }
         this["c1"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c1");
         });
         this["c2"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c2");
         });
         this["c3"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c3");
         });
         this["c4"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c4");
         });
         this["c5"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c5");
         });
         this["c6"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c6");
         });
         this["c7"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c7");
         });
         this["c8"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c8");
         });
         this["c9"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c9");
         });
         this["c10"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c10");
         });
         this["c11"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c11");
         });
         this["c12"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c12");
         });
         this["c13"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c13");
         });
         this["c14"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c14");
         });
         this["c15"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("c15");
         });
         this["h1"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h1");
         });
         this["h2"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h2");
         });
         this["h3"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h3");
         });
         this["h4"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h4");
         });
         this["h5"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h5");
         });
         this["h6"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h6");
         });
         this["h7"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h7");
         });
         this["h8"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h8");
         });
         this["h9"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h9");
         });
         this["h10"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h10");
         });
         this["h11"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h11");
         });
         this["h12"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h12");
         });
         this["h13"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h13");
         });
         this["h14"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h14");
         });
         this["h15"].butt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.cheatClick("h15");
         });
      }
   }
}

