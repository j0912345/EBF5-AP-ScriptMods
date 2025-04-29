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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19586")]
   public dynamic class keyblock1_1854 extends MovieClip
   {
      public var bubble:MovieClip;
      
      public var icon:MovieClip;
      
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public var skin:int;
      
      public var item:Item;
      
      public function keyblock1_1854()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,4,this.frame5,18,this.frame19,29,this.frame30,31,this.frame32,33,this.frame34,58,this.frame59);
      }
      
      public function init(param1:Item) : *
      {
         this.item = param1;
         if(this.item == Items.woodenkey)
         {
            this.skin = 1;
         }
         if(this.item == Items.coralkey)
         {
            this.skin = 2;
         }
         if(this.item == Items.topazkey)
         {
            this.skin = 3;
         }
         if(this.item == Items.copperkey)
         {
            this.skin = 4;
         }
         if(this.item == Items.goldkey)
         {
            this.skin = 5;
         }
         if(this.item == Items.diamondkey)
         {
            this.skin = 6;
         }
      }
      
      internal function frame1() : *
      {
         this.state = 0;
         if(Debug.mappingMode2)
         {
            visible = false;
            stop();
         }
      }
      
      internal function frame2() : *
      {
         stop();
         this.X = (x + 25) / 50;
         this.Y = (y + 20) / 40;
         (parent as Maps).addTile(9,x + 25,y + 25);
         parent.addObject({
            "mc":this.name,
            "type":Maps.KEY_BLOCK
         });
         if(!Maps.keyData[MapData.mapNo])
         {
            Maps.keyData[MapData.mapNo] = [];
         }
         if(Maps.keyData[MapData.mapNo][name.substring(3)] == 2)
         {
            gotoAndStop("opened");
            this.state = 1;
         }
      }
      
      internal function frame4() : *
      {
      }
      
      internal function frame5() : *
      {
         Global.itemIcon = this.item.icon;
      }
      
      internal function frame19() : *
      {
         Maps.playSound("key" + this.skin);
      }
      
      internal function frame30() : *
      {
      }
      
      internal function frame32() : *
      {
         stop();
         Maps.keyData[MapData.mapNo][name.substring(3)] = 2;
         (parent as Maps).addTile(0,x + 25,y + 25);
      }
      
      internal function frame34() : *
      {
         Global.itemIcon = this.item.icon;
      }
      
      internal function frame59() : *
      {
         stop();
      }
   }
}

