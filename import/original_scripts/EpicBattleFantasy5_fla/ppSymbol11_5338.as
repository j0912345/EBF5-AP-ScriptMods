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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11586")]
   public dynamic class ppSymbol11_5338 extends MovieClip
   {
      public var tail:MovieClip;
      
      public function ppSymbol11_5338()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,5,this.frame6,11,this.frame12);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieAnna))
            {
               gotoAndStop(55);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieNatz))
            {
               gotoAndStop(56);
            }
            else
            {
               gotoAndStop(Players.equips[parent.playerNo][2]);
            }
         }
         catch(errObject:Error)
         {
         }
         this.tail.visible = false;
         try
         {
            if(!parent.zombieMode && Players.hasItem(35,parent.playerNo))
            {
               this.tail.visible = true;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame2() : *
      {
         if(parent.playerNo == 4)
         {
            gotoAndStop(40);
         }
      }
      
      internal function frame6() : *
      {
         if(parent.playerNo == 4)
         {
            gotoAndStop(38);
         }
      }
      
      internal function frame12() : *
      {
      }
   }
}

