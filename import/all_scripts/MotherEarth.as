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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9751")]
   public dynamic class MotherEarth extends SpellMC
   {
      public function MotherEarth()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,21,this.frame22,28,this.frame29,42,this.frame43,56,this.frame57,102,this.frame103,107,this.frame108,108,this.frame109,125,this.frame126,153,this.frame154);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,0);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.annaSkills[33]);
         Text.speech(Text.annaSkills[34]);
      }
      
      internal function frame22() : *
      {
         Battle.shake("small");
      }
      
      internal function frame29() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame43() : *
      {
         if(Skills.user.isPlayer)
         {
            jumpBack();
         }
      }
      
      internal function frame57() : *
      {
         Text.speech(Text.annaSkills[36]);
         Text.speech(Text.annaSkills[38]);
      }
      
      internal function frame103() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame108() : *
      {
         Battle.shake("small");
      }
      
      internal function frame109() : *
      {
         Skills.motherearth();
      }
      
      internal function frame126() : *
      {
         Text.speech(Text.annaSkills[30]);
      }
      
      internal function frame154() : *
      {
         k();
      }
   }
}

