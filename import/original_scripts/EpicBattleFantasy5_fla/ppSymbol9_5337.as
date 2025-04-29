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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11558")]
   public dynamic class ppSymbol9_5337 extends MovieClip
   {
      public var tentacle:MovieClip;
      
      public function ppSymbol9_5337()
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
         this.tentacle.visible = false;
         this.tentacle.stop();
         try
         {
            if(!parent.zombieMode && Players.hasItem(36,parent.playerNo))
            {
               this.tentacle.visible = true;
               this.tentacle.play();
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

