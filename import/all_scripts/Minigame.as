package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol351")]
   public class Minigame extends MovieClip
   {
      public static var win:Boolean = false;
      
      public var foe:MovieClip;
      
      public var foes:Array = [];
      
      public var derp:MovieClip;
      
      public var minioptions:MovieClip;
      
      public var score:int = 0;
      
      public var t:MovieClip;
      
      public function Minigame()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function init() : *
      {
         Game.mode = Game.MAIN_MENU;
         if(!GUI.boldText)
         {
            GUI.init();
         }
         GUI.prepareTextFormat();
         removeChild(this.derp);
         var _loc1_:int = 12;
         if(Debug.SteamVersion)
         {
            _loc1_ = 12;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.life();
            _loc2_++;
         }
      }
      
      public function death(param1:MovieClip) : *
      {
         removeChild(param1);
         var _loc2_:int = 0;
         while(_loc2_ < this.foes.length)
         {
            if(this.foes[_loc2_] == param1)
            {
               this.foes[_loc2_] = null;
               break;
            }
            _loc2_++;
         }
         try
         {
            this.life();
         }
         catch(e:Error)
         {
         }
      }
      
      public function addScore() : *
      {
         ++this.score;
         this.t.gotoAndPlay(2);
         this.t.t.t.text = "" + this.score;
         this.t.t.t.setTextFormat(GUI.boldText);
         if(this.score > 99)
         {
            win = true;
         }
      }
      
      public function life() : *
      {
         var _loc1_:int = 0;
         this.foe = new Idols3();
         addChild(this.foe);
         this.foe.scaleX = 0.45;
         this.foe.scaleY = 0.45;
         this.foe.x = -135 + 870 * Math.random();
         do
         {
            _loc1_ = Math.floor(Math.random() * 15);
         }
         while(this.foes[_loc1_]);
         
         this.foe.y = 20 + _loc1_ * 14.5;
         this.foes[_loc1_] = this.foe;
         this.sortLayers();
      }
      
      public function sortLayers() : *
      {
         var _loc1_:int = 0;
         var _loc2_:int = int(this.foes.length - 1);
         while(_loc2_ >= 0)
         {
            if(this.foes[_loc2_])
            {
               setChildIndex(this.foes[_loc2_],numChildren - 1 - _loc1_);
               _loc1_++;
            }
            _loc2_--;
         }
      }
      
      public function teardown() : *
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.foes.length)
         {
            if(Boolean(this.foes[_loc1_]) && Boolean(this.foes[_loc1_].parent))
            {
               removeChild(this.foes[_loc1_]);
               this.foes[_loc1_].gotoAndStop(165);
               this.foes[_loc1_] = null;
            }
            _loc1_++;
         }
         parent.removeChild((parent as Main).preloader);
         (parent as Main).preloader = null;
         (parent as Main).minigame = null;
         parent.removeChild(this);
      }
      
      internal function frame1() : *
      {
         this.init();
      }
   }
}

