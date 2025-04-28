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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4981")]
   public dynamic class craftitemmenuwindowmenu_6829 extends MovieClip
   {
      public var cd1:TextField;
      
      public var cd2:TextField;
      
      public var cd3:TextField;
      
      public var cd4:TextField;
      
      public var cd5:TextField;
      
      public var hp1:TextField;
      
      public var hp2:TextField;
      
      public var hp3:TextField;
      
      public var hp4:TextField;
      
      public var hp5:TextField;
      
      public var hpbar1:MovieClip;
      
      public var hpbar2:MovieClip;
      
      public var hpbar3:MovieClip;
      
      public var hpbar4:MovieClip;
      
      public var hpbar5:MovieClip;
      
      public var icon1:MovieClip;
      
      public var icon2:MovieClip;
      
      public var icon3:MovieClip;
      
      public var icon4:MovieClip;
      
      public var icon5:MovieClip;
      
      public var lpbar1:MovieClip;
      
      public var lpbar2:MovieClip;
      
      public var lpbar3:MovieClip;
      
      public var lpbar4:MovieClip;
      
      public var lpbar5:MovieClip;
      
      public var p1:SimpleButton;
      
      public var p10:SimpleButton;
      
      public var p11:SimpleButton;
      
      public var p2:SimpleButton;
      
      public var p3:SimpleButton;
      
      public var p4:SimpleButton;
      
      public var p5:SimpleButton;
      
      public var p6:SimpleButton;
      
      public var p7:SimpleButton;
      
      public var p8:SimpleButton;
      
      public var p9:SimpleButton;
      
      public var stats1:TextField;
      
      public var stats12:TextField;
      
      public var stats2:TextField;
      
      public var stats22:TextField;
      
      public var stats3:TextField;
      
      public var stats32:TextField;
      
      public var stats4:TextField;
      
      public var stats42:TextField;
      
      public var stats5:TextField;
      
      public var stats52:TextField;
      
      public var tf:TextField;
      
      public var tf1:TextField;
      
      public var tf2:TextField;
      
      public var tf3:TextField;
      
      public var tf4:TextField;
      
      public var tf5:TextField;
      
      public var type1:MovieClip;
      
      public var type12:MovieClip;
      
      public var type2:MovieClip;
      
      public var type22:MovieClip;
      
      public var type3:MovieClip;
      
      public var type32:MovieClip;
      
      public var type4:MovieClip;
      
      public var type42:MovieClip;
      
      public var type5:MovieClip;
      
      public var type52:MovieClip;
      
      public var o:DisplayObject;
      
      public function craftitemmenuwindowmenu_6829()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
      }
      
      internal function frame1() : *
      {
         stop();
         Global.translate(this.tf,"itemMenu7",12);
      }
      
      internal function frame2() : *
      {
         Global.translate(this.tf,"itemMenu8",12);
      }
      
      internal function frame3() : *
      {
         parent.initBooster();
         Global.translate(this.tf,"itemMenu6",12);
         this.p1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.boostPlayer(1);
         });
         this.p2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.boostPlayer(2);
         });
         this.p3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.boostPlayer(3);
         });
         this.p4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.boostPlayer(4);
         });
         this.p5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.boostPlayer(5);
         });
         for each(this.o in [this.icon1,this.icon2,this.icon3,this.icon4,this.icon5,this.p1,this.p2,this.p3,this.p4,this.p5])
         {
            this.o.visible = true;
         }
         this.p1.visible = false;
         this.p2.visible = false;
         this.p3.visible = false;
         this.p4.visible = false;
         this.p5.visible = false;
         if(!Players.player1.inParty())
         {
            this.icon1.alpha = 0.3;
            this.p1.visible = false;
         }
         if(!Players.player2.inParty())
         {
            this.icon2.alpha = 0.3;
            this.p2.visible = false;
         }
         if(!Players.player3.inParty())
         {
            this.icon3.alpha = 0.3;
            this.p3.visible = false;
         }
         if(!Players.player4.inParty())
         {
            this.icon4.alpha = 0.3;
            this.p4.visible = false;
         }
         if(!Players.player5.inParty())
         {
            this.icon4.alpha = 0.3;
            this.p5.visible = false;
         }
      }
      
      internal function frame4() : *
      {
         parent.initFood();
         Global.translate(this.tf,"itemMenu5",12);
         Global.translate(this.tf1,"cooldown",20);
         Global.translate(this.tf2,"cooldown",20);
         Global.translate(this.tf3,"cooldown",20);
         Global.translate(this.tf4,"cooldown",20);
         Global.translate(this.tf5,"cooldown",20);
         this.p6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.feedPlayer(1);
         });
         this.p7.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.feedPlayer(2);
         });
         this.p8.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.feedPlayer(3);
         });
         this.p9.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.feedPlayer(4);
         });
         this.p10.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.feedPlayer(5);
         });
         this.p11.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.feedPlayer(6);
         });
         for each(this.o in [this.icon1,this.icon2,this.icon3,this.icon4,this.icon5,this.p6,this.p7,this.p8,this.p9,this.p10])
         {
            this.o.visible = true;
         }
         this.p6.visible = false;
         this.p7.visible = false;
         this.p8.visible = false;
         this.p9.visible = false;
         this.p10.visible = false;
         if(!Players.player1.inParty())
         {
            this.icon1.alpha = 0.3;
            this.p6.visible = false;
         }
         if(!Players.player2.inParty())
         {
            this.icon2.alpha = 0.3;
            this.p7.visible = false;
         }
         if(!Players.player3.inParty())
         {
            this.icon3.alpha = 0.3;
            this.p8.visible = false;
         }
         if(!Players.player4.inParty())
         {
            this.icon4.alpha = 0.3;
            this.p9.visible = false;
         }
         if(!Players.player5.inParty())
         {
            this.icon5.alpha = 0.3;
            this.p10.visible = false;
         }
      }
   }
}

