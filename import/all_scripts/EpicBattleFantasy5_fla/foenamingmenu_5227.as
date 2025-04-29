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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12937")]
   public dynamic class foenamingmenu_5227 extends MovieClip
   {
      public var cancel:SimpleButton;
      
      public var confirm:SimpleButton;
      
      public var inputBox:TextField;
      
      public var tf1:TextField;
      
      public var tf2:TextField;
      
      public var window:MovieClip;
      
      public var tween:Tween;
      
      public var foeIcon:MovieClip;
      
      public function foenamingmenu_5227()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function init() : *
      {
         this.foeIcon = GUI.createIcon(this,Summons[getQualifiedClassName(Battle.selectedTarget).substring(6)],null);
         addChild(this.foeIcon);
         this.foeIcon.x -= 0;
         this.foeIcon.y -= 5;
         this.foeIcon.scaleX *= 1.2;
         this.foeIcon.scaleY *= 1.2;
         this.inputBox.text = Battle.selectedTarget.fname;
         this.inputBox.restrict = "A-Za-z0-9.!?£$-+ ";
         visible = true;
         this.y = -200;
         this.tween = new Tween(this,"y",Regular.easeOut,this.y,200,10);
      }
      
      public function close() : *
      {
         visible = false;
         Battle.selectedTarget.graphic.busy = false;
         Battle.stage.checkBusy();
         removeChild(this.foeIcon);
         this.foeIcon = null;
      }
      
      internal function frame1() : *
      {
         Global.translate(this.tf1,"confirm");
         Global.translate(this.tf2,"cancel");
         this.inputBox.text = "Chocolate Slime";
         stage.focus = this.inputBox;
         this.inputBox.maxChars = 18;
         visible = false;
         this.cancel.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            close();
         });
         this.confirm.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            if(inputBox.text != "")
            {
               Catching.setFoeName(inputBox.text);
            }
            close();
         });
      }
   }
}

