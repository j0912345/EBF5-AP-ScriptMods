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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8385")]
   public dynamic class RazorLeaf extends SpellMC
   {
      public function RazorLeaf()
      {
         super();
         addFrameScript(0,this.frame1,12,this.frame13,36,this.frame37,39,this.frame40,42,this.frame43,45,this.frame46,48,this.frame49,52,this.frame53,59,this.frame60);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame13() : *
      {
         Text.speech(Text.annaSkills[11]);
         Text.speech(Text.annaSkills[12]);
         Text.speech(Text.annaSkills[13]);
      }
      
      internal function frame37() : *
      {
         Battle.finalHit = false;
         Skills.razorleaf2();
      }
      
      internal function frame40() : *
      {
         Battle.finalHit = false;
         Skills.razorleaf2();
      }
      
      internal function frame43() : *
      {
         Battle.finalHit = false;
         Skills.razorleaf2();
      }
      
      internal function frame46() : *
      {
         Battle.finalHit = false;
         Skills.razorleaf2();
      }
      
      internal function frame49() : *
      {
         Skills.razorleaf2();
      }
      
      internal function frame53() : *
      {
         if(Skills.user is Foe)
         {
            Text.speech(Text.chompers[7]);
         }
      }
      
      internal function frame60() : *
      {
         k();
      }
   }
}

