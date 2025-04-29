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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4191")]
   public dynamic class saveMenu1 extends MovieClip
   {
      public var backup:SimpleButton;
      
      public var pointer:MovieClip;
      
      public var saves:SaveMenu;
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public function saveMenu1()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.backup.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            SaveData.saveGame("EBF5backup",true);
         });
         Global.translate(this.txt1,"save1",10);
         Global.translate(this.txt2,"save2",10);
         Global.translate(this.txt3,"save3",10);
         GUI.setTextColor(this.txt2);
      }
   }
}

