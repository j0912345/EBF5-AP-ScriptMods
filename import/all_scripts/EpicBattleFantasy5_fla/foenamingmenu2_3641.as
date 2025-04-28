package EpicBattleFantasy5_fla
{
   import fl.transitions.*;
   import fl.transitions.easing.*;
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
   import text.english.foes;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4636")]
   public dynamic class foenamingmenu2_3641 extends MovieClip
   {
      public var cancel:SimpleButton;
      
      public var confirm:SimpleButton;
      
      public var inputBox:TextField;
      
      public var tf1:TextField;
      
      public var tf2:TextField;
      
      public var window:MovieClip;
      
      public var tween:Tween;
      
      public var foeIcon:MovieClip;
      
      public var currentFoe:String;
      
      public function foenamingmenu2_3641()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function init(param1:String, param2:String) : *
      {
         stage.focus = this.inputBox;
         this.inputBox.maxChars = 18;
         this.currentFoe = param1;
         parent.blocker.visible = true;
         this.inputBox.text = foes[this.currentFoe.toLowerCase()].name;
         this.inputBox.restrict = "A-Za-z0-9.!?£$-+ ";
         visible = true;
         this.y = -444;
         this.tween = new Tween(this,"y",Regular.easeOut,this.y,-111,10);
         this.cancel.addEventListener(MouseEvent.CLICK,this.button1);
         this.confirm.addEventListener(MouseEvent.CLICK,this.button2);
      }
      
      public function button1(param1:Event) : *
      {
         this.close();
      }
      
      public function button2(param1:Event) : *
      {
         if(this.inputBox.text == foes[this.currentFoe.toLowerCase()].name)
         {
            Summons.info[this.currentFoe]["nickname"] = "";
         }
         else if(this.inputBox.text != "")
         {
            if(!Summons.info[this.currentFoe])
            {
               Summons.info[this.currentFoe] = {
                  "nickname":"",
                  "skin":1
               };
            }
            Summons.info[this.currentFoe]["nickname"] = this.inputBox.text;
         }
         this.close();
      }
      
      public function close() : *
      {
         this.cancel.removeEventListener(MouseEvent.CLICK,this.button1);
         this.confirm.removeEventListener(MouseEvent.CLICK,this.button2);
         parent.blocker.visible = false;
         visible = false;
      }
      
      internal function frame1() : *
      {
         Global.translate(this.tf1,"confirm");
         Global.translate(this.tf2,"cancel");
         this.inputBox.text = "Chocolate Slime";
         this.inputBox.maxChars = 18;
         visible = false;
      }
   }
}

