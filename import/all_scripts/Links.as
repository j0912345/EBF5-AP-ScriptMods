package
{
   import flash.net.*;
   
   public class Links
   {
      public static var sponsorSite:String = "http://www.kongregate.com/?haref=epicbattlefantasy4&src=spon&cm=epicbattlefantasy4";
      
      public static var sponsorSection:String = "http://www.kongregate.com/adventure-rpg-games/?haref=epicbattlefantasy4&src=spon&cm=epicbattlefantasy4";
      
      public static var kupoGames:String = "http://www.kongregate.com/games/kupo707/?haref=epicbattlefantasy4&src=spon&cm=epicbattlefantasy4";
      
      public static var walkthrough:String = "";
      
      public static var distribution:String = "http://www.kongregate.com/games_for_your_site/?haref=epicbattlefantasy4&src=spon&cm=epicbattlefantasy4";
      
      public static var epicBattleFantasy1:String = "http://www.kongregate.com/games/kupo707/epic-battle-fantasy/?haref=epicbattlefantasy4&src=spon&cm=epicbattlefantasy4";
      
      public static var epicBattleFantasy2:String = "http://www.kongregate.com/games/kupo707/epic-battle-fantasy-2/?haref=epicbattlefantasy4&src=spon&cm=epicbattlefantasy4";
      
      public static var epicBattleFantasy3:String = "http://www.kongregate.com/games/kupo707/epic-battle-fantasy-3/?haref=epicbattlefantasy4&src=spon&cm=epicbattlefantasy4";
      
      public static var epicBattleFantasy4:String = "http://www.kongregate.com/games/kupo707/epic-battle-fantasy-4/?haref=epicbattlefantasy4&src=spon&cm=epicbattlefantasy4";
      
      public static var bulletHeaven:String = "http://www.kongregate.com/games/kupo707/bullet-heaven/?haref=epicbattlefantasy4&src=spon&cm=epicbattlefantasy4";
      
      public static var adventureStory:String = "http://www.kongregate.com/games/kupo707/adventure-story/?haref=epicbattlefantasy4&src=spon&cm=epicbattlefantasy4";
      
      public static var steam:String = "https://store.steampowered.com/app/432350/Epic_Battle_Fantasy_5/";
      
      public static var patreon:String = "https://www.patreon.com/mattroszak";
      
      public static var discord:String = "https://discord.gg/9NdK6Wh";
      
      public static var youtube:String = "https://www.youtube.com/c/mattroszak";
      
      public static var music:String = "https://www.phyrnna.com/";
      
      public static var mattFacebook:String = "http://www.facebook.com/EpicBattleFantasy";
      
      public static var mattTwitter:String = "https://twitter.com/KupoGames";
      
      public static var mattDeviantart:String = "http://kupo707.deviantart.com/";
      
      public static var mysite:String = "http://www.kupogames.com/";
      
      public static var mattYoutube:String = "https://www.youtube.com/c/mattroszak";
      
      public static var hfxFacebook:String = "https://www.facebook.com/Phyrnna.Music/";
      
      public static var hfxTwitter:String = "https://twitter.com/Phyrnna";
      
      public static var hfxSoundtrack:String = "http://halcyonicfalconx.newgrounds.com/news/post/829912";
      
      public static var hfxBandcamp:String = "http://halcyonicfalconx.bandcamp.com/";
      
      public static var hfxYoutube:String = "";
      
      public static var localMode:Boolean = false;
      
      public function Links()
      {
         super();
      }
      
      public static function openLink(param1:String) : *
      {
         var l:String = param1;
         if(Main.messagesEnabled && Options.applicationFeatures)
         {
            Main.sendMessage("openLink",l);
            return;
         }
         try
         {
            navigateToURL(new URLRequest(l));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function onKong() : *
      {
         if(Debug.SteamVersion)
         {
            return false;
         }
         var _loc1_:String = Game.root.loaderInfo.url.split("/")[2];
         return _loc1_.indexOf("kongregate.") >= 0;
      }
      
      public static function allowFullscreen() : *
      {
         if(Debug.SteamVersion)
         {
            return true;
         }
         var _loc1_:String = Game.root.loaderInfo.url.split("/")[2];
         return _loc1_.indexOf("ungrounded.") >= 0 || _loc1_.indexOf("newgrounds.") >= 0 || _loc1_ == "" || Debug.armorGames;
      }
      
      public static function siteLock() : *
      {
         if(!Options.applicationFeatures)
         {
            localMode = Game.root.loaderInfo.url.indexOf("file://") >= 0;
            if(!localMode)
            {
               Game.root.stop();
            }
         }
      }
   }
}

