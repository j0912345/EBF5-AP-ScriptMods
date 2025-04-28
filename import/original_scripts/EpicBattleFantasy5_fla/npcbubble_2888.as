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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5952")]
   public dynamic class npcbubble_2888 extends MovieClip
   {
      public var f:int;
      
      public function npcbubble_2888()
      {
         super();
         addFrameScript(0,this.frame1,34,this.frame35);
      }
      
      public function init() : *
      {
         try
         {
            if((parent.parent.data as NPC).flag && (parent.parent.data as NPC).event && Boolean((parent.parent.data as NPC).event.quantity))
            {
               this.f = 2;
               play();
            }
            if((parent.parent.data as NPC).flag && (parent.parent.data as NPC).flag2)
            {
               if((parent.parent.data as NPC).checkQuest(false))
               {
                  this.f = 2;
                  play();
               }
               else
               {
                  this.f = 1;
                  play();
               }
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame1() : *
      {
         this.f = 1;
         stop();
         this.init();
      }
      
      internal function frame35() : *
      {
         stop();
      }
   }
}

