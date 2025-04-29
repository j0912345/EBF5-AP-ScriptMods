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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6937")]
   public dynamic class textdisplayer2_3495 extends MovieClip
   {
      public var count:int;
      
      public var done:Boolean;
      
      public var fullText:String;
      
      public function textdisplayer2_3495()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function setTextColor(param1:TextField, param2:int = -1) : *
      {
         var _loc3_:TextFormat = new TextFormat();
         if(param2 != -1)
         {
            _loc3_.color = param2;
         }
         else
         {
            _loc3_.color = 16777215;
         }
         _loc3_.bold = true;
         _loc3_.italic = true;
         _loc3_.font = GUI.textFont;
         param1.setTextFormat(_loc3_);
      }
      
      public function skip() : *
      {
         this.done = true;
         this.count = this.fullText.length;
         this.setTextColor(parent.box,GUI.textColor);
         Global.translate(parent.box,"",0,this.fullText);
         if(Options.isCJ())
         {
            parent.resizeAll();
         }
      }
      
      public function reset() : *
      {
         this.done = false;
         this.fullText = null;
         this.count = 0;
         try
         {
            Global.translate(parent.box,"",0,"");
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame1() : *
      {
         visible = false;
         if(Boolean(this.fullText) && Boolean(parent))
         {
            if(this.done)
            {
               return;
            }
            this.count += 1;
            if(Options.fastText)
            {
               this.count = this.fullText.length + 1;
            }
            if(this.count > this.fullText.length)
            {
               this.done = true;
            }
            parent.box.text = this.fullText.substr(0,this.count);
            this.setTextColor(parent.box,GUI.textColor);
            Global.translate(parent.box,"",0,this.fullText.substr(0,this.count));
            if(Options.isCJ())
            {
               parent.resizeAll();
            }
         }
      }
      
      internal function frame2() : *
      {
         gotoAndPlay(1);
      }
   }
}

