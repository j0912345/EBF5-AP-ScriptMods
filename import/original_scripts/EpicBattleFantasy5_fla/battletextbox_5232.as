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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13008")]
   public dynamic class battletextbox_5232 extends MovieClip
   {
      public var body:TextField;
      
      public var cancel:SimpleButton;
      
      public var fader:MovieClip;
      
      public var texter:MovieClip;
      
      public var busy:Boolean;
      
      public var emo:MovieClip;
      
      public function battletextbox_5232()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10,10,this.frame11,11,this.frame12,12,this.frame13,13,this.frame14,24,this.frame25,25,this.frame26,26,this.frame27,37,this.frame38,38,this.frame39,39,this.frame40,60,this.frame61,61,this.frame62,62,this.frame63,63,this.frame64,117,this.frame118,118,this.frame119,119,this.frame120,121,this.frame122,122,this.frame123,123,this.frame124,124,this.frame125,125,this.frame126,126,this.frame127,127,this.frame128,128,this.frame129,129,this.frame130,130,this.frame131,131,this.frame132,132,this.frame133,133,this.frame134,134,this.frame135,135,this.frame136,139,this.frame140,140,this.frame141,141,this.frame142,142,this.frame143,143,this.frame144,144,this.frame145,145,this.frame146,146,this.frame147,147,this.frame148,148,this.frame149,149,this.frame150,150,this.frame151,151,this.frame152,152,this.frame153,153,this.frame154,157,this.frame158,158,this.frame159,163,this.frame164);
      }
      
      public function nextText(param1:Event = null) : *
      {
         if(this.texter.done)
         {
            stop();
            this.busy = false;
            this.emo.gotoAndStop("blank");
            this.body.text = false;
            gotoAndStop(2);
            Text.style = null;
            visible = false;
            Battle.stage.checkBusy();
         }
         else
         {
            this.texter.skip();
         }
      }
      
      public function resizeAll() : *
      {
         if(Options.isCJ())
         {
            this.body.y = -46;
            this.resize(this.body,18);
         }
         else
         {
            this.body.y = -43;
            this.resize(this.body,14);
         }
      }
      
      public function resize(param1:TextField, param2:Number) : *
      {
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.size = param2;
         param1.setTextFormat(_loc3_);
      }
      
      internal function frame1() : *
      {
         this.busy = false;
         this.visible = false;
         this.cancel.addEventListener(MouseEvent.CLICK,this.nextText);
         this.emo = new Emoticon();
         addChild(this.emo);
         this.emo.x += -54;
         this.emo.y -= 65;
         this.emo.scaleX = 1.2;
         this.emo.scaleY = 1.2;
         this.emo.gotoAndStop("blank");
         stop();
         GUI.setFilters(this.body);
      }
      
      internal function frame2() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame3() : *
      {
         stop();
      }
      
      internal function frame4() : *
      {
         stop();
         if(Options.language != Options.ENGLISH)
         {
            gotoAndStop("shake2");
         }
         GUI.setFilters(this.body);
      }
      
      internal function frame5() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame6() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame7() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame8() : *
      {
         gotoAndPlay("shake");
      }
      
      internal function frame9() : *
      {
         stop();
         if(Options.language != Options.ENGLISH)
         {
            gotoAndStop("shake2");
         }
         GUI.setFilters(this.body);
      }
      
      internal function frame10() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame11() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame12() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame13() : *
      {
         gotoAndPlay("cyclops");
      }
      
      internal function frame14() : *
      {
         if(Options.language != Options.ENGLISH)
         {
            gotoAndStop("shake2");
         }
         GUI.setFilters(this.body);
      }
      
      internal function frame25() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame26() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame27() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame38() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame39() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame40() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame61() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame62() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame63() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame64() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame118() : *
      {
         gotoAndPlay("glitch");
      }
      
      internal function frame119() : *
      {
         if(Options.language != Options.ENGLISH)
         {
            gotoAndStop("shake2");
         }
         GUI.setFilters(this.body);
      }
      
      internal function frame120() : *
      {
         stop();
      }
      
      internal function frame122() : *
      {
         stop();
         if(Options.language != Options.ENGLISH)
         {
            gotoAndStop("shake2");
         }
         GUI.setFilters(this.body);
      }
      
      internal function frame123() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame124() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame125() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame126() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame127() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame128() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame129() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame130() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame131() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame132() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame133() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame134() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame135() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame136() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame140() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame141() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame142() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame143() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame144() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame145() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame146() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame147() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame148() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame149() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame150() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame151() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame152() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame153() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame154() : *
      {
         GUI.setFilters(this.body);
      }
      
      internal function frame158() : *
      {
         gotoAndPlay("wave");
         GUI.setFilters(this.body);
      }
      
      internal function frame159() : *
      {
         if(Options.language != Options.ENGLISH)
         {
            gotoAndStop("shake2");
         }
         GUI.setFilters(this.body);
      }
      
      internal function frame164() : *
      {
         stop();
         GUI.setFilters(this.body);
      }
   }
}

