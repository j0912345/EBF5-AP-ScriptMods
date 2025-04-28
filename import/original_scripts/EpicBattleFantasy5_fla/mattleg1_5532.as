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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8759")]
   public dynamic class mattleg1_5532 extends MovieClip
   {
      public var eq:int;
      
      public function mattleg1_5532()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,10,this.frame11,12,this.frame13);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieLance))
            {
               gotoAndStop(10);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieMatt))
            {
               gotoAndStop(2);
            }
            else
            {
               gotoAndStop(Players.equips[parent.playerNo][2]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame6() : *
      {
         try
         {
            if(parent.playerNo == 3)
            {
               gotoAndStop(35);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame11() : *
      {
         try
         {
            if(parent.playerNo == 3)
            {
               gotoAndStop(34);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame13() : *
      {
         try
         {
            if(parent.playerNo == 1)
            {
               this.eq = Players.P1equips[0];
               if(this.eq == 3 || this.eq == 8)
               {
                  gotoAndStop(32);
               }
               if(this.eq == 7 || this.eq == 10 || this.eq == 17)
               {
                  gotoAndStop(33);
               }
               if(this.eq == 11 || this.eq == 13 || this.eq == 14 || this.eq == 16)
               {
                  gotoAndStop(31);
               }
               if(this.eq == 4 || this.eq == 6 || this.eq == 12)
               {
                  gotoAndStop(30);
               }
            }
            else if(parent.playerNo == 3)
            {
               this.eq = Players.P3equips[0];
               if(this.eq == 2 || this.eq == 3 || this.eq == 20)
               {
                  gotoAndStop(32);
               }
               if(this.eq == 4 || this.eq == 6 || this.eq == 14 || this.eq == 15 || this.eq == 16)
               {
                  gotoAndStop(33);
               }
               if(this.eq == 1 || this.eq == 7 || this.eq == 21 || this.eq == 19)
               {
                  gotoAndStop(31);
               }
               if(this.eq == 8 || this.eq == 12 || this.eq == 13)
               {
                  gotoAndStop(30);
               }
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

