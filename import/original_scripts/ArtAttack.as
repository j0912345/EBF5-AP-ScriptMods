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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10827")]
   public dynamic class ArtAttack extends SpellMC
   {
      public function ArtAttack()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,16,this.frame17,19,this.frame20,167,this.frame168,172,this.frame173,176,this.frame177,183,this.frame184,190,this.frame191,196,this.frame197,197,this.frame198,212,this.frame213,216,this.frame217,277,this.frame278,366,this.frame367,371,this.frame372,380,this.frame381,389,this.frame390,396,this.frame397,397,this.frame398,401,this.frame402,416,this.frame417,420,this.frame421,570,this.frame571,575,this.frame576,584,this.frame585,593,this.frame594,600,this.frame601,601,this.frame602);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         if(Skills.user == Players.player3 || Skills.user == Players.player1 || Skills.user == Players.player5)
         {
            gotoAndPlay("nolegs");
         }
         if(Skills.user == Players.player4)
         {
            gotoAndPlay("anna");
         }
      }
      
      internal function frame17() : *
      {
         jumpBack();
      }
      
      internal function frame20() : *
      {
         Battle.invisiblePlayers();
         Battle.invisibleFoes();
      }
      
      internal function frame168() : *
      {
         Battle.visiblePlayers();
         Battle.visibleFoes();
      }
      
      internal function frame173() : *
      {
         Text.speech(Text.miscSkills[34]);
         Text.speech(Text.miscSkills[35]);
      }
      
      internal function frame177() : *
      {
         Skills.artattack(1);
      }
      
      internal function frame184() : *
      {
         Skills.artattack(2);
      }
      
      internal function frame191() : *
      {
         Skills.artattack(3);
      }
      
      internal function frame197() : *
      {
         Skills.artattack(4);
      }
      
      internal function frame198() : *
      {
         k();
      }
      
      internal function frame213() : *
      {
         jumpBack();
      }
      
      internal function frame217() : *
      {
         Battle.invisiblePlayers();
         Battle.invisibleFoes();
      }
      
      internal function frame278() : *
      {
         Text.speech(Text.miscSkills[32]);
         Text.speech(Text.miscSkills[33]);
      }
      
      internal function frame367() : *
      {
         Battle.visiblePlayers();
         Battle.visibleFoes();
      }
      
      internal function frame372() : *
      {
         Skills.artattack(1);
      }
      
      internal function frame381() : *
      {
         Skills.artattack(2);
      }
      
      internal function frame390() : *
      {
         Skills.artattack(3);
      }
      
      internal function frame397() : *
      {
         Skills.artattack(4);
      }
      
      internal function frame398() : *
      {
         k();
      }
      
      internal function frame402() : *
      {
         k();
      }
      
      internal function frame417() : *
      {
         jumpBack();
      }
      
      internal function frame421() : *
      {
         Battle.invisiblePlayers();
         Battle.invisibleFoes();
      }
      
      internal function frame571() : *
      {
         Battle.visiblePlayers();
         Battle.visibleFoes();
      }
      
      internal function frame576() : *
      {
         Skills.artattack(1);
      }
      
      internal function frame585() : *
      {
         Skills.artattack(2);
      }
      
      internal function frame594() : *
      {
         Skills.artattack(3);
      }
      
      internal function frame601() : *
      {
         Skills.artattack(4);
      }
      
      internal function frame602() : *
      {
         k();
      }
   }
}

