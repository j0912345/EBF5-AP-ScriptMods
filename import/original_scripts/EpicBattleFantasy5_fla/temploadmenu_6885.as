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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2866")]
   public dynamic class temploadmenu_6885 extends MovieClip
   {
      public var backup:SimpleButton;
      
      public var saves:SaveMenu;
      
      public var txt3:TextField;
      
      public function temploadmenu_6885()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.backup.addEventListener(MouseEvent.MOUSE_DOWN,function():*
         {
            SaveData.loadFromFile();
         });
         Global.translate(this.txt3,"save3B");
         this.saves.init();
      }
   }
}

