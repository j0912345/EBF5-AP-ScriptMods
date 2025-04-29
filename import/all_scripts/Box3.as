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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8203")]
   public dynamic class Box3 extends SpellMC
   {
      public function Box3()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8,9,this.frame10,10,this.frame11,30,this.frame31,36,this.frame37,44,this.frame45,68,this.frame69,73,this.frame74,98,this.frame99,112,this.frame113,134,this.frame135,144,this.frame145,147,this.frame148,153,this.frame154,164,this.frame165,168,this.frame169,171,this.frame172,173,this.frame174,178,this.frame179);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,5);
      }
      
      internal function frame8() : *
      {
         Battle.selectedTarget.graphic.visible = false;
         Battle.selectedTarget.statusDisplay.visible = false;
      }
      
      internal function frame10() : *
      {
         Battle.shake("small");
      }
      
      internal function frame11() : *
      {
         Catching.getCatchScore();
      }
      
      internal function frame31() : *
      {
         Catching.earlyCatch(this);
      }
      
      internal function frame37() : *
      {
         Catching.wiggle(this);
      }
      
      internal function frame45() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame69() : *
      {
         Catching.wiggle(this);
      }
      
      internal function frame74() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame99() : *
      {
         Catching.wiggle(this);
      }
      
      internal function frame113() : *
      {
         Catching.catchFoe();
      }
      
      internal function frame135() : *
      {
         Battle.selectedTarget.graphic.dropItems();
      }
      
      internal function frame145() : *
      {
         Catching.openDialogue();
      }
      
      internal function frame148() : *
      {
         k();
      }
      
      internal function frame154() : *
      {
         Battle.selectedTarget.graphic.visible = true;
         Battle.selectedTarget.unfreeze();
         Battle.selectedTarget.graphic.animate("evade");
         Battle.selectedTarget.graphic.dirtyStatus = true;
         Battle.shake("small");
      }
      
      internal function frame165() : *
      {
         Battle.shake("small");
      }
      
      internal function frame169() : *
      {
         Text.catching();
      }
      
      internal function frame172() : *
      {
         Catching.makeTired();
      }
      
      internal function frame174() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame179() : *
      {
         k();
      }
   }
}

