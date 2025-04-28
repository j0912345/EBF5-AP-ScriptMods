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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4588")]
   public dynamic class playercard_6824 extends MovieClip
   {
      public var equips:SimpleButton;
      
      public var expbar:MovieClip;
      
      public var expt:TextField;
      
      public var food:SimpleButton;
      
      public var hp:TextField;
      
      public var hpbar:MovieClip;
      
      public var level:TextField;
      
      public var lpbar:MovieClip;
      
      public var move:SimpleButton;
      
      public var player:TextField;
      
      public var skills:SimpleButton;
      
      public var stats:SimpleButton;
      
      public var pNo:int;
      
      public function playercard_6824()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.pNo = 0;
         this.equips.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.parent.cardEquips(pNo);
         });
         this.stats.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.parent.cardStats(pNo);
         });
         this.food.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.parent.cardFood();
         });
         this.move.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.parent.cardMove(pNo);
         });
         this.skills.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.parent.cardSkills(pNo);
         });
      }
   }
}

