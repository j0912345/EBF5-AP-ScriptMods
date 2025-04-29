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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2698")]
   public dynamic class links_6879 extends MovieClip
   {
      public var b1:SimpleButton;
      
      public var b2:SimpleButton;
      
      public var b3:SimpleButton;
      
      public var b4:SimpleButton;
      
      public var t1:TextField;
      
      public var t2:TextField;
      
      public var t3:TextField;
      
      public var t4:TextField;
      
      public function links_6879()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         stop();
         Global.translate(this.t1,"steamLink",10);
         Global.translate(this.t2,"patreonLink",10);
         Global.translate(this.t3,"discordLink",10);
         this.t1.mouseEnabled = false;
         this.t2.mouseEnabled = false;
         this.t3.mouseEnabled = false;
         this.b1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Links.openLink(Links.steam);
         });
         this.b2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Links.openLink(Links.patreon);
         });
         this.b3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Links.openLink(Links.discord);
         });
         if(Options.applicationFeatures)
         {
            nextFrame();
         }
      }
      
      internal function frame2() : *
      {
         this.t4.mouseEnabled = false;
         this.t3.mouseEnabled = false;
         Global.translate(this.t3,"discordLink",10);
         this.b4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Links.openLink(Links.mysite);
         });
      }
   }
}

