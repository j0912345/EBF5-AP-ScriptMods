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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2913")]
   public dynamic class premiumad_3088 extends MovieClip
   {
      public var b1:SimpleButton;
      
      public var b2:SimpleButton;
      
      public var b3:SimpleButton;
      
      public var b4:SimpleButton;
      
      public var b5:SimpleButton;
      
      public var sky:MovieClip;
      
      public var t1:TextField;
      
      public var t2:TextField;
      
      public var t3:TextField;
      
      public var t4:TextField;
      
      public var t5:TextField;
      
      public function premiumad_3088()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         stop();
         if(Main.hasPremium)
         {
            nextFrame();
         }
         this.t4.mouseEnabled = false;
         this.t5.mouseEnabled = false;
         Global.translate(this.t1,"deluxe1",10);
         Global.translate(this.t2,"deluxe2");
         Global.translate(this.t3,"deluxe3",3);
         Global.translate(this.t4,"steamLink2",15);
         Global.translate(this.t5,"kongLink");
         this.sky.mouseEnabled = false;
         this.b1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Links.openLink(Links.steam);
         });
      }
      
      internal function frame2() : *
      {
         this.t1.mouseEnabled = false;
         this.t2.mouseEnabled = false;
         this.t3.mouseEnabled = false;
         this.t4.mouseEnabled = false;
         this.t5.mouseEnabled = false;
         Global.translate(this.t1,"patreonLink",15);
         Global.translate(this.t2,"discordLink",15);
         Global.translate(this.t3,"kupoLink",15);
         Global.translate(this.t4,"youtubeLink",15);
         Global.translate(this.t5,"musicLink",15);
         this.sky.mouseEnabled = false;
         this.b1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Links.openLink(Links.patreon);
         });
         this.b2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Links.openLink(Links.discord);
         });
         this.b3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Links.openLink(Links.mysite);
         });
         this.b4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Links.openLink(Links.youtube);
         });
         this.b5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Links.openLink(Links.music);
         });
      }
   }
}

