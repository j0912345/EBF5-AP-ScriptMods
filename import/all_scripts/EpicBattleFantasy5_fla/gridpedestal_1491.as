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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19250")]
   public dynamic class gridpedestal_1491 extends MovieClip
   {
      public var bubble:MovieClip;
      
      public var icon:MovieClip;
      
      public var X:int;
      
      public var Y:int;
      
      public var item:Item;
      
      public var type:Boolean;
      
      public var state:int;
      
      public var id:int;
      
      public function gridpedestal_1491()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,9,this.frame10,10,this.frame11,17,this.frame18,19,this.frame20,43,this.frame44);
      }
      
      public function init(param1:int, param2:Item, param3:Boolean) : *
      {
         this.id = param1;
         this.type = param3;
         this.item = param2;
         if(Maps.switchData[this.id])
         {
            this.state = 1;
         }
         else
         {
            this.state = 0;
         }
      }
      
      internal function frame1() : *
      {
         if(Debug.mappingMode2)
         {
            visible = false;
            stop();
         }
      }
      
      internal function frame2() : *
      {
         stop();
         try
         {
            this.X = x / 50;
            this.Y = (y + 20) / 40;
            if(this.state == 1)
            {
               Global.itemIcon = this.item.icon;
               gotoAndStop("on2");
            }
            Maps.instance.addTile(23,x,y + 20);
            if(this.state == 0 && !this.type)
            {
               Maps.instance.addTile(1,x,y + 20);
            }
            Maps.instance.addObject({
               "mc":this.name,
               "type":Maps.PED
            });
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame4() : *
      {
         Global.itemIcon = this.item.icon;
      }
      
      internal function frame10() : *
      {
         stop();
         Maps.instance.switchEvent();
      }
      
      internal function frame11() : *
      {
         Global.itemIcon = this.item.icon;
      }
      
      internal function frame18() : *
      {
         stop();
         Maps.instance.switchEvent();
         if(!this.type)
         {
            (parent as Maps).addTile(1,x,y + 20);
         }
      }
      
      internal function frame20() : *
      {
         Global.itemIcon = this.item.icon;
      }
      
      internal function frame44() : *
      {
         stop();
      }
   }
}

