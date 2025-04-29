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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4185")]
   public dynamic class playerIcons extends MovieClip
   {
      public var icon:MovieClip;
      
      public var tx1:TextField;
      
      public function playerIcons()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5);
      }
      
      internal function frame1() : *
      {
         stop();
         Global.translate(this.tx1,"",33,SetStrings.getPlayerName(0));
      }
      
      internal function frame2() : *
      {
         Global.translate(this.tx1,"",33,SetStrings.getPlayerName(1));
      }
      
      internal function frame3() : *
      {
         Global.translate(this.tx1,"",33,SetStrings.getPlayerName(2));
      }
      
      internal function frame4() : *
      {
         Global.translate(this.tx1,"",33,SetStrings.getPlayerName(3));
      }
      
      internal function frame5() : *
      {
         Global.translate(this.tx1,"",33,SetStrings.getPlayerName(4));
      }
   }
}

