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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12770")]
   public dynamic class FoeBars_5184 extends MovieClip
   {
      public var c0:MovieClip;
      
      public var c1:MovieClip;
      
      public var c2:MovieClip;
      
      public var c3:MovieClip;
      
      public var c4:MovieClip;
      
      public var foeBar0:MovieClip;
      
      public var foeBar1:MovieClip;
      
      public var foeBar2:MovieClip;
      
      public var foeBar3:MovieClip;
      
      public var foeBar4:MovieClip;
      
      public var hpBox0:TextField;
      
      public var hpBox1:TextField;
      
      public var hpBox2:TextField;
      
      public var hpBox3:TextField;
      
      public var hpBox4:TextField;
      
      public var nameBox0:TextField;
      
      public var nameBox1:TextField;
      
      public var nameBox2:TextField;
      
      public var nameBox3:TextField;
      
      public var nameBox4:TextField;
      
      public var section0:MovieClip;
      
      public var section1:MovieClip;
      
      public var section2:MovieClip;
      
      public var section3:MovieClip;
      
      public var section4:MovieClip;
      
      public var waveBox:TextField;
      
      public var weatherBox:TextField;
      
      public var wt:MovieClip;
      
      public function FoeBars_5184()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function updateWeather() : *
      {
         if(Weather.tempWeather != Weather.NONE)
         {
            Global.translate(this.weatherBox,"",20,Weather.tempWeather.name,false,"",false,true);
         }
         else
         {
            Global.translate(this.weatherBox,"",20,Weather.currentWeather.name,false,"",false,true);
         }
         GUI.setTextColor(this.waveBox);
         GUI.setTextColor(this.weatherBox);
         this.wt.onRollOverHandler = function(param1:MouseEvent):*
         {
            if(Weather.tempWeather != Weather.NONE)
            {
               GUI.showTooltip(parent,820,435,{
                  "name":Weather.tempWeather.name,
                  "description":Weather.tempWeather.desc
               },8);
            }
            else
            {
               GUI.showTooltip(parent,820,435,{
                  "name":Weather.currentWeather.name,
                  "description":Weather.currentWeather.desc
               },8);
            }
         };
         this.wt.onRollOutHandler = function(param1:MouseEvent):*
         {
            GUI.removeTooltip();
         };
         this.wt.addEventListener(MouseEvent.ROLL_OVER,this.wt.onRollOverHandler);
         this.wt.addEventListener(MouseEvent.ROLL_OUT,this.wt.onRollOutHandler);
      }
      
      public function update() : *
      {
         GUI.setTextColor(this.waveBox);
         GUI.setTextColor(this.weatherBox);
      }
      
      internal function frame1() : *
      {
         stop();
         this.updateWeather();
         this.update();
         GUI.setFilters(this.waveBox);
         GUI.setFilters(this.weatherBox);
         GUI.setFilters(this.nameBox0);
         GUI.setFilters(this.nameBox1);
         GUI.setFilters(this.nameBox2);
         GUI.setFilters(this.nameBox3);
         GUI.setFilters(this.nameBox4);
         GUI.setFilters(this.hpBox0);
         GUI.setFilters(this.hpBox1);
         GUI.setFilters(this.hpBox2);
         GUI.setFilters(this.hpBox3);
         GUI.setFilters(this.hpBox4);
      }
   }
}

