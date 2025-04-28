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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol352")]
   public dynamic class minigameoverlay_1 extends MovieClip
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
      
      public var bt:SimpleButton;
      
      public var errorBox:TextField;
      
      public var loader:MovieClip;
      
      public var win1:MovieClip;
      
      public var loadingComplete:Boolean;
      
      public var loaded:Number;
      
      public function minigameoverlay_1()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function startGame() : *
      {
         Main.startGame();
         GUI.prepareTextFormat();
         Main.messageTest = false;
         parent.play();
      }
      
      public function playButtonClickHandler(param1:Event = null) : void
      {
         this.startGame();
      }
      
      public function enterFrameHandler(param1:Event = null) : *
      {
         if(!this.loadingComplete)
         {
            if(loaderInfo)
            {
               if(Debug.SteamVersion)
               {
                  this.loaded = 1;
               }
               else
               {
                  this.loaded = loaderInfo.bytesLoaded / loaderInfo.bytesTotal;
               }
            }
            if(this.loader.bar)
            {
               this.loader.bar.scaleY = this.loaded;
               this.loader.percent.text = "" + Math.floor(this.loaded * 100) + "%";
            }
            if(this.loaded >= 1 && this.loader.currentFrame == 1)
            {
               this.loader.gotoAndPlay(3);
            }
            if(Boolean(this.loader.playButton) && !this.loader.playButton.hasEventListener(MouseEvent.CLICK))
            {
               this.loadingComplete = true;
               this.loader.stop();
               this.loader.playButton.addEventListener(MouseEvent.CLICK,this.playButtonClickHandler,false,0,true);
            }
         }
      }
      
      internal function frame1() : *
      {
         stop();
         this.loadingComplete = false;
         this.loaded = 0;
         if(!Options.applicationFeatures)
         {
            addEventListener(Event.ENTER_FRAME,this.enterFrameHandler,false,0,true);
         }
         else
         {
            nextFrame();
         }
      }
      
      internal function frame2() : *
      {
         this.b1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.ENGLISH;
            startGame();
         });
         this.b2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.SPANISH;
            startGame();
         });
         this.b3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.PORTUGUESE;
            startGame();
         });
         this.b4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.FRENCH;
            startGame();
         });
         this.b5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.GERMAN;
            startGame();
         });
         this.b6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.POLISH;
            startGame();
         });
         this.b7.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.RUSSIAN;
            startGame();
         });
         this.b8.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.CHIN_SIMP;
            startGame();
         });
         this.b9.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.CHIN_TRAD;
            startGame();
         });
         this.b10.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.VIETNAMESE;
            startGame();
         });
         this.b11.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.KOREAN;
            startGame();
         });
         this.b12.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.language = Options.JAPANESE;
            startGame();
         });
         this.bt.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.testSaving();
         });
         this.errorBox.mouseEnabled = false;
         SaveMenu.loadMeowOptions();
      }
   }
}

