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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4175")]
   public dynamic class mapmenuplayerbars_6803 extends MovieClip
   {
      public var collectibles:SimpleButton;
      
      public var equips:SimpleButton;
      
      public var forge:SimpleButton;
      
      public var items:SimpleButton;
      
      public var maps:SimpleButton;
      
      public var money:TextField;
      
      public var options:SimpleButton;
      
      public var pBars0:MovieClip;
      
      public var pBars1:MovieClip;
      
      public var pBars2:MovieClip;
      
      public var pBars3:MovieClip;
      
      public var pBars4:MovieClip;
      
      public var party:SimpleButton;
      
      public var quit:SimpleButton;
      
      public var save:SimpleButton;
      
      public var skills:SimpleButton;
      
      public var spBar:MovieClip;
      
      public var spBox:TextField;
      
      public var stats:SimpleButton;
      
      public var summons:SimpleButton;
      
      public var tf1:TextField;
      
      public function mapmenuplayerbars_6803()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         Global.translate(this.tf1,"SP");
         this.items.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openItemsMenu();
         });
         this.stats.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openStatsMenu();
         });
         this.skills.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openSkillsMenu();
         });
         this.summons.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openSummonsMenu();
         });
         this.equips.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openEquipsMenu();
         });
         this.forge.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openForgeMenu();
         });
         this.maps.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openMapMenu();
         });
         this.collectibles.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openGoalsMenu();
         });
         this.options.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openOptionsMenu();
         });
         this.save.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openSaveMenu();
         });
         this.quit.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openQuitMenu();
         });
         this.party.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openPlayersMenu();
         });
      }
   }
}

