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
   import text.SetStrings;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13026")]
   public dynamic class battleAwardsvictory_5235 extends MovieClip
   {
      public var apBox:TextField;
      
      public var challenges:MovieClip;
      
      public var cheats:MovieClip;
      
      public var done:SimpleButton;
      
      public var expBar1:MovieClip;
      
      public var expBar1B:MovieClip;
      
      public var expBar2:MovieClip;
      
      public var expBar2B:MovieClip;
      
      public var expBar3:MovieClip;
      
      public var expBar3B:MovieClip;
      
      public var expBar4:MovieClip;
      
      public var expBar4B:MovieClip;
      
      public var expBar5:MovieClip;
      
      public var expBar5B:MovieClip;
      
      public var expBox:TextField;
      
      public var fader:MovieClip;
      
      public var goldBox:TextField;
      
      public var icon1:MovieClip;
      
      public var icon2:MovieClip;
      
      public var icon3:MovieClip;
      
      public var icon4:MovieClip;
      
      public var icon5:MovieClip;
      
      public var lvl1:MovieClip;
      
      public var lvl2:MovieClip;
      
      public var lvl3:MovieClip;
      
      public var lvl4:MovieClip;
      
      public var lvl5:MovieClip;
      
      public var tf1:TextField;
      
      public var tf2:TextField;
      
      public var tf3:TextField;
      
      public var updater:Updater;
      
      public var k:Number;
      
      public var a:Array;
      
      public var expDivide:Number;
      
      public function battleAwardsvictory_5235()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function tip(param1:Object) : *
      {
      }
      
      public function inc() : *
      {
         this.k += 0.02;
         if(Options.fastText)
         {
            this.k = 1;
         }
         Global.translate(this.expBox,"",0,"" + GUI.formatNumber(Math.floor(Battle.experiencePool * this.k)) + " " + SetStrings.getString("menus","victory4"));
         this.goldBox.text = "£" + GUI.formatNumber(Math.floor(Battle.goldPool * this.k));
         Global.translate(this.apBox,"",0,"" + GUI.formatNumber(Math.floor(Battle.abilityPool * this.k)) + " " + SetStrings.getString("menus","victory5"));
         this.expBox.setTextFormat(GUI.boldText);
         this.goldBox.setTextFormat(GUI.boldText);
         this.apBox.setTextFormat(GUI.boldText);
         this.addExp(Players.player1,1,this.k);
         this.addExp(Players.player2,2,this.k);
         this.addExp(Players.player3,3,this.k);
         this.addExp(Players.player4,4,this.k);
         this.addExp(Players.player5,5,this.k);
      }
      
      public function addExp(param1:Player, param2:int, param3:Number, param4:Boolean = false) : *
      {
         if(param1 && (!param1.dead || Flags.isBunkerBattle() || Options.instantHealing || Options.threePlayerMode || Options.twoPlayerMode || Options.onePlayerMode || Options.alwaysScaleFoes) && param1.inParty() && Players.playerJustUnlocked != param1.playerNo)
         {
            if(param4)
            {
               this.a[param2] = param1.addExp(Battle.experiencePool);
            }
            this["expBar" + param2 + "B"].gotoAndStop(Math.ceil(this.a[param2][0] + (this.a[param2][1] - this.a[param2][0]) * param3));
            if(this["expBar" + param2 + "B"].currentFrame > 100)
            {
               this["expBar" + param2 + "B"].gotoAndStop(100);
            }
            this["expBar" + param2 + "B"].barBack.visible = false;
            this["expBar" + param2].gotoAndStop(this.a[param2][0]);
            if(this["expBar" + param2].currentFrame > 100)
            {
               this["expBar" + param2].gotoAndStop(100);
            }
            if(param3 >= 1 && this.a[param2][1] >= 101)
            {
               this["lvl" + param2].play();
               this["expBar" + param2].gotoAndStop(100);
            }
         }
         else if(Boolean(param1) && param1.inParty())
         {
            this["expBar" + param2 + "B"].barBack.visible = false;
         }
      }
      
      public function init() : *
      {
         var _loc1_:Player = null;
         var _loc2_:Equip = null;
         Global.translate(this.tf1,"victory1",10);
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            Battle.goldPool = 0;
            Battle.experiencePool = 0;
            Battle.abilityPool = 0;
         }
         if(!Options.cheatsOn())
         {
            this.cheats.visible = false;
         }
         if(!Options.challengesOn())
         {
            this.challenges.visible = false;
         }
         if(Flags.expStyle == Flags.NO_EXP && !Options.alwaysScaleFoes)
         {
            Global.translate(this.tf2,"victory6",15,"",false,"",false,true);
         }
         else
         {
            Global.translate(this.tf2,"victory2",15);
         }
         Global.translate(this.tf3,"victory3",15);
         GUI.setTextColor(this.tf2);
         if(Flags.battleEvent != Flags.ARENA_BATTLE)
         {
            this.icon1.update(1);
            this.icon2.update(2);
            this.icon3.update(3);
            this.icon4.update(4);
            this.icon5.update(5);
            if(!Players.player2.inParty())
            {
               this.icon2.alpha = 0;
               this.icon2.gotoAndStop(11);
               this.expBar2B.visible = false;
               this.expBar2.visible = false;
            }
            if(!Players.player3.inParty())
            {
               this.icon3.alpha = 0;
               this.icon3.gotoAndStop(11);
               this.expBar3B.visible = false;
               this.expBar3.visible = false;
            }
            if(!Players.player4.inParty())
            {
               this.icon4.alpha = 0;
               this.icon4.gotoAndStop(11);
               this.expBar4B.visible = false;
               this.expBar4.visible = false;
            }
            if(!Players.player5.inParty())
            {
               this.icon5.alpha = 0;
               this.icon5.gotoAndStop(11);
               this.expBar5B.visible = false;
               this.expBar5.visible = false;
            }
         }
         Battle.goldPool *= 1 + Cards.goldBoost / 100;
         for each(_loc1_ in Game.party)
         {
            for each(_loc2_ in _loc1_.equips)
            {
               if(Boolean(_loc2_.specials[0]) && _loc2_.specials[0][0] == Equip.MORE_GOLD)
               {
                  Battle.goldPool *= 1 + _loc2_.level / 9;
               }
               if(Boolean(_loc2_.specials[0]) && _loc2_.specials[0][0] == Equip.MORE_AP)
               {
                  Battle.abilityPool *= _loc2_.specials[0][_loc2_.level];
               }
            }
         }
         if(Players.player1.inParty())
         {
            Players.player1.AP += Battle.abilityPool;
            if(Players.player1.dead && !Flags.isBunkerBattle() && !Options.instantHealing && !Options.threePlayerMode && !Options.twoPlayerMode && !Options.onePlayerMode && !Options.alwaysScaleFoes)
            {
               --this.expDivide;
            }
         }
         if(Players.player2.inParty())
         {
            Players.player2.AP += Battle.abilityPool;
            if(Players.player2.dead && !Flags.isBunkerBattle() && !Options.instantHealing && !Options.threePlayerMode && !Options.twoPlayerMode && !Options.onePlayerMode && !Options.alwaysScaleFoes || Players.playerJustUnlocked == 2)
            {
               --this.expDivide;
            }
         }
         if(Players.player3.inParty())
         {
            Players.player3.AP += Battle.abilityPool;
            if(Players.player3.dead && !Flags.isBunkerBattle() && !Options.instantHealing && !Options.threePlayerMode && !Options.twoPlayerMode && !Options.onePlayerMode && !Options.alwaysScaleFoes || Players.playerJustUnlocked == 3)
            {
               --this.expDivide;
            }
         }
         if(Players.player4.inParty())
         {
            Players.player4.AP += Battle.abilityPool;
            if(Players.player4.dead && !Flags.isBunkerBattle() && !Options.instantHealing && !Options.threePlayerMode && !Options.twoPlayerMode && !Options.onePlayerMode && !Options.alwaysScaleFoes || Players.playerJustUnlocked == 4)
            {
               --this.expDivide;
            }
         }
         if(Players.player5.inParty())
         {
            Players.player5.AP += Battle.abilityPool;
            if(Players.player5.dead && !Flags.isBunkerBattle() && !Options.instantHealing && !Options.threePlayerMode && !Options.twoPlayerMode && !Options.onePlayerMode && !Options.alwaysScaleFoes || Players.playerJustUnlocked == 5)
            {
               --this.expDivide;
            }
         }
         SaveData.money += Battle.goldPool;
         if(SaveData.money > SaveData.moneyMax)
         {
            SaveData.money = SaveData.moneyMax;
         }
         Battle.experiencePool = Battle.experiencePool * 5 / this.expDivide;
         this.addExp(Players.player1,1,0,true);
         this.addExp(Players.player2,2,0,true);
         this.addExp(Players.player3,3,0,true);
         this.addExp(Players.player4,4,0,true);
         this.addExp(Players.player5,5,0,true);
         this.expBox.text = "" + 0 + SetStrings.getString("menus","victory4");
         this.goldBox.text = "£" + 0;
         this.apBox.text = "" + 0 + SetStrings.getString("menus","victory5");
         this.expBox.setTextFormat(GUI.boldText);
         this.goldBox.setTextFormat(GUI.boldText);
         this.apBox.setTextFormat(GUI.boldText);
         this.updater.play();
      }
      
      internal function frame1() : *
      {
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            this.visible = false;
         }
         this.done.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            Battle.exit();
            done.visible = false;
         });
         this.updater.stop();
         visible = false;
         this.k = 0;
         this.a = [];
         this.expDivide = 5;
      }
   }
}

