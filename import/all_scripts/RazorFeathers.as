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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10309")]
   public dynamic class RazorFeathers extends SpellMC
   {
      public function RazorFeathers()
      {
         super();
         addFrameScript(0,this.frame1,31,this.frame32,33,this.frame34,35,this.frame36,37,this.frame38,39,this.frame40,41,this.frame42,43,this.frame44,45,this.frame46,47,this.frame48,49,this.frame50,51,this.frame52,53,this.frame54,55,this.frame56,57,this.frame58,59,this.frame60,61,this.frame62,67,this.frame68);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame32() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.DragonSky.effect2();
         }
         else
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame34() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame36() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.DragonSky.effect2();
         }
         else
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame38() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame40() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.DragonSky.effect2();
         }
         else
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame42() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame44() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.DragonSky.effect2();
         }
         else
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame46() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame48() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.DragonSky.effect2();
         }
         else
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame50() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame52() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.DragonSky.effect2();
         }
         else
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame54() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame56() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.DragonSky.effect2();
         }
         else
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame58() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame60() : *
      {
         if(isSummon)
         {
            Battle.finalHit = true;
            Summons.DragonSky.effect2();
         }
         else
         {
            Battle.finalHit = false;
            Skills.razorfeathers();
         }
      }
      
      internal function frame62() : *
      {
         if(!isSummon)
         {
            Skills.razorfeathers();
         }
      }
      
      internal function frame68() : *
      {
         k();
      }
   }
}

