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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11485")]
   public dynamic class _AllStaves_5673 extends MovieClip
   {
      public function _AllStaves_5673()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,10,this.frame11,11,this.frame12,12,this.frame13);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.parent.zombieMode)
            {
               gotoAndStop(1);
            }
            else
            {
               gotoAndStop(Players.equips[2][0]);
            }
         }
         catch(errObject:Error)
         {
         }
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      internal function frame2() : *
      {
         try
         {
            if(Players.equips[2][2] == 13)
            {
               gotoAndStop(22);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame11() : *
      {
         try
         {
            if(Players.equips[2][2] == 11)
            {
               gotoAndStop(24);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame12() : *
      {
         try
         {
            if(Players.equips[2][2] == 13)
            {
               gotoAndStop(23);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame13() : *
      {
         try
         {
            if(Players.equips[2][2] == 10)
            {
               gotoAndStop(25);
            }
            if(Players.equips[2][2] == 20)
            {
               gotoAndStop(26);
            }
            if(Players.equips[2][2] == 3)
            {
               gotoAndStop(27);
            }
         }
         catch(errObject:Error)
         {
         }
      }
   }
}

