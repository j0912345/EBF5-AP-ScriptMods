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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18868")]
   public dynamic class gridNPC_1148 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public var data:NPC;
      
      public var Npc:MovieClip;
      
      public function gridNPC_1148()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function init(param1:NPC, param2:Boolean) : *
      {
         this.data = param1;
         if(!param2)
         {
            stop();
            visible = false;
         }
      }
      
      public function getDirection(param1:String) : int
      {
         if(param1 == Maps.RIGHT)
         {
            return 2;
         }
         if(param1 == Maps.DOWN)
         {
            return 3;
         }
         if(param1 == Maps.UP)
         {
            return 4;
         }
         if(param1 == Maps.LEFT)
         {
            return 5;
         }
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         stop();
         try
         {
            this.X = x / 50;
            this.Y = y / 40;
            if(!(Boolean((this.data as NPC).event2) && (this.data as NPC).event2.quantity != (this.data as NPC).flag3))
            {
               if((this.data as NPC).name != "")
               {
                  Maps.instance.addTile(32,x,y - 15);
               }
               this.Npc = new NPCbody();
               addChild(this.Npc);
               this.Npc.skin((this.data as NPC).skin,(this.data as NPC).facing);
               Maps.instance.addObject({
                  "mc":this.name,
                  "type":Maps.NPCMC
               });
            }
            this.scaleX = 0.97;
            this.scaleY = 0.97;
            this.x -= 42;
            this.y -= 83;
            g.visible = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}

