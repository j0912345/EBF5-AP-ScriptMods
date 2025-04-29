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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4250")]
   public dynamic class recordsMenu extends MovieClip
   {
      public var t1:TextField;
      
      public var t10:TextField;
      
      public var t11:TextField;
      
      public var t12:TextField;
      
      public var t13:TextField;
      
      public var t2:TextField;
      
      public var t3:TextField;
      
      public var t4:TextField;
      
      public var t5:TextField;
      
      public var t6:TextField;
      
      public var t7:TextField;
      
      public var t8:TextField;
      
      public var t9:TextField;
      
      public var txt1:TextField;
      
      public var txt10:TextField;
      
      public var txt11:TextField;
      
      public var txt12:TextField;
      
      public var txt13:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public var txt4:TextField;
      
      public var txt5:TextField;
      
      public var txt6:TextField;
      
      public var txt7:TextField;
      
      public var txt8:TextField;
      
      public var txt9:TextField;
      
      public function recordsMenu()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function init() : *
      {
         var _loc3_:Equip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 13)
         {
            Global.translate(this["txt" + _loc1_],"records" + _loc1_,25);
            GUI.setTextColor(this["txt" + _loc1_]);
            _loc1_++;
         }
         this.t1.text = "" + SaveData.chestsOpened;
         this.t2.text = "" + SaveData.secretsFound;
         this.t3.text = "" + Foes.scannedFoes.length;
         this.t4.text = "" + Summons.OWNED_SUMMONS.length;
         var _loc2_:int = 0;
         for each(_loc3_ in Equips.ALL_EQUIPS)
         {
            if(Boolean(_loc3_) && _loc3_.owned)
            {
               _loc2_++;
            }
         }
         _loc2_--;
         this.t5.text = "" + _loc2_;
         this.t6.text = GUI.formatNumber(SaveData.maxDamage);
         this.t7.text = GUI.formatTime();
         this.t8.text = GUI.formatNumber(SaveData.stepsWalked);
         this.t9.text = GUI.formatNumber(SaveData.playersWounded);
         this.t10.text = GUI.formatNumber(SaveData.foesDefeated);
         this.t11.text = GUI.formatNumber(SaveData.foesSpared);
         this.t12.text = GUI.formatNumber(SaveData.foesExecuted);
         this.t13.text = SaveData.endlessBattlesScore;
      }
      
      internal function frame1() : *
      {
         stop();
      }
   }
}

