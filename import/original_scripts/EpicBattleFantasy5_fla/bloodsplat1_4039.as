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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11142")]
   public dynamic class bloodsplat1_4039 extends MovieClip
   {
      public function bloodsplat1_4039()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,35,this.frame36);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieNatz))
            {
               gotoAndPlay(20);
            }
            if(!Options.blood || parent.zombieMode && (parent.zombieLance || parent.zombieMatt) || Boolean(parent.bloodless))
            {
               visible = false;
               stop();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame18() : *
      {
         stop();
      }
      
      internal function frame36() : *
      {
         stop();
      }
   }
}

