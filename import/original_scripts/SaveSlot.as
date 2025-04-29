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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4126")]
   public dynamic class SaveSlot extends MovieClip
   {
      public var area:MovieClip;
      
      public var b:SimpleButton;
      
      public var d:SimpleButton;
      
      public var levels:TextField;
      
      public var ngp:TextField;
      
      public var tick1:MovieClip;
      
      public var tick2:MovieClip;
      
      public var tick3:MovieClip;
      
      public var tick4:MovieClip;
      
      public var tick5:MovieClip;
      
      public var tick6:MovieClip;
      
      public var time:TextField;
      
      public var title:TextField;
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public var txt4:TextField;
      
      public var ID:int;
      
      public function SaveSlot()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         Global.translate(this.txt1,"save9",20);
         Global.translate(this.txt2,"save10",20);
         Global.translate(this.txt3,"save7",20);
         Global.translate(this.ngp,"newgameplus",20);
         if(this.ID == 8)
         {
            this.txt3.text = "";
            this.d.visible = false;
         }
         this.b.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            (parent as SaveMenu).selectFile(ID,true);
         });
         this.d.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            (parent as SaveMenu).selectDelete(ID);
         });
      }
      
      internal function frame2() : *
      {
         Global.translate(this.txt4,"save8",30);
         GUI.setTextColorDark(this.title);
         GUI.setTextColor(this.txt4);
         this.b.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            (parent as SaveMenu).selectFile(ID,false);
         });
      }
   }
}

