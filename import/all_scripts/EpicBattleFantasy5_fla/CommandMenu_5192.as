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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12818")]
   public dynamic class CommandMenu_5192 extends MovieClip
   {
      public var attack:SimpleButton;
      
      public var cancel:SimpleButton;
      
      public var ct:MovieClip;
      
      public var equip:SimpleButton;
      
      public var fader:MovieClip;
      
      public var item:SimpleButton;
      
      public var limit:MovieClip;
      
      public var skill:SimpleButton;
      
      public var summon:SimpleButton;
      
      public var tactics:SimpleButton;
      
      public var tf1:TextField;
      
      public var tf2:TextField;
      
      public var tf3:TextField;
      
      public var tf4:TextField;
      
      public var tf5:TextField;
      
      public var tf6:TextField;
      
      public var hasSummons:Boolean;
      
      public var o:Object;
      
      public function CommandMenu_5192()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         this.attack.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openAttackMenu();
         });
         this.tactics.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openTacticsMenu();
         });
         this.skill.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openSkillMenu();
         });
         this.summon.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openSummonMenu();
         });
         this.equip.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openEquipMenu();
         });
         this.item.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.openItemMenu();
         });
         Global.translate(this.tf1,"commands1",30);
         Global.translate(this.tf2,"commands2",30);
         Global.translate(this.tf3,"commands3",30);
         Global.translate(this.tf4,"commands4",30);
         Global.translate(this.tf5,"commands5",30);
         Global.translate(this.tf6,"commands6",30);
         this.hasSummons = false;
         for each(this.o in Summons.PARTY_SUMMONS)
         {
            if(this.o != Equips.empty)
            {
               this.hasSummons = true;
               break;
            }
         }
         if(!this.hasSummons)
         {
            this.tf4.alpha = 0.3;
            this.summon.visible = false;
         }
         else
         {
            this.summon.visible = true;
         }
         stop();
      }
      
      internal function frame2() : *
      {
         this.cancel.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            parent.cancelSelection();
         });
      }
   }
}

