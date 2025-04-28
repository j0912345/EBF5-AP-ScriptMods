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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4210")]
   public dynamic class goalsSelectinfoencyclopedia_6809 extends MovieClip
   {
      public var p0:SimpleButton;
      
      public var p1:SimpleButton;
      
      public var p2:SimpleButton;
      
      public var p3:SimpleButton;
      
      public var p4:SimpleButton;
      
      public var tf1:TextField;
      
      public var tf2:TextField;
      
      public var tf3:TextField;
      
      public var tf4:TextField;
      
      public var tf5:TextField;
      
      public function goalsSelectinfoencyclopedia_6809()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         Global.translate(this.tf1,"collect1",25);
         Global.translate(this.tf2,"collect2",25);
         Global.translate(this.tf3,"collect3",25);
         Global.translate(this.tf4,"collect4",25);
         Global.translate(this.tf5,"collect5",25);
         this.p0.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectItem(5);
         });
         this.p1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectItem(6);
         });
         this.p2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectItem(7);
         });
         this.p3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectItem(8);
         });
         this.p4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.selectItem(9);
         });
      }
   }
}

