package com.newgrounds.components
{
   import com.newgrounds.API;
   import com.newgrounds.APIEvent;
   import com.newgrounds.Logger;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class FlashAdBase extends MovieClip
   {
      private var _showBorder:Boolean = true;
      
      public var showPlayButton:Boolean;
      
      private var _fullScreen:Boolean;
      
      public var adType:String;
      
      public var VIDEO_ADS:String = "Video";
      
      public var SIMPLE_ADS:String = "Simple";
      
      private var _adFeedLoader:URLLoader;
      
      private var _ad:Loader;
      
      public function FlashAdBase()
      {
         this.adType = this.VIDEO_ADS;
         super();
         try
         {
            Security.allowDomain("server.cpmstar.com");
            Security.allowInsecureDomain("server.cpmstar.com");
         }
         catch(error:*)
         {
         }
         x = int(x);
         y = int(y);
         stop();
         if(this["newgroundsButton"])
         {
            this["newgroundsButton"].addEventListener(MouseEvent.CLICK,this.onNGClick);
         }
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         addEventListener(Event.ENTER_FRAME,this.init);
      }
      
      public function get _adContainer() : Sprite
      {
         return this["adContainer"];
      }
      
      public function get _newgroundsButton() : DisplayObject
      {
         return this["newgroundsButton"];
      }
      
      public function get fullScreen() : Boolean
      {
         return this._fullScreen;
      }
      
      public function set fullScreen(param1:Boolean) : void
      {
         this._fullScreen = param1;
         if(param1)
         {
            if(stage)
            {
               this.drawFullScreenRect();
            }
            else
            {
               addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            }
         }
         else
         {
            graphics.clear();
         }
      }
      
      public function get showBorder() : Boolean
      {
         return this._showBorder;
      }
      
      public function set showBorder(param1:Boolean) : void
      {
         this._showBorder = param1;
         if(this._showBorder)
         {
            if(this._ad)
            {
               if(this._ad.content)
               {
                  if(this.showPlayButton)
                  {
                     gotoAndStop("loadedPlay");
                  }
                  else
                  {
                     gotoAndStop("loaded");
                  }
               }
               else
               {
                  gotoAndStop("loading");
               }
            }
            else
            {
               gotoAndStop("idle");
            }
         }
         else
         {
            gotoAndStop("noBorder");
         }
      }
      
      private function init(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.init);
         if(API.adFeedURL)
         {
            this.loadAdFeed();
         }
         else
         {
            API.addEventListener(APIEvent.API_CONNECTED,this.loadAdFeed);
         }
      }
      
      private function loadAdFeed(param1:APIEvent = null) : void
      {
         var adFeedRequest:URLRequest;
         var event:APIEvent = param1;
         if(!API.adFeedURL)
         {
            return;
         }
         if(this._showBorder)
         {
            gotoAndStop("loading");
         }
         this._adFeedLoader = new URLLoader();
         this._adFeedLoader.addEventListener(Event.COMPLETE,this.onAdFeedLoaded);
         this._adFeedLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onAdError);
         this._adFeedLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onAdError);
         adFeedRequest = new URLRequest(API.adFeedURL);
         try
         {
            this._adFeedLoader.load(adFeedRequest);
         }
         catch(e:Error)
         {
            onAdError();
         }
      }
      
      private function onAdFeedLoaded(param1:Event) : void
      {
         if(this._adFeedLoader && this._adFeedLoader.data && this._adFeedLoader.data != "")
         {
            this.loadAd(this._adFeedLoader.data);
         }
         else
         {
            this.onAdError();
         }
      }
      
      private function loadAd(param1:String) : void
      {
         var adURL:String = param1;
         if(this._ad)
         {
            this.removeAd();
         }
         Logger.logMessage("Loading flash ad...");
         this._ad = new Loader();
         this._ad.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onAdError);
         try
         {
            Object(this._ad.contentLoaderInfo).uncaughtErrorEvents.addEventListener("uncaughtError",function(param1:Event):void
            {
               param1.preventDefault();
            });
         }
         catch(error:Error)
         {
         }
         try
         {
            if(this.adType != this.VIDEO_ADS)
            {
               if(adURL.indexOf("?") >= 0)
               {
                  adURL += "&";
               }
               else
               {
                  adURL += "?";
               }
               adURL += "blockoverlays=1";
            }
            this._ad.load(new URLRequest(adURL),new LoaderContext(false,new ApplicationDomain(null)));
            if(this._adContainer)
            {
               this._adContainer.addChild(this._ad);
            }
            if(this._showBorder)
            {
               if(this.showPlayButton)
               {
                  gotoAndStop("loadedPlay");
               }
               else
               {
                  gotoAndStop("loaded");
               }
            }
         }
         catch(error:Error)
         {
            onAdError();
         }
      }
      
      private function drawFullScreenRect() : void
      {
         if(stage)
         {
            x = (stage.stageWidth - width) / 2;
            y = (stage.stageHeight - height) / 2;
            graphics.beginFill(0);
            graphics.drawRect(-stage.stageWidth,-stage.stageHeight,stage.stageWidth * 2,stage.stageHeight * 2);
            graphics.endFill();
         }
      }
      
      public function removeAd() : void
      {
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         if(this._adFeedLoader)
         {
            try
            {
               this._adFeedLoader.close();
            }
            catch(e:Error)
            {
            }
         }
         if(this._ad)
         {
            try
            {
               this._ad.close();
            }
            catch(e:Error)
            {
            }
            try
            {
               Object(this._ad).unloadAndStop(true);
            }
            catch(e:Error)
            {
               _ad.unload();
            }
            if(this._ad.parent)
            {
               this._ad.parent.removeChild(this._ad);
            }
            this._ad = null;
         }
         Logger.logError("Ad destroyed.");
      }
      
      private function onAdError(param1:Event = null) : void
      {
         Logger.logError("Unable to load ad.");
         this.removeAd();
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         this.removeAd();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         if(this.fullScreen)
         {
            this.drawFullScreenRect();
         }
      }
      
      private function onNGClick(param1:MouseEvent) : void
      {
         API.loadNewgrounds();
      }
   }
}

