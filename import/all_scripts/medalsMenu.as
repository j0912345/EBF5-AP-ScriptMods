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
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2887")]
   public dynamic class medalsMenu extends MovieClip
   {
      public var d:SimpleButton;
      
      public var deleteMenu:deleteSave;
      
      public var gui1:MovieClip;
      
      public var gui2:MovieClip;
      
      public var gui3:MovieClip;
      
      public var gui4:MovieClip;
      
      public var gui5:MovieClip;
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public var txt4:TextField;
      
      public function medalsMenu()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function selectDelete() : *
      {
         this.deleteMenu.visible = true;
         this.setChildIndex(this.deleteMenu,this.numChildren - 1);
      }
      
      public function deleteData(param1:Boolean) : *
      {
         this.deleteMenu.visible = false;
         if(param1)
         {
            Medals.reset();
            try
            {
               if(Game.mode == Game.MAIN_MENU)
               {
                  parent.fadeTo(MainMenu.TITLE);
               }
               else
               {
                  (parent as MapMenu).closeMenus();
                  Maps.playSound("upgrade2");
                  parent.splash.gotoAndPlay("deleted");
                  parent.splash.x = -240;
                  parent.splash.y = -270;
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      internal function frame1() : *
      {
         this.txt2.text = SetStrings.getString("menus","medals1");
         this.txt1.text = SetStrings.getString("menus","medals2");
         this.txt4.text = SetStrings.getString("menus","save7");
         Global.translate(this.txt2,"medals1",15);
         Global.translate(this.txt1,"medals2",15);
         Global.translate(this.txt4,"save7",30);
         this.d.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            selectDelete();
         });
         stop();
         this.deleteMenu.visible = false;
         if(Game.mode == Game.MAIN_MENU)
         {
            this.gui1.visible = false;
            this.gui2.visible = false;
            this.gui3.visible = false;
            this.gui4.visible = false;
            this.gui5.visible = false;
         }
      }
   }
}

