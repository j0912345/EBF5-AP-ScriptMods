package
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8446")]
   public dynamic class ArrowRain extends SpellMC
   {
      public function ArrowRain()
      {
         super();
         addFrameScript(0,this.frame1,26,this.frame27,30,this.frame31,33,this.frame34,39,this.frame40,46,this.frame47,67,this.frame68);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame27() : *
      {
         Battle.finalHit = false;
         Skills.arrowrain();
      }
      
      internal function frame31() : *
      {
         Battle.finalHit = false;
         Skills.arrowrain();
      }
      
      internal function frame34() : *
      {
         if(!Skills.user.isPlayer && Skills.user.graphic.zombieMode)
         {
            Battle.finalHit = false;
         }
         Skills.arrowrain();
      }
      
      internal function frame40() : *
      {
         if(!Skills.user.isPlayer)
         {
            try
            {
               Skills.user.bonusSpell2();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      internal function frame47() : *
      {
         drainage();
      }
      
      internal function frame68() : *
      {
         k();
      }
   }
}

