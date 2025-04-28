package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.text.*;
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6946")]
   public class MapText extends MovieClip
   {
      public static var endingText:Array;
      
      public static var endingScenees:Array;
      
      public static const boxY:int = -17;
      
      public static var gameIntroScenes:Array = [1,1,1,2,2,2,3,3,3,4,4];
      
      public static var nolegsJoinsScenes:Array = [5,5,6,6,6,6,6];
      
      public static var firstMonolithScenes:Array = [7,7,7,7,8,8,8,8];
      
      public static var natalieJoinsScenes:Array = [9,9,9,9,9,9,9,10,10,10,10,10,10,10,10,10,10];
      
      public static var firstBossBeatScenes:Array = [11,11,11,11,11,11,11];
      
      public static var natalieGoneScenes:Array = [12,12,12,12,12,12,12];
      
      public static var annaJoinsScenes:Array = [13,13,13,13,13,13,14,14,14,14,14,14,14,14];
      
      public static var natalieFoundScenes:Array = [15,15,15,16,16,16,16];
      
      public static var natalieRescuedScenes:Array = [17,17,17,17,17,17,17,17,17,17];
      
      public static var lanceJoinsScenes:Array = [18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18];
      
      public static var butWhyScenes:Array = [19,19,19,19,19,19];
      
      public static var bigTreesScenes:Array = [20,20,20,20];
      
      public static var crawlingScenes:Array = [21,21,21,21,21,21,21];
      
      public static var boss3BeatScenes:Array = [22,22,22,22,22,22,22,22,22,22,22];
      
      public static var raftGetScenes:Array = [23,23,23,23,23,23,24,24,24,24];
      
      public static var ruins1Scenes:Array = [25,25,25,25,25,25,25,25];
      
      public static var ruins2Scenes:Array = [26,26,26,26,26,26,26,26,26,26];
      
      public static var boss4BeatScenes:Array = [27,27,27,27,28,28,28];
      
      public static var rapture1Scenes:Array = [29,29,29,29,29,29,29,29,29];
      
      public static var rapture2Scenes:Array = [30,30,30,30,30,30,30];
      
      public static var bloodCave1Scenes:Array = [31,31,31,31,31,31];
      
      public static var space0Scenes:Array = [32,32,32,32,32,32];
      
      public static var glitch4Scenes:Array = [33,33,33,33,33,33];
      
      public static var snowflake1Scenes:Array = [34,34,34,34,34,34,34];
      
      public static var Scenes:Array = [];
      
      public static var badEndScenes:Array = [45,45,45,45,45,45,45,45];
      
      public static var okayEndScenes:Array = [45,45,45,45,45,45,45,45,45,45];
      
      public static var goodEndScenes:Array = [45,45,45,45,45,45,45,45,45,45,45];
      
      public static const BUNNY:String = "bunny";
      
      public static var prevCut:int = 0;
      
      public static var removeSlide:Boolean = false;
      
      public static var exitToMenuFlag:Boolean = false;
      
      public var NpcData:NPC;
      
      public var page:int = 0;
      
      public var more:Boolean;
      
      public var d:Array;
      
      public var a:Array;
      
      public var close:SimpleButton;
      
      public var hey:SimpleButton;
      
      public var emo:Emoticon;
      
      public var arrow:MovieClip;
      
      public var ex:MovieClip;
      
      public var box:TextField;
      
      public var box2:TextField;
      
      public var slide:MovieClip;
      
      public var type:String = "";
      
      public var shaker:MovieClip;
      
      public var skipDelay:MovieClip;
      
      public var texter:MovieClip;
      
      public var gui:MovieClip;
      
      public var ad:MovieClip;
      
      public var hideMouth:Boolean = false;
      
      public function MapText()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
      }
      
      public static function assembleEnding() : *
      {
         endingText = [];
         endingScenees = [];
         endingText = endingText.concat(SetStrings.getCutscene("ending1"));
         endingScenees = endingScenees.concat([44,44]);
         var _loc1_:int = 0;
         if(SaveData.mattXnatz > SaveData.endingThreshhold)
         {
            _loc1_++;
            endingText = endingText.concat(SetStrings.getCutscene("mattXnatz"));
            endingScenees = endingScenees.concat([38,38]);
         }
         if(SaveData.lanceXnatz > SaveData.endingThreshhold)
         {
            _loc1_++;
            endingText = endingText.concat(SetStrings.getCutscene("lanceXnatz"));
            endingScenees = endingScenees.concat([39,39]);
         }
         if(SaveData.annaXnatz > SaveData.endingThreshhold)
         {
            _loc1_++;
            endingText = endingText.concat(SetStrings.getCutscene("annaXnatz"));
            endingScenees = endingScenees.concat([40,40]);
         }
         if(SaveData.mattXanna > SaveData.endingThreshhold)
         {
            _loc1_++;
            endingText = endingText.concat(SetStrings.getCutscene("mattXanna"));
            endingScenees = endingScenees.concat([41,41]);
         }
         if(SaveData.lanceXanna > SaveData.endingThreshhold)
         {
            _loc1_++;
            endingText = endingText.concat(SetStrings.getCutscene("lanceXanna"));
            endingScenees = endingScenees.concat([43,43]);
         }
         if(SaveData.mattXlance > SaveData.endingThreshhold)
         {
            _loc1_++;
            endingText = endingText.concat(SetStrings.getCutscene("mattXlance"));
            endingScenees = endingScenees.concat([42,42]);
         }
         if(_loc1_ <= 3)
         {
            endingText = endingText.concat(SetStrings.getCutscene("badEnd"));
            endingScenees = endingScenees.concat(badEndScenes);
         }
         else if(_loc1_ <= 5)
         {
            endingText = endingText.concat(SetStrings.getCutscene("okayEnd"));
            endingScenees = endingScenees.concat(okayEndScenes);
         }
         else
         {
            endingText = endingText.concat(SetStrings.getCutscene("goodEnd"));
            endingScenees = endingScenees.concat(goodEndScenes);
         }
         if(Main.hasPremium)
         {
            endingText = endingText.concat(SetStrings.getCutscene("shillingA"));
         }
         else
         {
            endingText = endingText.concat(SetStrings.getCutscene("shillingB"));
         }
         endingText = endingText.concat(SetStrings.getCutscene("stopShilling"));
         endingScenees = endingScenees.concat([37,37,37]);
         if(Main.hasPremium)
         {
            endingText = endingText.concat(SetStrings.getCutscene("newgamePlus"));
            endingScenees = endingScenees.concat([37,37,37,37,37]);
            endingText = endingText.concat(SetStrings.getCutscene("gameIntro"));
            endingScenees = endingScenees.concat(gameIntroScenes);
         }
         else
         {
            exitToMenuFlag = true;
         }
      }
      
      public function resizeAll() : *
      {
         if(Options.isCJ())
         {
            this.box.y = 3;
            this.box2.y = 3;
            this.resize(this.box,17);
            this.resize(this.box2,17);
         }
         else
         {
            this.box.y = 9;
            this.box2.y = 9;
            this.resize(this.box,13.2);
            this.resize(this.box2,13.2);
         }
      }
      
      public function resize(param1:TextField, param2:Number) : *
      {
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.size = param2;
         param1.setTextFormat(_loc3_);
      }
      
      public function init() : *
      {
         this.ad.visible = false;
         this.y = MapText.boxY;
         visible = false;
         stop();
         this.close.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            moreText();
         });
         this.hey.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            if(skipDelay.currentFrame >= 30)
            {
               moreText();
            }
            else
            {
               attention();
            }
         });
         this.texter.stop();
      }
      
      public function attention() : *
      {
         this.shaker.gotoAndPlay(4);
      }
      
      internal function moreText() : *
      {
         if(Boolean(this.texter.fullText) && this.texter.count < this.texter.fullText.length)
         {
            this.texter.skip();
         }
         else
         {
            this.ad.visible = false;
            this.hey.visible = true;
            this.y = MapText.boxY;
            parent.treasurebox.visible = false;
            if(Boolean(this.slide) && removeSlide)
            {
               removeChild(this.slide);
               this.slide = null;
               removeSlide = false;
               prevCut = -1;
            }
            if(!this.NpcData && !this.more && Maps.instance.busy && this.type == "")
            {
               --Maps.instance.busy;
               this.page = 0;
            }
            if(this.more)
            {
               if(this.NpcData)
               {
                  this.NpcTalk();
               }
               else
               {
                  this.scene(this.d,this.a,false);
               }
            }
            else
            {
               this.NpcData = null;
               visible = false;
               this.texter.stop();
               this.box.text = "";
               if(MapText.exitToMenuFlag)
               {
                  MapText.exitToMenuFlag = false;
                  (parent as MapMenu).teardown();
               }
            }
            this.type = "";
         }
      }
      
      internal function scene(param1:Array, param2:Array = null, param3:Boolean = true) : *
      {
         this.ad.visible = false;
         this.y = MapText.boxY;
         this.more = false;
         this.d = param1;
         this.a = param2;
         if(param3)
         {
            this.skipDelay.gotoAndPlay(2);
         }
         if(param1[1 + this.page * 2] == 333)
         {
            this.box.x = 134 - 66;
            this.gui.visible = false;
         }
         else
         {
            this.box.x = 134;
            if(this.gui)
            {
               this.gui.visible = true;
            }
         }
         if(param2 != null && param2[this.page] != param2[this.page + 1])
         {
            removeSlide = true;
         }
         if(param2 != null && prevCut != param2[this.page])
         {
            this.slide = new Cutscenes();
            this.addChild(this.slide);
            this.setChildIndex(this.slide,0);
            this.slide.animation = Options.idleBackgrounds;
            this.slide.blood = Options.blood;
            this.slide.x = 500;
            this.slide.y = -230;
            this.slide.gotoAndStop(param2[this.page]);
            prevCut = param2[this.page];
            this.y = MapText.boxY;
            this.hey.visible = false;
         }
         (parent as MapMenu).showText(param1[0 + this.page * 2],param1[1 + this.page * 2],0);
         if(param2 != null && param2[this.page] == 37)
         {
            this.ad.visible = true;
            if(Main.hasPremium)
            {
               this.ad.gotoAndStop(2);
            }
         }
         else
         {
            this.ad.visible = false;
         }
         if(param1.length - 2 > this.page * 2)
         {
            this.isMore();
         }
         ++this.page;
      }
      
      internal function isMore() : *
      {
         this.arrow.visible = true;
         this.ex.visible = false;
         this.more = true;
      }
      
      internal function NpcTalk(param1:Boolean = false) : *
      {
         if(param1)
         {
            this.page = 0;
         }
         this.more = false;
         this.d = this.NpcData.dialogue;
         if(this.NpcData.quest.length > 0 && this.NpcData.flag && !this.NpcData.flag2)
         {
            this.NpcData.flag2 = true;
            (parent as MapMenu).showTreasure(this.NpcData.quest,3);
         }
         else if(this.NpcData.flag2)
         {
            this.d = this.NpcData.dialogue2;
            if(!this.NpcData.flag)
            {
               this.page = 2;
            }
            else if(!this.NpcData.checkQuest())
            {
               (parent as MapMenu).showTreasure(this.NpcData.quest,3);
               this.page = 0;
            }
            else
            {
               if(this.NpcData.quest.length > 0)
               {
                  (parent as MapMenu).showTreasure(this.NpcData.rewards,2,this.NpcData.quest);
               }
               else
               {
                  (parent as MapMenu).showTreasure(this.NpcData.rewards,1);
               }
               this.NpcData.flag = false;
               NPCs.countQuests();
               this.page = 1;
            }
         }
         else if(Boolean(this.NpcData.event) && Boolean(this.NpcData.event.quantity))
         {
            this.d = this.NpcData.dialogue2;
            if(this.NpcData.flag && this.NpcData.rewards.length > 0)
            {
               if(this.NpcData.quest.length > 0)
               {
                  (parent as MapMenu).showTreasure(this.NpcData.rewards,2,this.NpcData.quest);
               }
               else
               {
                  (parent as MapMenu).showTreasure(this.NpcData.rewards,1);
               }
               this.NpcData.flag = false;
            }
            this.NpcData.flag = false;
         }
         if(this.d[1 + this.page * 2] == 0)
         {
            this.d[1 + this.page * 2] = 152;
         }
         if(this.d[1 + this.page * 2] == -1)
         {
            this.d[1 + this.page * 2] = 151;
         }
         (parent as MapMenu).showText(this.d[0 + this.page * 2],this.d[1 + this.page * 2],0);
         if(this.d[1 + this.page * 2] == 151)
         {
            this.ad.visible = true;
            SFX.playSound("bubble2");
         }
         else
         {
            this.ad.visible = false;
         }
         if(this.d.length - 2 > this.page * 2 && (!this.NpcData.flag2 || this.NpcData.quest.length == 0))
         {
            this.isMore();
         }
         ++this.page;
      }
      
      internal function next() : *
      {
      }
      
      internal function frame1() : *
      {
         stop();
         this.init();
         GUI.setFilters(this.box);
         GUI.setFilters(this.box2);
         this.resizeAll();
      }
      
      internal function frame2() : *
      {
         this.resizeAll();
      }
      
      internal function frame3() : *
      {
         this.resizeAll();
      }
      
      internal function frame4() : *
      {
         this.resizeAll();
      }
   }
}

