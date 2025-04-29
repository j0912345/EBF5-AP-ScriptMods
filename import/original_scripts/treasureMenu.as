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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6956")]
   public dynamic class treasureMenu extends MovieClip
   {
      public var bring:TextField;
      
      public var close:SimpleButton;
      
      public var close3:SimpleButton;
      
      public var fader:MovieClip;
      
      public var got:TextField;
      
      public var lost:TextField;
      
      public var okay:TextField;
      
      public var quest:TextField;
      
      public function treasureMenu()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      internal function frame1() : *
      {
         stop();
         Global.translate(this.okay,"treasure1",20);
         Global.translate(this.got,"treasure2",1);
         this.close.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            visible = false;
            Maps.playSound("unequip");
         });
      }
      
      internal function frame2() : *
      {
         stop();
         Global.translate(this.okay,"treasure1",20);
         Global.translate(this.quest,"treasure3",1);
         Global.translate(this.lost,"treasure4",5);
         Global.translate(this.got,"treasure5",5);
         GUI.setTextColor(this.lost);
         GUI.setTextColor(this.got);
         this.close.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            visible = false;
            Maps.playSound("unequip");
         });
      }
      
      internal function frame3() : *
      {
         stop();
         Global.translate(this.okay,"treasure1",20);
         Global.translate(this.bring,"treasure6",1);
         this.close3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            visible = false;
         });
      }
   }
}

