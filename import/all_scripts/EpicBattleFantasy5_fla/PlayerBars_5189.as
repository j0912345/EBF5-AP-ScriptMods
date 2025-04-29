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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12778")]
   public dynamic class PlayerBars_5189 extends MovieClip
   {
      public var hpBar0:MovieClip;
      
      public var hpBar1:MovieClip;
      
      public var hpBar2:MovieClip;
      
      public var hpBar3:MovieClip;
      
      public var hpBar4:MovieClip;
      
      public var hpBox0:TextField;
      
      public var hpBox1:TextField;
      
      public var hpBox2:TextField;
      
      public var hpBox3:TextField;
      
      public var hpBox4:TextField;
      
      public var icon0:MovieClip;
      
      public var icon1:MovieClip;
      
      public var icon2:MovieClip;
      
      public var icon3:MovieClip;
      
      public var icon4:MovieClip;
      
      public var limitBar0:MovieClip;
      
      public var limitBar1:MovieClip;
      
      public var limitBar2:MovieClip;
      
      public var limitBar3:MovieClip;
      
      public var limitBar4:MovieClip;
      
      public var section0:MovieClip;
      
      public var section1:MovieClip;
      
      public var section2:MovieClip;
      
      public var section3:MovieClip;
      
      public var section4:MovieClip;
      
      public var spBar:MovieClip;
      
      public var spBox:TextField;
      
      public var stats1:SimpleButton;
      
      public var stats2:SimpleButton;
      
      public var stats3:SimpleButton;
      
      public var stats4:SimpleButton;
      
      public var stats5:SimpleButton;
      
      public var tf1:TextField;
      
      public function PlayerBars_5189()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function init() : *
      {
         try
         {
            if(Battle.players.length < 2)
            {
               this.stats2.visible = false;
            }
         }
         catch(e:Error)
         {
         }
         try
         {
            if(Battle.players.length < 3)
            {
               this.stats3.visible = false;
            }
         }
         catch(e:Error)
         {
         }
         try
         {
            if(!Battle.standbyPlayers[0])
            {
               this.stats4.visible = false;
            }
         }
         catch(e:Error)
         {
         }
         try
         {
            if(!Battle.standbyPlayers[1])
            {
               this.stats5.visible = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame1() : *
      {
         Global.translate(this.tf1,"SP");
         stop();
         this.stats1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.showStats(1);
         });
         this.stats2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.showStats(2);
         });
         this.stats3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.showStats(3);
         });
         this.stats4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.showStats(4);
         });
         this.stats5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.showStats(5);
         });
         GUI.setFilters(this.spBox);
         GUI.setFilters(this.hpBox0);
         GUI.setFilters(this.hpBox1);
         GUI.setFilters(this.hpBox2);
         GUI.setFilters(this.hpBox3);
         GUI.setFilters(this.hpBox4);
      }
   }
}

