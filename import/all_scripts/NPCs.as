package
{
   public class NPCs
   {
      public static var questList:Array;
      
      public static var questListForDisplay:Array;
      
      public static var testNPC:NPC = new NPC("manlet","mhey",[2,4,4,33,2,2,9,22,2,7,3,2],Maps.RIGHT,"manletD1",[],null,[],[],Flags.FOUND_HOUSE,0);
      
      public static var testNPC2:NPC = new NPC("manlet","mhey",[2,4,4,28,2,2,9,22,2,7,7,5],Maps.LEFT,"manletD2",[],null,[],[],Flags.FOUND_HOUSE,1);
      
      public static var testNPC3:NPC = new NPC("manlet","mhey",[2,4,4,12,4,2,47,22,2,7,10,2],Maps.LEFT,"manletD3",[],null,[],[],Flags.FOUND_HOUSE,2);
      
      public static var bootsNPC:NPC = new NPC("girlA","fhey",[5,6,5,8,2,12,2,52,2,20,20,2],Maps.LEFT,"girlAD1","girlAD2",Items.rubberboots,[],[Items.brick,1,Items.snowball,1,Items.herb,1]);
      
      public static var questNPC:NPC = new NPC("girlB","fsigh",[4,18,5,32,2,2,40,60,2,5,57,2],Maps.LEFT,null,"girlBQ",null,[Items.gamechild,1,Summons.SlimeChocolate,1,Items.burger,1],[Items.panties,1]);
      
      public static var mungus:NPC = new NPC("mungus","omyes",[2,1,12,15,2,8,4,19,2,9,19,2],Maps.LEFT,null,"mungusQ",null,[Items.glasses,1,Items.sock1,1,Items.sock2,1],[Items.coffee,5,Items.blueberries,5,Spells.snowbunny,1]);
      
      public static var mungusB:NPC = new NPC("mungus","omyes",[2,1,12,27,5,8,4,19,2,9,19,2],Maps.LEFT,"mungusD",[],null,[],[]);
      
      public static var jerryB:NPC = new NPC("jerry","omhello",[4,0,7,15,2,5,2,24,2,8,2,2],Maps.LEFT,null,"jerryQ",null,[Items.fishingrod,1,Items.sunglasses,1,Items.beer,1],[Equips.eagleeye,1,Spells.lockon,1,Items.energy,3],Flags.FISHING,2);
      
      public static var jerryC:NPC = new NPC("jerry","omhello",[4,0,7,13,4,5,2,24,2,8,30,2],Maps.RIGHT,"jerryD2",[],null,[],[],Flags.FISHING,1);
      
      public static var molly:NPC = new NPC("molly","fhey",[2,13,16,9,5,12,29,57,2,11,19,2],Maps.RIGHT,null,"mollyQ",null,[Items.earthenware,5],[Spells.partytime,1,Items.yoghurt,1,Items.coffee,1],{"quantity":(Flags.RAPTURE_REACHED.quantity ? 1 : 0)},0);
      
      public static var bessie:NPC = new NPC("bessie","fshiver",[5,26,15,21,2,2,2,51,2,9,27,2],Maps.LEFT,null,"bessieQ",null,[Summons.DogFriend,1],[Spells.purify,1,Items.garlic,3,Items.egg,1],Flags.DOG_GET,0);
      
      public static var bessieB:NPC = new NPC("bessie","fahh",[5,26,15,8,2,2,2,51,2,9,50,2],Maps.LEFT,"bessieD",[],null,[],[],Flags.DOG_GET,1);
      
      public static var bessieC:NPC = new NPC("bessie","fcry",[5,26,15,32,2,2,2,51,2,9,2,2],Maps.LEFT,"bessieD2",[],null,[],[],Flags.DOG_GET,2);
      
      public static var indy:NPC = new NPC("indy","mhowdy2",[3,2,3,5,2,6,24,24,2,4,46,2],Maps.RIGHT,null,"indyQ",null,[Items.bomb,10,Items.powder,10],[Spells.bind,1,Items.turd,10],Flags.MONOLITH_MOVED,0);
      
      public static var indyB:NPC = new NPC("indy","mhowdy2",[3,2,3,5,2,6,24,24,2,4,46,2],Maps.RIGHT,"indyB",[],null,[],[],Flags.MONOLITH_MOVED,1);
      
      public static var edward:NPC = new NPC("edward","mgasp",[2,19,19,41,2,12,2,5,3,12,2,9],Maps.RIGHT,"edwardD",[],null,[],[]);
      
      public static var chad:NPC = new NPC("chad","mgrumpy",[2,16,4,38,2,12,2,4,2,12,30,2],Maps.LEFT,"chadD",[],null,[],[],Items.raft,0);
      
      public static var chadB:NPC = new NPC("chad","mgrumpy",[2,16,4,40,2,12,2,4,2,12,26,2],Maps.LEFT,"chadD2",[],null,[],[],Items.raft,1);
      
      public static var dennis:NPC = new NPC("dennis","bhello",[2,7,11,20,2,12,2,31,2,6,52,2],Maps.RIGHT,"dennisD",[],null,[],[]);
      
      public static var jeff:NPC = new NPC("jeff","mhey2",[2,9,3,15,2,11,2,3,2,4,2,2],Maps.LEFT,"jeffD",[],null,[],[],Items.shovel,0);
      
      public static var jeffB:NPC = new NPC("jeff","mhey2",[2,9,3,15,2,11,2,3,2,4,2,2],Maps.LEFT,"jeffD2","jeffD3",Items.raft,[],[],Items.spikedboots,0);
      
      public static var jeffC:NPC = new NPC("cultist","mhey2",[2,9,3,15,2,11,61,3,2,4,33,2],Maps.LEFT,"jeffD4",[],null,[],[],Items.spikedboots,1);
      
      public static var jake:NPC = new NPC("jake","mcough",[2,8,9,30,2,12,2,20,2,4,45,2],Maps.LEFT,"jakeD",[],null,[],[],Items.shovel,0);
      
      public static var jakeB:NPC = new NPC("jake","mcough",[2,8,9,33,2,12,2,20,2,4,33,2],Maps.LEFT,[],"jakeD2",Items.shovel,[],[Items.coffee,1,Items.yoghurt,1],Items.shovel,1);
      
      public static var rory:NPC = new NPC("rory","mhey",[2,7,3,31,2,12,2,19,2,8,3,3],Maps.LEFT,"roryD",[],null,[],[]);
      
      public static var ross:NPC = new NPC("ross","mharr",[2,0,3,11,2,5,4,19,6,4,2,2],Maps.RIGHT,"rossD",[],null,[],[]);
      
      public static var pam:NPC = new NPC("pam","fsigh2",[2,13,14,10,2,10,2,42,2,5,33,2],Maps.RIGHT,"pamD",[],null,[],[]);
      
      public static var ned:NPC = new NPC("ned","mhello",[2,10,6,12,3,2,2,6,2,10,2,2],Maps.LEFT,"nedD",[],null,[],[]);
      
      public static var tandalf:NPC = new NPC("tandalf","mahh",[5,9,4,24,2,2,16,4,2,11,17,2],Maps.RIGHT,"tandalfD",[],null,[],[],Flags.TOWN_3_REACHED,0);
      
      public static var randalf:NPC = new NPC("randalf","omhello",[2,0,3,9,2,6,15,14,2,19,20,2],Maps.LEFT,"randalfD",[],null,[],[],Flags.TOWN_3_REACHED,0);
      
      public static var herald:NPC = new NPC("herald","mgrr",[4,9,14,11,2,3,22,18,2,10,12,4],Maps.LEFT,"heraldD",[],null,[],[],Flags.CYCLOPS_DEFEATED,0);
      
      public static var heraldB:NPC = new NPC("herald","mgrr",[4,9,14,11,2,3,22,18,2,10,12,4],Maps.RIGHT,"heraldD2",[],null,[],[],Flags.NATZ_KIDNAPPED,0);
      
      public static var wohehiv:NPC = new NPC("wohehiv","mahh",[4,3,17,33,2,11,50,4,2,12,12,2],Maps.RIGHT,null,"wohehivQ",null,[Items.wood,5,Summons.IdolWood,1],[Items.starball,1,Spells.ivy,1,Items.riceball,1],Flags.TOTEM_BUILT,0);
      
      public static var wohehivB:NPC = new NPC("wohehiv","mahh",[4,3,17,8,2,11,50,4,2,12,33,2],Maps.LEFT,"wohehivD",[],null,[],[]);
      
      public static var winona:NPC = new NPC("winona","bsigh",[4,3,15,5,2,10,50,29,2,12,31,2],Maps.LEFT,"winonaD",[],null,[],[]);
      
      public static var makya:NPC = new NPC("makya","maww",[4,3,7,40,3,10,50,18,3,12,14,9],Maps.LEFT,"makyaD",[],null,[],[],Flags.NATZ_KIDNAPPED,0);
      
      public static var hania:NPC = new NPC("hania","mharr",[4,0,22,25,2,8,2,18,2,8,3,2],Maps.RIGHT,"haniaD",[],null,[],[],Flags.CYCLOPS_DEFEATED,0);
      
      public static var watson:NPC = new NPC("watson","mhowdy",[4,4,3,14,2,2,24,5,2,12,50,2],Maps.RIGHT,"watsonD",[],null,[],[]);
      
      public static var shop1:NPC = new NPC("","",[4,6,5,7,2,12,2,52,2,20,20,2],Maps.DOWN,"",[],null,[],[]);
      
      public static var annie:NPC = new NPC("annie","fsigh3",[2,3,14,9,2,10,58,46,2,4,17,2],Maps.LEFT,"annieD",[],null,[],[]);
      
      public static var shop2:NPC = new NPC("sadie","farr",[2,1,16,10,2,12,45,62,2,8,34,2],Maps.RIGHT,"sadieD",[],null,[],[]);
      
      public static var byrd:NPC = new NPC("byrd","mhello3",[6,3,19,33,2,2,11,2,2,4,2,2],Maps.RIGHT,"byrdD",[],null,[],[]);
      
      public static var linwood:NPC = new NPC("linwood","mhey3",[3,2,12,32,7,3,3,2,2,2,30,2],Maps.LEFT,"linwoodD","linwoodD2",Items.raft,[],[Items.beer,10,Items.cola,10,Items.energy,10]);
      
      public static var pickle:NPC = new NPC("pickle","mahh",[2,16,5,7,2,5,2,2,2,18,33,2],Maps.LEFT,"pickleD",[],null,[],[]);
      
      public static var bud:NPC = new NPC("bud","mchow",[13,17,7,13,2,2,2,6,4,5,15,2],Maps.RIGHT,"budD",[],null,[],[]);
      
      public static var jimbo:NPC = new NPC("jimbo","mhey2",[2,26,6,6,2,2,2,28,7,4,36,2],Maps.RIGHT,"jimboD",[],null,[],[]);
      
      public static var donald:NPC = new NPC("donald","mhmm",[13,27,4,40,2,2,19,6,2,5,24,2],Maps.DOWN,"donaldD",[],null,[],[],Items.bluejewel,0);
      
      public static var donaldB:NPC = new NPC("cultist","evil3",[13,27,4,40,2,2,61,6,2,5,2,8],Maps.DOWN,"cultistD",[],null,[],[],Items.bluejewel,1);
      
      public static var yiffy:NPC = new NPC("yiffy","fhey",[2,14,16,24,2,10,46,61,2,8,2,2],Maps.RIGHT,"yiffyD","yiffyD2",Items.raft,[],[]);
      
      public static var lynne:NPC = new NPC("lynne","farr",[2,10,20,5,2,10,51,56,2,20,34,2],Maps.LEFT,"lynneD",[],null,[],[]);
      
      public static var thief:NPC = new NPC("thief","mscream",[2,0,8,49,10,2,2,28,2,13,2,2],Maps.UP,"thiefD",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var cultist1:NPC = new NPC("cultist","evil3",[13,3,12,54,2,2,61,24,2,4,2,2],Maps.LEFT,"cultistD",[],null,[],[]);
      
      public static var cultist2:NPC = new NPC("cultist","evil3",[3,3,20,54,2,2,61,61,2,2,2,2],Maps.RIGHT,"cultist2D",[],null,[],[]);
      
      public static var cultist3:NPC = new NPC("cultist","evil3",[5,3,5,54,2,3,61,15,2,8,6,2],Maps.RIGHT,"cultist3D",[],null,[],[]);
      
      public static var cultist4:NPC = new NPC("cultist","evil2",[13,3,13,54,2,2,62,11,2,8,7,2],Maps.LEFT,"cultist4D",[],null,[],[]);
      
      public static var maskerE:NPC = new NPC("cultist","breath",[12,13,6,4,2,12,59,55,2,20,19,2],Maps.RIGHT,"maskerED",[],null,[],[],Flags.CYCLOPS_DEFEATED,0);
      
      public static var guardA:NPC = new NPC("guardA","mhm",[4,3,3,48,2,7,21,8,2,17,4,5],Maps.DOWN,"guardAD",[],null,[],[],Flags.MIN_MEDALS,0);
      
      public static var guardAB:NPC = new NPC("guardA","mhm",[4,3,3,48,2,7,21,8,2,17,4,5],Maps.DOWN,"guardAD2",[],null,[],[],Flags.MAX_MEDALS,0);
      
      public static var guardB:NPC = new NPC("guardB","ghello",[4,10,5,5,2,12,21,8,2,17,7,5],Maps.DOWN,"guardBD",[],null,[],[],Flags.MIN_MEDALS,0);
      
      public static var guardBB:NPC = new NPC("guardB","ghello",[4,10,5,5,2,12,21,8,2,17,7,5],Maps.DOWN,"guardBD",[],null,[],[],Flags.MAX_MEDALS,0);
      
      public static var leonidas:NPC = new NPC("leonidas","mharr",[3,10,2,39,2,4,33,27,2,3,4,5],Maps.UP,"leonidasD",[],null,[],[],Flags.LEO_MEDALS,0);
      
      public static var leonidasB:NPC = new NPC("leonidas","mharr",[3,10,2,39,2,4,33,27,2,3,4,5],Maps.RIGHT,"leonidasD2",[],null,[],[],Flags.LEO_MEDALS,1);
      
      public static var gimli:NPC = new NPC("gimli","msigh",[6,2,9,18,2,2,2,15,2,4,5,2],Maps.UP,"gimliD",[],null,[],[],Flags.GIM_MEDALS,0);
      
      public static var gimliB:NPC = new NPC("gimli","msigh",[6,2,9,20,2,2,2,15,2,4,5,2],Maps.LEFT,"gimliD2",[],null,[],[],Flags.GIM_MEDALS,1);
      
      public static var dao:NPC = new NPC("dao","mcough",[7,26,16,22,2,2,19,6,2,5,10,2],Maps.UP,"daoD",[],null,[],[],Flags.DAO_MEDALS,0);
      
      public static var daoB:NPC = new NPC("dao","mcough",[7,26,16,22,2,2,19,6,2,5,10,2],Maps.LEFT,"daoD2",[],null,[],[],Flags.DAO_MEDALS,1);
      
      public static var manlet:NPC = new NPC("manlet","mhey",[2,5,4,38,2,11,9,22,2,12,7,5],Maps.UP,"manletD",[],null,[],[],Flags.MAN_MEDALS,0);
      
      public static var manletB:NPC = new NPC("manlet","mhey",[2,5,4,48,2,11,9,22,6,12,2,2],Maps.LEFT,"manletD2",[],null,[],[],Flags.MAN_MEDALS,1);
      
      public static var xun:NPC = new NPC("xun","mweary",[2,0,5,5,2,8,13,29,3,12,14,2],Maps.RIGHT,"xunD",[],null,[],[]);
      
      public static var jam:NPC = new NPC("jam","mhey2",[2,23,3,5,5,2,2,33,2,13,21,2],Maps.LEFT,"jamD",[],null,[],[],Flags.TANK_DEFEATED,1);
      
      public static var princess:NPC = new NPC("princess","cyay",[2,14,17,9,2,12,47,38,2,15,53,2],Maps.LEFT,"princessD",[],null,[],[],Flags.GOLD_ENTERED,0);
      
      public static var princessB:NPC = new NPC("princess","bbcry",[2,14,17,32,2,12,47,38,2,2,2,2],Maps.RIGHT,"princessD2",[],null,[],[],Flags.GOLD_ENTERED,1);
      
      public static var raymond:NPC = new NPC("raymond","omyes",[2,0,10,24,3,12,2,15,2,8,6,2],Maps.RIGHT,"raymondD",[],null,[],[],Flags.MAX_MEDALS,0);
      
      public static var raymondB:NPC = new NPC("raymond","omyes",[2,0,10,24,3,12,2,15,2,8,6,2],Maps.RIGHT,"raymondD2",[],null,[],[],Flags.TANK_DEFEATED,1);
      
      public static var helen:NPC = new NPC("helen","owhello",[2,0,20,9,3,12,2,55,2,20,19,2],Maps.LEFT,"helenD",[],null,[],[]);
      
      public static var knut:NPC = new NPC("knut","mweary",[4,1,19,22,2,9,55,18,2,12,3,3],Maps.LEFT,"knutD",[],null,[],[]);
      
      public static var arne:NPC = new NPC("arne","mcough",[10,9,4,33,2,10,40,18,2,12,49,2],Maps.RIGHT,"arneD",[],null,[],[]);
      
      public static var haniaB:NPC = new NPC("hania","mharr",[4,0,22,39,2,9,2,18,2,8,3,2],Maps.RIGHT,"haniaD2",[],null,[],[]);
      
      public static var jorma:NPC = new NPC("jorma","mhello",[3,4,3,5,2,10,55,18,2,6,43,6],Maps.RIGHT,null,"jormaQ",null,[Items.stick,6,Items.iron,6],[Spells.sawblade,1,Items.seashell,8,Items.chicken,1]);
      
      public static var erika:NPC = new NPC("erika","fsigh",[2,17,16,19,3,11,58,60,2,5,31,2],Maps.RIGHT,null,"erikaQ",null,[Items.herb,15,Items.root,5,Items.flower,3],[Spells.gaiaglow,1,Items.mint,1]);
      
      public static var jonathan:NPC = new NPC("jonathan","mgrumpy",[2,13,9,38,6,2,2,7,2,11,55,2],Maps.RIGHT,"jonathanD",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var jenny:NPC = new NPC("jenny","gscream",[2,16,18,46,2,2,2,62,2,7,56,2],Maps.LEFT,"jennyD",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var helmut:NPC = new NPC("helmut","ryeah2",[13,3,4,6,2,2,25,21,12,8,2,2],Maps.LEFT,"helmutD",[],null,[],[],Flags.NATZ_KIDNAPPED,0);
      
      public static var heinz:NPC = new NPC("heinz","mhmm",[13,5,3,10,2,2,8,21,2,8,2,2],Maps.RIGHT,"heinzD",[],null,[],[],Flags.NATZ_KIDNAPPED,0);
      
      public static var hans:NPC = new NPC("hans","mgrunt",[13,5,6,11,2,5,2,21,2,8,25,7],Maps.LEFT,"hansD",[],null,[],[],Flags.NATZ_KIDNAPPED,0);
      
      public static var helmutC:NPC = new NPC("helmut","mweary",[6,3,4,15,2,2,2,21,2,8,57,2],Maps.LEFT,"helmutD3",[],null,[],[],Flags.TANK_DEFEATED,1);
      
      public static var heinzC:NPC = new NPC("heinz","mcry",[2,5,3,32,2,2,8,21,2,2,2,2],Maps.LEFT,"heinzD3",[],null,[],[],Flags.TANK_DEFEATED,1);
      
      public static var hansC:NPC = new NPC("hans","msigh",[2,5,6,22,2,5,2,21,2,8,2,2],Maps.RIGHT,"hansD3",[],null,[],[],Flags.TANK_DEFEATED,1);
      
      public static var xavi:NPC = new NPC("xavi","mhey2",[6,3,5,10,3,2,2,7,2,4,33,2],Maps.LEFT,null,"xaviQ",null,[Items.musicCD,6,Items.energy,1],[Spells.powermetal,1,Items.cpu,1,Items.plastic,8]);
      
      public static var rebel:NPC = new NPC("rebel","ryeah",[13,0,2,2,2,2,6,17,2,8,2,2],Maps.RIGHT,null,"rebelQ",null,[Items.shuriken,10,Items.headband,1],[Spells.laserblade,1,Items.gear,3,Items.spring,3],Flags.BANNERS_DOWN,0);
      
      public static var helmutB:NPC = new NPC("helmut","mweary",[6,3,4,6,2,2,8,21,12,8,2,2],Maps.RIGHT,"helmutD2",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var heinzB:NPC = new NPC("heinz","mhmm",[13,5,3,10,2,2,8,21,2,8,2,2],Maps.RIGHT,"heinzD2",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var hansB:NPC = new NPC("hans","mgrunt",[13,5,6,11,2,5,2,21,2,8,25,7],Maps.LEFT,"hansD2",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var maskerD:NPC = new NPC("cultist","breath",[6,16,20,4,2,12,59,47,2,3,29,2],Maps.RIGHT,"maskerDD",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var hikari:NPC = new NPC("hikari","fyawn",[2,5,21,33,2,10,2,36,2,18,51,2],Maps.LEFT,"hikariD",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var bella:NPC = new NPC("bella","farr",[3,26,17,17,2,11,2,50,2,20,20,2],Maps.RIGHT,"bellaD",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var karen:NPC = new NPC("karen","fsigh2",[6,16,22,40,2,12,2,39,2,8,2,2],Maps.LEFT,"karenD",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var yui:NPC = new NPC("yui","fsigh",[13,3,5,13,2,11,28,26,2,8,2,2],Maps.LEFT,"yuiD",[],null,[],[]);
      
      public static var asahi:NPC = new NPC("asahi","mhey",[13,1,4,9,3,2,28,26,2,8,2,2],Maps.RIGHT,"asahiD",[],null,[],[]);
      
      public static var akira:NPC = new NPC("akira","ryeah2",[13,22,3,16,4,2,28,26,2,8,33,2],Maps.RIGHT,null,"akiraQ",null,[Items.mail,1],[Spells.blackhole,1,Items.rubberboots,1,Items.pill,1]);
      
      public static var abdul:NPC = new NPC("abdul","mgasp",[6,2,12,39,2,6,11,4,2,12,2,2],Maps.RIGHT,"abdulD",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var leo:NPC = new NPC("leo","mharr",[2,1,13,15,2,3,2,29,2,9,2,2],Maps.RIGHT,"leoD",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var jerry:NPC = new NPC("jerry","omhello",[4,0,7,15,2,5,2,24,2,8,2,2],Maps.LEFT,"jerryD",[],null,[],[],Flags.TANK_DEFEATED,0);
      
      public static var tim:NPC = new NPC("tim","mhello",[2,10,6,28,3,11,2,26,2,8,48,2],Maps.LEFT,"timD",[],null,[],[]);
      
      public static var pablo:NPC = new NPC("pablo","msigh",[4,1,3,15,6,3,2,2,2,12,45,2],Maps.LEFT,null,"pabloQ",null,[Items.wool,20,Items.sock1,1,Items.sock2,1],[Spells.reflex,1,Items.herb,3]);
      
      public static var randy:NPC = new NPC("randy","maww",[2,16,10,38,2,2,2,29,2,4,48,6],Maps.LEFT,null,"randyQ",null,[Items.plank,10,Items.coffee,1],[Spells.annihilate,1,Items.shuriken,5],Flags.HOUSE_BUILT,0);
      
      public static var randyB:NPC = new NPC("randy","mhowdy",[2,16,10,12,2,2,2,29,2,4,30,2],Maps.RIGHT,"randyB",[],null,[],[]);
      
      public static var lenk:NPC = new NPC("lenk","mhey",[2,5,6,15,2,12,40,32,3,12,14,2],Maps.LEFT,null,"lenkQ",null,[Items.ocarina,1,Items.headband,1],[Spells.air,1,Items.grapes,1,Items.bread,1]);
      
      public static var weeb:NPC = new NPC("weeb","mthink",[2,23,3,13,2,2,18,5,2,12,24,7],Maps.RIGHT,null,"weebQ",null,[Items.battery,10],[Spells.bullet,1,Items.gear,5,Items.gamechild,1],Items.raft,1);
      
      public static var shop3:NPC = new NPC("","",[2,1,20,22,2,12,2,46,2,7,2,2],Maps.DOWN,"",[],null,[],[]);
      
      public static var ronja:NPC = new NPC("ronja","gscream",[2,4,13,12,3,10,2,46,2,7,57,2],Maps.DOWN,"ronjaD",[],null,[],[]);
      
      public static var rock:NPC = new NPC("rock","mhm",[4,10,8,22,2,2,2,6,2,14,57,2],Maps.LEFT,"rockD",[],null,[],[]);
      
      public static var june:NPC = new NPC("june","fsigh2",[14,14,14,19,2,11,38,49,2,8,2,2],Maps.RIGHT,"juneD",[],null,[],[]);
      
      public static var grump:NPC = new NPC("grump","mgrunt",[6,26,7,39,2,2,2,27,2,12,4,2],Maps.LEFT,"grumpD","grumpD",{"quantity":1},[],[],Flags.STEEL_STOLEN,1);
      
      public static var shop4:NPC = new NPC("","",[3,22,5,28,2,10,54,37,2,14,33,2],Maps.RIGHT,"",[],null,[],[]);
      
      public static var jolly:NPC = new NPC("jolly","mhello3",[2,3,3,9,2,10,29,33,2,9,21,2],Maps.LEFT,"jollyD",[],null,[],[]);
      
      public static var girlA:NPC = new NPC("girlA","fsigh3",[2,3,17,5,3,10,2,40,2,9,33,2],Maps.LEFT,"girlAD",[],null,[],[]);
      
      public static var girlB:NPC = new NPC("girlB","ghello2",[2,10,18,6,2,12,40,41,2,12,37,2],Maps.RIGHT,"girlBD",[],null,[],[]);
      
      public static var girlC:NPC = new NPC("girlC","ghello",[2,16,12,9,5,12,2,40,2,10,2,2],Maps.RIGHT,"girlCD",[],null,[],[]);
      
      public static var mom:NPC = new NPC("mom","fahh",[2,18,16,13,2,11,44,61,2,8,35,2],Maps.RIGHT,"momD","momD2",Flags.TOWN_3_REACHED,[],[]);
      
      public static var dad:NPC = new NPC("dad","mchow",[4,19,4,10,5,6,2,5,2,12,31,2],Maps.LEFT,"dadD","dadD2",Flags.TOWN_3_REACHED,[],[]);
      
      public static var jamie:NPC = new NPC("jamie","mgrunt",[12,1,4,39,2,7,2,15,2,6,5,2],Maps.RIGHT,"jamieD",[],null,[],[],Items.redjewel,0);
      
      public static var jamieB:NPC = new NPC("cultist","evil2",[13,1,4,39,2,7,62,15,2,8,5,2],Maps.RIGHT,"cultistD",[],null,[],[],Items.redjewel,1);
      
      public static var thiefB:NPC = new NPC("thief","mscream",[2,0,8,49,10,2,2,28,2,13,2,2],Maps.UP,"thiefD2",[],null,[],[],Items.raft,0);
      
      public static var cultist5:NPC = new NPC("cultist","evil3",[13,3,13,54,2,2,61,29,2,12,47,2],Maps.RIGHT,"cultist5D",[],null,[],[]);
      
      public static var cultist6:NPC = new NPC("cultist","evil2",[13,1,17,54,2,2,62,50,2,20,35,2],Maps.RIGHT,"cultist6D",[],null,[],[]);
      
      public static var karenB:NPC = new NPC("karen","fsigh2",[6,16,22,40,2,12,2,39,2,8,2,2],Maps.DOWN,[],"karenD2",{"quantity":1},[],[Items.milk,1,Items.cake,1,Items.espresso,1]);
      
      public static var hikariB:NPC = new NPC("hikari","fahh",[2,5,21,8,2,10,2,40,2,7,53,2],Maps.RIGHT,"hikariD2",[],null,[],[],Flags.TOWN_3_REACHED,0);
      
      public static var steve:NPC = new NPC("steve","mhey",[2,4,5,31,2,12,18,4,2,8,23,2],Maps.LEFT,"steveD",[],null,[],[]);
      
      public static var gal:NPC = new NPC("gal","fhey",[13,13,19,9,2,11,20,15,2,4,6,4],Maps.LEFT,"galD","galD2",Items.raft,[],[Items.bacon,1,Items.chips,1,Items.energy,1]);
      
      public static var pal:NPC = new NPC("pal","mgasp",[13,9,3,30,2,2,21,8,2,17,7,5],Maps.RIGHT,"palD",[],null,[],[]);
      
      public static var sarah:NPC = new NPC("sarah","fsigh3",[2,18,18,13,2,10,49,60,2,5,37,2],Maps.RIGHT,"sarahD",[],null,[],[]);
      
      public static var mioC:NPC = new NPC("mio","fyawn",[2,12,14,10,2,12,57,46,2,3,2,2],Maps.RIGHT,"mioD3",[],null,[],[],Items.raft,1);
      
      public static var misakiC:NPC = new NPC("misaki","ghello",[5,4,15,5,2,10,45,45,2,12,52,2],Maps.RIGHT,"misakiD3",[],null,[],[],Items.raft,1);
      
      public static var chikaC:NPC = new NPC("chika","fchow",[12,3,16,42,2,10,51,47,2,8,2,2],Maps.LEFT,"chikaD3",[],null,[],[],Items.raft,1);
      
      public static var izumi:NPC = new NPC("izumi","fchow",[13,16,19,5,2,2,13,17,2,13,11,2],Maps.RIGHT,null,"izumiQ",null,[Summons.SlimeMouse,1,Summons.SlimeIcecream,1,Summons.SlimeBunny,1],[Equips.ninjaskirt,1,Spells.gale,1,Items.shuriken,20]);
      
      public static var drifty:NPC = new NPC("drifty","mchow",[3,27,7,10,3,5,2,3,2,3,30,6],Maps.RIGHT,"driftyD",[],null,[],[]);
      
      public static var angela:NPC = new NPC("angela","farr",[6,3,20,10,3,12,53,48,2,20,17,2],Maps.LEFT,null,"angelaQ",null,[Items.darkbottle,4,Items.holybottle,4],[Items.emptybottle,8,Spells.holyfire,1,Spells.revive,1]);
      
      public static var goth:NPC = new NPC("goth","bsigh",[9,17,5,11,2,11,32,28,2,8,29,2],Maps.LEFT,null,"gothQ",null,[Items.chocolate,3,Items.headband,1,Items.spike,3],[Spells.screamer,1,Items.rune,1,Items.bread,1]);
      
      public static var necron:NPC = new NPC("necron","growl2",[9,0,19,53,2,11,32,11,2,4,20,2],Maps.LEFT,null,"necronD",{"quantity":1},[],[Items.halloweencandy,10,Items.rune,2],Flags.HALLOWEEN,1);
      
      public static var tribe1:NPC = new NPC("cultist","growl2",[2,3,3,9,2,11,10,29,3,2,14,9],Maps.LEFT,"tribe1D",[],null,[],[]);
      
      public static var tribe2:NPC = new NPC("cultist","growl",[13,16,3,9,2,4,10,18,2,3,2,2],Maps.RIGHT,"tribe2D",[],null,[],[]);
      
      public static var tribe3:NPC = new NPC("cultist","growl2",[6,11,3,30,2,2,10,18,2,2,4,5],Maps.LEFT,"tribe3D",[],null,[],[]);
      
      public static var tribe4:NPC = new NPC("cultist","growl",[4,9,18,2,2,2,10,62,2,2,29,2],Maps.RIGHT,"tribe4D",[],null,[],[]);
      
      public static var maskerC:NPC = new NPC("cultist","breath",[13,16,11,4,2,12,59,29,2,4,9,3],Maps.RIGHT,"maskerCD",[],null,[],[],Flags.NEST_DEFEATED,0);
      
      public static var mio:NPC = new NPC("mio","fyawn",[2,12,14,10,2,12,57,46,2,3,2,2],Maps.RIGHT,"mioD",[],null,[],[],Flags.HAUNTED_WOODS,0);
      
      public static var misaki:NPC = new NPC("misaki","ghello",[5,4,15,9,2,10,45,45,2,12,2,2],Maps.RIGHT,"misakiD",[],null,[],[],Flags.HAUNTED_WOODS,0);
      
      public static var chika:NPC = new NPC("chika","fchow",[12,3,16,42,2,10,51,47,2,8,2,2],Maps.LEFT,"chikaD",[],null,[],[],Flags.HAUNTED_WOODS,0);
      
      public static var mioB:NPC = new NPC("mio","zombie",[9,12,14,50,2,2,57,46,2,2,2,2],Maps.RIGHT,"mioD2",[],null,[],[],Items.raft,0);
      
      public static var misakiB:NPC = new NPC("misaki","zombie",[9,4,15,53,2,2,45,45,2,2,50,2],Maps.LEFT,"misakiD2",[],null,[],[],Items.raft,0);
      
      public static var chikaB:NPC = new NPC("chika","zombie",[9,3,16,51,2,2,51,47,2,2,2,2],Maps.LEFT,"chikaD2",[],null,[],[],Items.raft,0);
      
      public static var jonathanB:NPC = new NPC("jonathan","mgrumpy",[2,13,9,40,6,2,2,7,2,11,26,2],Maps.RIGHT,"jonathanD2",[],null,[],[]);
      
      public static var jennyB:NPC = new NPC("jenny","fshiver",[2,16,18,21,2,2,2,62,2,7,56,2],Maps.LEFT,"jennyD2",[],null,[],[]);
      
      public static var bellaB:NPC = new NPC("bella","farr",[3,26,17,17,2,11,2,50,2,20,20,2],Maps.DOWN,"bellaD2",[],null,[],[]);
      
      public static var monika:NPC = new NPC("monika","owhello",[3,1,18,9,5,11,16,52,2,20,18,2],Maps.LEFT,"monikaD",[],null,[],[]);
      
      public static var spike:NPC = new NPC("spike","mgrumpy",[3,26,5,10,2,12,22,9,2,10,13,4],Maps.LEFT,"spikeD",[],null,[],[]);
      
      public static var shaggy:NPC = new NPC("shaggy","mcough",[2,6,3,4,6,4,51,7,2,3,28,2],Maps.RIGHT,"shaggyD",[],null,[],[]);
      
      public static var hippy:NPC = new NPC("hippy","mhello",[2,9,12,24,6,3,2,28,11,12,2,2],Maps.RIGHT,"hippyD",[],null,[],[]);
      
      public static var maya:NPC = new NPC("maya","faloha",[6,25,17,39,2,2,2,62,2,2,40,2],Maps.RIGHT,null,"mayaQ",null,[Items.stonehead,3,Items.seashell,15,Items.sapphire,3],[Items.stonehead,3,Spells.tsunami,1,Items.starball,1]);
      
      public static var kai:NPC = new NPC("kai","fhey2",[3,25,16,10,2,2,46,3,3,7,14,2],Maps.LEFT,"kaiD",[],null,[],[]);
      
      public static var finn:NPC = new NPC("finn","mcry",[4,5,13,32,2,2,2,7,2,3,42,2],Maps.RIGHT,"finnD",[],null,[],[]);
      
      public static var fizz:NPC = new NPC("fizz","bhello",[13,17,5,9,2,11,22,10,2,5,8,3],Maps.LEFT,null,"fizzQ",null,[Items.flute,1,Items.chips,1,Items.cola,1],[Spells.bubbleringP,1,Items.grapes,1]);
      
      public static var aniki:NPC = new NPC("aniki","mgrunt",[4,23,7,24,9,2,2,2,7,3,2,2],Maps.LEFT,null,"anikiQ",null,[Items.titanium,1,Items.gear,10,Items.steel,10],[Spells.teradrill,1,Items.egg,1]);
      
      public static var infernus:NPC = new NPC("infernus","mhey",[3,24,7,12,2,2,2,31,2,2,20,2],Maps.LEFT,"infernusD","infernusD2",Flags.GOLEM_DEFEATED,[],[]);
      
      public static var king:NPC = new NPC("king","mhmm",[8,23,13,10,10,11,42,3,2,13,38,2],Maps.RIGHT,null,"kingQ",null,[Items.popcorn,8],[Spells.abzero,1,Items.bread,1,Items.bacon,1]);
      
      public static var alva:NPC = new NPC("alva","fcry",[8,0,19,26,2,10,2,15,2,2,6,4],Maps.RIGHT,"alvaD",[],null,[],[]);
      
      public static var gray:NPC = new NPC("gray","mweary",[8,1,12,29,2,8,2,21,2,13,6,2],Maps.LEFT,"grayD",[],null,[],[]);
      
      public static var anon:NPC = new NPC("anon","none",[8,3,19,2,2,2,2,7,2,13,29,2],Maps.RIGHT,"anonD",[],null,[],[]);
      
      public static var ika:NPC = new NPC("ika","fshiver",[8,23,17,37,2,2,39,37,2,14,21,2],Maps.RIGHT,"ikaD",[],null,[],[]);
      
      public static var santa:NPC = new NPC("santa","omhello",[14,0,12,10,2,6,14,12,2,7,33,2],Maps.RIGHT,null,"santaD",{"quantity":1},[],[Items.candycane,10,Items.espresso,2,Items.starfragment,1],Flags.CHRISTMAS,1);
      
      public static var stephanie:NPC = new NPC("stephanie","owhello",[2,22,20,9,2,10,51,58,2,15,52,2],Maps.LEFT,"stephanieD",[],null,[],[]);
      
      public static var jekyl:NPC = new NPC("jekyl","mcry",[8,2,5,25,2,2,2,5,2,10,12,4],Maps.RIGHT,"jekylD","jekylD2",Flags.GOLEM_DEFEATED,[],[]);
      
      public static var tina:NPC = new NPC("tina","fsigh3",[12,27,18,20,2,11,44,53,2,20,19,2],Maps.LEFT,"tinaD",[],null,[],[]);
      
      public static var gina:NPC = new NPC("gina","ghello",[12,22,17,19,2,11,44,54,4,20,16,2],Maps.RIGHT,null,"ginaQ",null,[Items.panties,3,Items.burger,3,Items.coffee,3],[Spells.supernova,1,Items.starball,1,Items.snowball,3]);
      
      public static var maskerA:NPC = new NPC("cultist","breath",[13,2,13,33,2,9,59,21,2,8,20,2],Maps.RIGHT,"maskerAD",[],null,[],[],Flags.GOLEM_DEFEATED,0);
      
      public static var maskerB:NPC = new NPC("cultist","breath",[13,2,18,33,2,2,59,39,2,8,29,2],Maps.LEFT,"maskerBD",[],null,[],[],Flags.GOLEM_DEFEATED,0);
      
      public static var emo:NPC = new NPC("emo","bhello",[11,3,3,18,2,12,48,28,2,7,18,2],Maps.DOWN,"emoD",[],null,[],[]);
      
      public static var ghost:NPC = new NPC("ghost","none",[11,0,19,2,2,2,35,36,2,20,29,2],Maps.RIGHT,"ghostD",[],null,[],[]);
      
      public static var vivy:NPC = new NPC("vivy","fsigh3",[12,25,20,13,2,12,40,55,2,20,29,2],Maps.LEFT,"vivyD",[],null,[],[]);
      
      public static var rick:NPC = new NPC("rick","mhowdy2",[7,3,10,24,6,6,2,24,2,12,23,2],Maps.RIGHT,"rickD",[],null,[],[]);
      
      public static var anton:NPC = new NPC("anton","mhowdy",[2,1,4,22,3,2,24,4,2,9,27,2],Maps.RIGHT,"antonD",[],null,[],[]);
      
      public static var jessica:NPC = new NPC("jessica","fhmm",[2,16,14,40,3,12,54,31,2,18,26,2],Maps.RIGHT,null,"jessicaQ",null,[Items.cookie,4,Items.milkbottle,4,Items.chips,4],[Items.emptybottle,4,Spells.deathmetal,1,Items.pizza,1]);
      
      public static var helmutD:NPC = new NPC("helmut","mweary",[6,3,4,19,2,11,2,30,2,10,2,2],Maps.DOWN,"helmutD4",[],null,[],[]);
      
      public static var hobo:NPC = new NPC("hobo","msigh",[3,2,12,15,7,3,2,29,2,2,54,2],Maps.RIGHT,"hoboD",[],null,[],[]);
      
      public static var george:NPC = new NPC("george","mhmm",[12,5,5,11,3,5,47,20,2,6,12,4],Maps.RIGHT,"georgeD",[],null,[],[]);
      
      public static var shione:NPC = new NPC("shione","fsigh3",[2,16,21,22,2,10,2,43,2,18,52,2],Maps.LEFT,null,"shioneQ",null,[Items.magazine,1,Items.gamechild,1,Items.cookie,1],[Spells.firespin,1,Items.starfragment,1,Items.satin,5]);
      
      public static var thiefC:NPC = new NPC("thief","mhey",[2,0,8,49,10,2,2,28,2,13,2,2],Maps.LEFT,"thiefD3",[],null,[],[]);
      
      public static var nemi:NPC = new NPC("nemi","fsigh",[2,3,17,22,2,10,38,49,2,11,36,2],Maps.LEFT,"nemiD","nemiD2",Flags.RAPTURE_REACHED,[],[]);
      
      public static var bubba:NPC = new NPC("bubba","mgrumpy",[2,27,3,5,2,11,13,18,5,9,36,2],Maps.UP,"bubbaD",[],null,[],[]);
      
      public static var barman:NPC = new NPC("barman","mhey2",[13,9,3,14,2,2,2,4,2,8,34,2],Maps.LEFT,"barmanD",[],null,[],[]);
      
      public static var hikariC:NPC = new NPC("hikari","fcry",[2,5,21,25,2,10,2,62,2,4,27,2],Maps.RIGHT,"hikariD3",[],null,[],[]);
      
      public static var roku:NPC = new NPC("roku","mcry",[2,3,7,32,2,2,2,13,2,14,2,2],Maps.RIGHT,null,"rokuQ",null,[Items.starball,7],[Items.grail,1,Spells.sevenswords,1,Items.starfragment,1],Flags.HOUSE_BOMBED,1);
      
      public static var rokuB:NPC = new NPC("roku","mhey",[2,3,7,8,2,2,2,13,2,14,2,2],Maps.RIGHT,"rokuD",[],null,[],[],Flags.HOUSE_BOMBED,2);
      
      public static var albrecht:NPC = new NPC("albrecht","mcough",[13,3,4,39,4,7,8,21,10,7,37,2],Maps.RIGHT,null,"albrechtQ",null,[Items.darkmatter,1,Items.plutonium,1,Items.powder,30],[Spells.energy,1,Items.pill,1,Items.potato,1],Flags.HOUSE_BOMBED,0);
      
      public static var cultist7:NPC = new NPC("cultist","evil3",[9,23,3,40,2,10,61,30,2,2,2,2],Maps.LEFT,"cultist7D",[],null,[],[]);
      
      public static var cultist8:NPC = new NPC("cultist","evil2",[13,25,8,40,2,10,62,33,2,6,8,2],Maps.RIGHT,"cultist8D",[],null,[],[]);
      
      public static var maskerF:NPC = new NPC("cultist","breath",[3,16,22,4,2,12,59,46,2,3,47,2],Maps.RIGHT,"maskerFD",[],null,[],[]);
      
      public static var falcon:NPC = new NPC("falcon","mweary",[12,10,4,22,3,5,29,5,9,9,57,2],Maps.LEFT,"falconD",[],null,[],[]);
      
      public static var smokey:NPC = new NPC("smokey","mcough",[3,10,4,30,2,8,16,20,2,12,31,2],Maps.RIGHT,"smokeyD",[],null,[],[]);
      
      public static var kirsan:NPC = new NPC("kirsan","mchow",[4,12,3,40,2,10,3,2,2,4,36,2],Maps.RIGHT,null,"kirsanQ",null,[Items.emptybottle,20,Items.beer,20],[Spells.rapture,1,Items.chicken,1,Items.cake,1]);
      
      public static var maka:NPC = new NPC("maka","ghello2",[12,27,15,31,2,12,2,2,2,13,47,2],Maps.RIGHT,null,"makaQ",null,[Items.titanium,1,Items.steel,20,Items.cpu,4],[Items.starball,1,Spells.deathP,1,Items.espresso,3]);
      
      public static var canela:NPC = new NPC("canela","fhey2",[2,12,16,3,2,2,50,15,4,13,15,2],Maps.LEFT,null,"canelaQ",null,[Items.keycard2,7],[Items.starball,1,Spells.guardian,1,Items.moonpearl,1],Flags.RAPTURE_REACHED,1);
      
      public static var wakizashi:NPC = new NPC("wakizashi","mharr",[13,0,13,39,2,5,2,5,6,9,10,2],Maps.RIGHT,null,"wakizashiQ",null,[Items.wood,20,Items.tape,20,Items.waterbottle,3],[Items.starball,1,Items.emptybottle,3,Spells.flare,1]);
      
      public static var peppi:NPC = new NPC("peppi","maww",[13,3,5,18,2,12,11,6,2,12,24,2],Maps.RIGHT,"peppiD",[],null,[],[]);
      
      public static var zephyr:NPC = new NPC("zephyr","mhmm",[10,3,14,18,2,2,41,11,2,4,32,2],Maps.RIGHT,"zephyrD",[],null,[],[],Items.bighammer,0);
      
      public static var sam:NPC = new NPC("sam","mhello3",[3,3,3,31,3,12,9,22,6,4,32,2],Maps.RIGHT,null,"samQ",null,[Items.lavabottle,5,Items.magma,10,Items.rune,5],[Items.emptybottle,5,Items.mail,1,Items.starball,1]);
      
      public static var sparky:NPC = new NPC("sparky","fahh",[13,13,19,9,2,11,21,8,2,8,7,5],Maps.LEFT,null,"sparkyQ",null,[Items.keycard,10],[Items.orangejuice,3,Items.turnip,1,Items.grapes,1],Flags.CAMP_BUILT,0);
      
      public static var sparkyB:NPC = new NPC("sparky","fahh",[13,13,19,13,2,11,21,8,2,8,2,2],Maps.LEFT,"sparkyD",[],null,[],[],Flags.CAMP_BUILT,1);
      
      public static var lulu:NPC = new NPC("lulu","fyawn",[12,10,15,31,2,2,40,61,2,13,20,2],Maps.RIGHT,"luluD",[],null,[],[]);
      
      public static var tandalfB:NPC = new NPC("tandalf","mahh",[5,9,4,24,2,2,16,4,2,11,17,2],Maps.RIGHT,"tandalfD2",[],null,[],[]);
      
      public static var randalfB:NPC = new NPC("randalf","omhello",[2,0,3,9,2,6,15,14,2,19,20,2],Maps.LEFT,"randalfD2",[],null,[],[]);
      
      public static var kira:NPC = new NPC("kira","ryeah2",[13,7,8,17,2,2,25,17,2,7,25,7],Maps.RIGHT,"kiraD",[],null,[],[]);
      
      public static var teru:NPC = new NPC("teru","ryeah",[13,7,11,17,2,2,25,17,2,7,28,7],Maps.LEFT,"teruD",[],null,[],[]);
      
      public static var dampe:NPC = new NPC("dampe","mahh",[3,15,6,19,2,12,2,24,2,3,44,2],Maps.LEFT,"dampeD",[],null,[],[]);
      
      public static var hawk:NPC = new NPC("hawk","mhmm",[4,8,22,11,7,2,2,5,2,7,14,9],Maps.LEFT,"hawkD",[],null,[],[]);
      
      public static var shioneB:NPC = new NPC("shione","fahh",[2,16,21,24,2,10,2,43,2,18,26,2],Maps.RIGHT,null,"shioneD",Flags.RAPTURE_REACHED,[],[Items.coffee,10,Items.cookie,1]);
      
      public static var wohehivC:NPC = new NPC("wohehiv","mahh",[4,3,17,8,4,11,50,4,3,12,14,9],Maps.RIGHT,null,"wohehivD2",Flags.RAPTURE_REACHED,[],[Items.garlic,22,Items.banana,11]);
      
      public static var samB:NPC = new NPC("sam","mhello3",[3,3,3,31,3,12,9,22,6,4,17,2],Maps.RIGHT,null,"samD",Flags.RAPTURE_REACHED,[],[Items.pretzel,2,Items.cloudberries,6]);
      
      public static var mungusC:NPC = new NPC("mungus","omyes",[2,1,12,20,5,8,4,19,2,9,13,2],Maps.LEFT,null,"mungusD2",Flags.RAPTURE_REACHED,[],[Items.sock1,1,Items.sock2,1]);
      
      public static var mollyB:NPC = new NPC("molly","fhey",[2,13,16,9,5,12,29,57,2,11,21,3],Maps.LEFT,null,"mollyD",Flags.RAPTURE_REACHED,[],[Items.cupcake,7,Items.chocolate,1]);
      
      public static var rebelB:NPC = new NPC("rebel","ryeah",[13,0,2,2,2,2,6,17,2,8,23,6],Maps.LEFT,null,"rebelD",Flags.RAPTURE_REACHED,[],[Items.chips,3,Items.burger,1,Items.crisps,2]);
      
      public static var anikiB:NPC = new NPC("aniki","mgrunt",[4,23,7,24,9,2,2,2,7,3,2,2],Maps.LEFT,null,"anikiD",Flags.RAPTURE_REACHED,[],[Items.sunglasses,1,Items.headband,1]);
      
      public static var sally:NPC = new NPC("sally","flaugh",[2,16,15,20,2,12,49,58,2,5,37,2],Maps.LEFT,null,"sallyQ",null,[Items.candycane,25,Items.pretzel,1],[Equips.santaoutfit,1,Equips.santaskirt,1,Items.espresso,1],Flags.CHRISTMAS,1);
      
      public static var bunni:NPC = new NPC("bunni","cyay",[2,16,18,33,2,10,34,36,2,2,53,2],Maps.LEFT,null,"bunniQ",null,[Items.easteregg,30,Items.coffee,1],[Equips.heavensvoice,1,Items.grail,1,Items.orangejuice,1],Flags.EASTER,1);
      
      public static var amy:NPC = new NPC("amy","fyawn",[11,14,17,13,2,11,56,35,2,18,51,2],Maps.LEFT,null,"amyQ",null,[Items.valentine,10,Items.cupcake,1],[Equips.loveblade,1,Items.diamond,1,Items.espresso,1],Flags.VALENTINES,1);
      
      public static var jack:NPC = new NPC("jack","zombie",[13,26,3,20,2,12,31,11,2,8,12,10],Maps.LEFT,null,"jackQ",null,[Items.halloweencandy,25,Items.pumpkin,3],[Equips.coatofteeth,1,Equips.spidergown,1,Items.pumpkin,20],Flags.HALLOWEEN,1);
      
      public static var lunar:NPC = new NPC("lunar","mahh",[12,3,6,13,2,2,2,63,2,4,2,2],Maps.LEFT,null,"lunarQ",null,[Items.map2,10,Items.powder,5],[Equips.coincharm,1,Spells.firecrackers,1,Items.gold,1],Flags.LUNAR,1);
      
      public static var odin:NPC = new NPC("odin","mharr",[2,0,5,40,2,3,23,27,2,9,3,3],Maps.LEFT,"odinD",[],null,[],[],Flags.SUPER_BOSSES_DEFEATED,0);
      
      public static var odinB:NPC = new NPC("odin","mthink",[2,0,5,7,2,3,23,27,2,9,3,3],Maps.LEFT,"odinD2",[],null,[],[],Flags.SUPER_BOSSES_DEFEATED,1);
      
      public static var bard:NPC = new NPC("bard","mhmm",[2,25,4,11,3,10,2,6,2,6,26,2],Maps.RIGHT,"bardD",[],null,[],[],Items.stepladder,1);
      
      public static var redA:NPC = new NPC("cultist","screech",[13,3,3,2,2,2,60,11,2,8,11,2],Maps.RIGHT,"redD1",[],null,[],[]);
      
      public static var redB:NPC = new NPC("cultist","screech",[13,3,5,2,2,2,60,11,2,8,32,2],Maps.RIGHT,"redD2",[],null,[],[]);
      
      public static var redC:NPC = new NPC("cultist","screech",[13,3,8,2,2,2,60,11,2,8,2,2],Maps.LEFT,"redD3",[],null,[],[]);
      
      public static var student:NPC = new NPC("student","mhello",[2,9,22,10,3,2,2,7,2,11,2,2],Maps.RIGHT,"studentD",[],null,[],[],Flags.TEMPLE_REACHED,0);
      
      public static var studentB:NPC = new NPC("student","mhello",[2,9,22,28,3,2,2,7,2,11,31,2],Maps.RIGHT,"studentD2",[],null,[],[],Flags.TEMPLE_REACHED,1);
      
      public static var wally:NPC = new NPC("wally","mhmm",[6,26,5,38,2,2,23,27,2,9,4,2],Maps.DOWN,"wallyD",[],null,[],[],Flags.DUNGEONS_UNLOCKED,0);
      
      public static var wallyB:NPC = new NPC("wally","mhmm",[6,26,5,38,2,2,23,27,2,9,4,2],Maps.RIGHT,"wallyD2",[],null,[],[],Flags.DUNGEONS_UNLOCKED,1);
      
      public static var garven:NPC = new NPC("garven","mthink",[5,3,22,22,2,2,11,31,6,8,2,2],Maps.RIGHT,"garvenD",[],null,[],[]);
      
      public static var frosty:NPC = new NPC("frosty","fhey2",[2,24,21,9,3,11,39,54,2,20,21,2],Maps.LEFT,"frostyD",[],null,[],[]);
      
      public static var larry:NPC = new NPC("larry","mhey",[10,12,6,10,2,2,2,2,2,3,39,2],Maps.RIGHT,"larryD",[],null,[],[],Flags.LAVA_SWITCH,0);
      
      public static var fanni:NPC = new NPC("fanni","farr",[2,27,15,18,2,11,55,16,2,9,3,2],Maps.DOWN,"fanniD","fanniD2",Flags.BOTH_SWITCH,[],[]);
      
      public static var bounce:NPC = new NPC("bounce","mhey",[13,16,3,33,2,12,19,6,2,12,24,2],Maps.RIGHT,"bounceD",[],null,[],[],Flags.DUNGEONS_UNLOCKED,0);
      
      public static var bounceB:NPC = new NPC("bounce","mhey",[13,16,3,33,2,12,19,6,2,12,24,2],Maps.RIGHT,"bounceD2",[],null,[],[],Flags.DUNGEONS_UNLOCKED,1);
      
      public static var krogan:NPC = new NPC("krogan","mhowdy2",[2,0,10,11,2,5,2,5,12,11,25,2],Maps.LEFT,"kroganD",[],null,[],[]);
      
      public static var gust:NPC = new NPC("gust","mharr",[2,1,7,39,7,3,2,24,2,7,48,2],Maps.RIGHT,"gustD",[],null,[],[]);
      
      public static var nasim:NPC = new NPC("nasim","mcry",[6,1,3,32,2,8,12,29,2,3,17,2],Maps.LEFT,"nasimD","nasimD2",Flags.SUPER_TANK_DEFEATED,[],[]);
      
      public static var slasher:NPC = new NPC("slasher","zombie",[9,20,6,53,2,2,40,29,2,2,35,2],Maps.LEFT,"slasherD",[],null,[],[],Flags.DUNGEONS_UNLOCKED,0);
      
      public static var slasherB:NPC = new NPC("slasher","zombie",[9,20,6,53,2,2,40,29,2,2,35,2],Maps.LEFT,"slasherD2",[],null,[],[],Flags.DUNGEONS_UNLOCKED,1);
      
      public static var vegan:NPC = new NPC("vegan","zombie",[9,25,17,52,2,12,2,60,2,5,31,2],Maps.RIGHT,"veganD",[],null,[],[]);
      
      public static var cutter:NPC = new NPC("cutter","growl",[9,9,4,53,2,2,28,26,2,2,8,2],Maps.RIGHT,"cutterD",[],null,[],[]);
      
      public static var goner:NPC = new NPC("goner","fcry",[9,9,21,52,2,2,49,56,2,20,2,2],Maps.RIGHT,"gonerD",[],null,[],[]);
      
      public static var ripper:NPC = new NPC("ripper","growl2",[9,2,3,51,2,2,32,30,2,3,29,2],Maps.RIGHT,"ripperD",[],null,[],[]);
      
      public static var sunny:NPC = new NPC("sunny","faloha",[13,5,17,33,2,12,21,16,2,17,10,5],Maps.RIGHT,"sunnyD",[],null,[],[],Flags.DUNGEONS_UNLOCKED,0);
      
      public static var sunnyB:NPC = new NPC("sunny","faloha",[13,5,17,33,2,12,21,16,2,17,10,5],Maps.LEFT,"sunnyD2",[],null,[],[],Flags.DUNGEONS_UNLOCKED,1);
      
      public static var marina:NPC = new NPC("marina","fhmm",[13,24,12,5,2,10,11,9,2,16,5,4],Maps.LEFT,"marinaD",[],null,[],[]);
      
      public static var pandora:NPC = new NPC("pandora","fyawn",[13,25,13,22,2,11,20,9,2,16,9,4],Maps.RIGHT,"pandoraD",[],null,[],[]);
      
      public static var roastie:NPC = new NPC("roastie","mscream",[10,4,4,41,7,2,2,5,2,12,5,2],Maps.LEFT,"roastieD",[],null,[],[]);
      
      public static var digger:NPC = new NPC("digger","mahh",[6,3,13,8,4,2,18,4,2,12,44,2],Maps.RIGHT,"diggerD",[],null,[],[]);
      
      public static var blondie:NPC = new NPC("blondie","mhowdy",[3,5,5,5,2,5,18,24,2,4,46,2],Maps.LEFT,"blondieD",[],null,[],[]);
      
      public static var templer:NPC = new NPC("cultist","mhey",[13,1,6,53,2,2,60,11,2,8,11,2],Maps.LEFT,"templerD",[],null,[],[]);
      
      public static var templerB:NPC = new NPC("cultist","mhey",[13,1,6,53,2,2,60,11,2,8,11,2],Maps.LEFT,"templerD2",[],null,[],[]);
      
      public static var templerC:NPC = new NPC("cultist","mhey",[13,1,6,53,2,2,60,11,2,8,11,2],Maps.RIGHT,"templerD3",[],null,[],[],Flags.DUNGEONS_UNLOCKED,0);
      
      public static var barb:NPC = new NPC("barb","fsigh2",[3,3,20,19,2,10,40,32,3,12,2,9],Maps.RIGHT,"barbD",[],null,[],[]);
      
      public static var sage:NPC = new NPC("sage","mweary",[13,2,22,30,2,2,2,33,2,8,21,2],Maps.LEFT,"sageD",[],null,[],[],Flags.PAPER_DEFEATED,0);
      
      public static var sageB:NPC = new NPC("sage","omyes",[13,2,22,12,2,2,2,33,2,8,33,2],Maps.LEFT,"sageD2","sageD2",{"quantity":1},[],[Spells.artattack,1],Flags.PAPER_DEFEATED,1);
      
      public static var brutus:NPC = new NPC("brutus","mhello3",[2,19,9,47,2,2,2,4,2,4,29,2],Maps.RIGHT,"brutusD",[],null,[],[]);
      
      public static var val:NPC = new NPC("val","fsigh",[2,10,21,33,2,11,2,32,2,5,34,2],Maps.DOWN,"valD",[],null,[],[]);
      
      public static var hal:NPC = new NPC("hal","mhey",[13,10,7,48,2,12,2,33,2,6,2,4],Maps.DOWN,"halD",[],null,[],[]);
      
      public static var felix:NPC = new NPC("felix","bhello",[2,10,16,8,2,11,29,31,2,4,33,2],Maps.LEFT,"felixD",[],null,[],[]);
      
      public static var dexter:NPC = new NPC("dexter","mhey",[2,7,11,10,3,2,2,2,2,12,2,2],Maps.LEFT,"dexterD",[],null,[],[]);
      
      public static var linus:NPC = new NPC("linus","mahh",[2,27,8,33,2,11,2,3,2,6,51,2],Maps.RIGHT,"linusD",[],null,[],[]);
      
      public static var dinesh:NPC = new NPC("dinesh","mhey2",[3,10,5,38,2,12,2,7,2,7,30,2],Maps.RIGHT,"dineshD",[],null,[],[]);
      
      public static var gilfoyle:NPC = new NPC("gilfoyle","mhmm",[2,9,4,5,4,2,2,28,2,4,33,2],Maps.LEFT,"gilfoyleD",[],null,[],[]);
      
      public static var alan:NPC = new NPC("alan","mhowdy",[2,0,6,39,2,5,2,4,2,11,33,2],Maps.RIGHT,"alanD",[],null,[],[]);
      
      public static var ada:NPC = new NPC("ada","fchow",[2,1,17,39,3,12,2,31,2,19,2,2],Maps.LEFT,"adaD",[],null,[],[]);
      
      public static var elliot:NPC = new NPC("elliot","mchow",[2,5,13,33,6,3,2,5,2,10,31,2],Maps.RIGHT,"elliotD",[],null,[],[]);
      
      public static var fartus:NPC = new NPC("fartus","mharr",[3,16,3,11,2,6,2,11,2,7,20,2],Maps.LEFT,"fartusD",[],null,[],[]);
      
      public static var reno:NPC = new NPC("reno","mahh",[7,13,14,25,2,2,20,9,6,8,2,4],Maps.RIGHT,"renoD",[],null,[],[],Flags.P1_ARENA_DONE,0);
      
      public static var sabrina:NPC = new NPC("sabrina","fahh",[13,13,13,12,2,10,15,14,2,8,57,2],Maps.RIGHT,"sabrinaD",[],null,[],[]);
      
      public static var nimrod:NPC = new NPC("nimrod","mhowdy",[2,18,19,3,6,7,18,5,2,10,36,2],Maps.RIGHT,"nimrodD",[],null,[],[]);
      
      public static var fran:NPC = new NPC("fran","flaugh",[2,23,5,24,2,11,49,32,2,16,3,3],Maps.LEFT,"franD",[],null,[],[]);
      
      public static var shartus:NPC = new NPC("shartus","mhello",[3,3,3,28,10,3,2,28,2,8,37,2],Maps.LEFT,"shartusD",[],null,[],[]);
      
      public static var renoB:NPC = new NPC("reno","mhello3",[7,13,14,8,2,2,20,9,2,8,6,4],Maps.RIGHT,"renoD2","renoD2",{"quantity":1},[],[Items.garlic,1,Spells.sharpenP,1,Items.garlic,1],Flags.P1_ARENA_DONE,1);
      
      public static var sabrinaB:NPC = new NPC("sabrina","fahh",[13,13,13,12,2,10,15,14,2,8,57,2],Maps.LEFT,"sabrinaD2","sabrinaD2",{"quantity":1},[],[Items.dragonfruit,1,Spells.geometryP,1,Items.dragonfruit,1],Flags.P2_ARENA_DONE,1);
      
      public static var nimrodB:NPC = new NPC("nimrod","mhowdy",[2,18,19,3,6,7,18,5,2,10,23,2],Maps.RIGHT,"nimrodD2","nimrodD2",{"quantity":1},[],[Items.beer,1,Spells.electrongunP,1,Items.beer,1],Flags.P3_ARENA_DONE,1);
      
      public static var franB:NPC = new NPC("fran","flaugh",[2,23,5,24,2,11,49,32,2,16,3,3],Maps.RIGHT,"franD2","franD2",{"quantity":1},[],[Items.cloudberries,1,Spells.fairybombP,1,Items.cloudberries,1],Flags.P4_ARENA_DONE,1);
      
      public static var shartusB:NPC = new NPC("shartus","mhello",[3,3,3,28,10,3,17,28,2,8,22,2],Maps.LEFT,"shartusD2","shartusD2",{"quantity":1},[],[Items.coffee,1,Spells.retroswordsAll,1,Items.coffee,1],Flags.P5_ARENA_DONE,1);
      
      public static var phyrnna:NPC = new NPC("phyrnna","fsigh2",[2,24,5,13,2,11,2,54,2,20,26,2],Maps.LEFT,"phyrnnaD","phyrnnaD",{"quantity":1},[],[Items.pizza,1,Spells.musicalblastP,1,Items.pizza,1],Flags.ALL_ARENA_DONE,1);
      
      public static var moody:NPC = new NPC("moody","mcry",[3,24,19,32,2,12,3,28,2,14,33,2],Maps.LEFT,null,"moodyQ",null,[Items.coffee,1,Items.energy,1,Items.bru,1],[Items.blueberries,3,Spells.bubbles,1,Items.raspberries,2]);
      
      public static var moodyB:NPC = new NPC("moody","mhey",[3,24,19,36,2,12,3,28,2,14,33,2],Maps.RIGHT,"moodyD",null,null,[],[]);
      
      public static var osho:NPC = new NPC("osho","mgrr",[12,0,4,22,2,4,26,16,2,3,10,2],Maps.LEFT,null,"oshoQ",null,[Items.crisps,1,Items.chips,1,Items.cola,1],[Items.buckle,2,Spells.sandP,1,Items.leather,1]);
      
      public static var rami:NPC = new NPC("rami","mgasp",[7,2,5,38,2,3,12,15,2,4,20,2],Maps.LEFT,null,"ramiQ",null,[Items.butterflywing,12,Items.spike,4,Items.scales,1],[Items.dragonfruit,1,Spells.enfeeble,1,Items.dragonfruit,1]);
      
      public static var kiev:NPC = new NPC("kiev","mhowdy",[13,7,14,22,2,5,25,23,12,15,2,2],Maps.RIGHT,null,"kievQ",null,[Items.cola,6,Items.watermelon,10,Items.chips,2],[Items.steel,3,Spells.acidP,1,Items.spring,2]);
      
      public static var son:NPC = new NPC("son","bhello",[13,8,3,22,2,5,25,23,2,2,2,2],Maps.RIGHT,"sonD",null,null,[],[]);
      
      public static var meg:NPC = new NPC("meg","fsigh3",[2,3,17,43,2,11,2,36,2,4,2,2],Maps.RIGHT,"megD",null,null,[],[]);
      
      public static var robyn:NPC = new NPC("robyn","faloha",[2,4,16,48,2,2,51,62,2,11,2,2],Maps.LEFT,"robynD",null,null,[],[],Items.axe,1);
      
      public static var kat:NPC = new NPC("kat","fhey2",[2,26,18,37,2,11,36,61,2,4,33,2],Maps.LEFT,"katD",null,null,[],[]);
      
      public static var ALL_NPCS:Array = [wohehivB,winona,hania,haniaB,makya,indyB,watson,heinz,helmut,hans,heinzB,helmutB,hansB,heinzC,helmutC,hansC,ronja,pablo,randy,randyB,june,rock,grump,girlA,girlB,girlC,jolly,izumi,xavi,jorma,thiefB,jamie,jamieB,cultist5,cultist6,thief,jonathan,jenny,jerry,abdul,leo,hikari,karen,karenB,bella,tim,asahi,yui,dennis,chad,jeff,jeffB,herald,lynne,edward,rory,ross,jake,jakeB,pam,ned,randalf,tandalf,bessieB,bessieC,jerryC,drifty,spike,angela,bounce,bounceB,krogan,nasim,gust,cultist1,cultist2,cultist3,cultist4,cultist5,cultist6,arne,heraldB,knut,shop1,shop2,shop3,shop4,xun,jam,yiffy,donald,donaldB,linwood,byrd,annie,pickle,jimbo,bud,steve,sarah,lenk,mom,dad,monika,bellaB,tribe1,tribe2,tribe3,tribe4,helen,raymond,princess,princessB,dao,daoB,gimli,gimliB,manlet,manletB,leonidas,leonidasB,guardA,guardB,guardAB,guardBB,jonathanB,jennyB,hikariB,mioC,misakiC,chikaC,pal,gal,mio,misaki,chika,mioB,chikaB,misakiB,wally,wallyB,garven,larry,frosty,fanni,jack,bunni,amy,sally,wohehiv,indy,erika,rebel,jerryB,molly,bessie,infernus,mungus,mungusB,fizz,goth,roastie,digger,blondie,sunny,pandora,marina,sunnyB,odin,odinB,maskerA,maskerB,maskerC,maskerD,maskerE,maskerF,redA,redB,redC,student,studentB,sparky,sparkyB,randalfB,tandalfB,hawk,lulu,dampe,kira,teru,slasher,slasherB,ripper,vegan,goner,cutter,maka,albrecht,roku,rokuB,rick,anton,smokey,ghost,emo,vivy,bubba,hikariC,barman,nemi,jessica,helmutD,hobo,shione,george,thiefC,cultist7,cultist8,falcon,canela,wakizashi,peppi,aniki,kai,maya,finn,kirsan,hippy,shaggy,akira,weeb,sam,samB,shioneB,wohehivC,rebelB,mungusC,mollyB,anikiB,zephyr,king,alva,anon,gray,ika,santa,necron,stephanie,jekyl,infernus,tina,gina,raymondB,bard,chadB,templer,templerB,jeffC,templerC,lunar,barb,sage,sageB,brutus,fartus,reno,sabrina,nimrod,fran,shartus,renoB,sabrinaB,nimrodB,franB,shartusB,phyrnna,val,hal,felix,dexter,linus,dinesh,gilfoyle,ada,alan,elliot,moody,moodyB,osho,rami,kiev,son,meg,robyn,kat];
      
      public function NPCs()
      {
         super();
      }
      
      public static function init() : *
      {
         var _loc1_:NPC = null;
         questList = [bessie,molly,mungus,indy,wohehiv,jorma,erika,aniki,rebel,xavi,akira,jerryB,pablo,randy,lenk,izumi,angela,goth,weeb,maya,fizz,king,gina,shione,jessica,kirsan,maka,albrecht,roku,wakizashi,canela,sam,sparky,amy,bunni,jack,sally,lunar,moody,osho,rami,kiev];
         questListForDisplay = [bessie,molly,mungus,indy,osho,wohehiv,moody,jorma,erika,aniki,rebel,xavi,akira,kiev,jerryB,pablo,randy,lenk,izumi,rami,angela,goth,weeb,maya,fizz,king,gina,shione,jessica,kirsan,maka,albrecht,roku,wakizashi,canela,sam,sparky,amy,bunni,jack,sally,lunar];
         for each(_loc1_ in ALL_NPCS)
         {
            _loc1_.init();
         }
      }
      
      public static function init2() : *
      {
         if(Flags.TOWN_3_REACHED.quantity)
         {
            helmutC.flag3 = 0;
         }
         shione.event2 = {"quantity":(!NPCs.shione.flag && Boolean(Flags.RAPTURE_REACHED.quantity) ? 1 : 0)};
         shione.flag3 = 0;
         aniki.event2 = {"quantity":(Boolean(Flags.RAPTURE_REACHED.quantity) && !NPCs.aniki.flag ? 1 : 0)};
         aniki.flag3 = 0;
         moody.event2 = {"quantity":(!NPCs.moody.flag ? 1 : 0)};
         moody.flag3 = 0;
         moodyB.event2 = {"quantity":(!NPCs.moody.flag ? 1 : 0)};
         moodyB.flag3 = 1;
         mungus.event2 = {"quantity":(!NPCs.mungus.flag ? 1 : 0)};
         mungus.flag3 = 0;
         mungusB.event2 = {"quantity":(!NPCs.mungus.flag ? 1 : 0)};
         mungusB.flag3 = 1;
         shioneB.event2 = {"quantity":(!NPCs.shione.flag ? 1 : 0)};
         shioneB.flag3 = 1;
         mungusC.event2 = {"quantity":(!NPCs.mungus.flag ? 1 : 0)};
         mungusC.flag3 = 1;
         anikiB.event2 = {"quantity":(!NPCs.aniki.flag ? 1 : 0)};
         anikiB.flag3 = 1;
         mollyB.event2 = {"quantity":(!NPCs.molly.flag ? 1 : 0)};
         mollyB.flag3 = 1;
         rebelB.event2 = {"quantity":(!NPCs.rebel.flag ? 1 : 0)};
         rebelB.flag3 = 1;
         samB.event2 = {"quantity":(!NPCs.sam.flag ? 1 : 0)};
         samB.flag3 = 1;
         sam.event2 = {"quantity":(!NPCs.sam.flag ? 1 : 0)};
         sam.flag3 = 0;
         wohehivC.event2 = {"quantity":(!NPCs.wohehiv.flag ? 1 : 0)};
         wohehivC.flag3 = 1;
         wohehivB.event2 = {"quantity":(Boolean(Flags.TOTEM_BUILT.quantity) && !Flags.RAPTURE_REACHED.quantity ? 1 : 0)};
         wohehivB.flag3 = 1;
      }
      
      public static function countQuests(param1:Boolean = true) : int
      {
         var _loc4_:NPC = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc4_ in questList)
         {
            if(!_loc4_.flag)
            {
               _loc2_++;
            }
            if(_loc4_.flag2)
            {
               _loc3_++;
            }
         }
         if(_loc2_ >= Medals.helpingHand.value)
         {
            Medals.unlock(Medals.helpingHand);
         }
         if(_loc2_ >= Medals.publicServant.value)
         {
            Medals.unlock(Medals.publicServant);
         }
         if(_loc2_ >= Medals.questCuck.value)
         {
            Medals.unlock(Medals.questCuck);
         }
         if(_loc2_ >= Medals.questCompletionist.value)
         {
            Medals.unlock(Medals.questCompletionist);
         }
         for each(_loc4_ in [sally,bunni,jack,amy,lunar])
         {
            if(!_loc4_.flag)
            {
               Medals.unlock(Medals.genericHoliday);
            }
         }
         if(param1)
         {
            return _loc2_;
         }
         return _loc3_;
      }
      
      public static function playSound(param1:*) : *
      {
         if(Options.sillyNPCs)
         {
            if(param1 == "mhowdy" || param1 == "ryeah" || param1 == "mchow")
            {
               param1 = "dog";
            }
            if(param1 == "mhello" || param1 == "ryeah2" || param1 == "omyes")
            {
               param1 = "dog2";
            }
            if(param1 == "ghello" || param1 == "fchow")
            {
               param1 = "key2";
            }
            if(param1 == "fhmm" || param1 == "mhey" || param1 == "omhello")
            {
               param1 = "sheep";
            }
            if(param1 == "fsigh3" || param1 == "fahh" || param1 == "mcry")
            {
               param1 = "parrot";
            }
            if(param1 == "mhowdy2" || param1 == "omgrumpy")
            {
               param1 = "bear";
            }
            if(param1 == "maww" || param1 == "fhey" || param1 == "faloha")
            {
               param1 = "Mpur";
            }
            if(param1 == "mharr" || param1 == "mgrr" || param1 == "mhey3")
            {
               param1 = "cow";
            }
            if(param1 == "mgrunt")
            {
               param1 = "Mmental";
            }
            if(param1 == "mhmm" || param1 == "fsigh")
            {
               param1 = "Mwhine";
            }
            if(param1 == "bbcry" || param1 == "fcry")
            {
               param1 = "Mcry";
            }
            if(param1 == "mweary" || param1 == "msigh")
            {
               param1 = "Mmad";
            }
            if(param1 == "fsigh2" || param1 == "mthink")
            {
               param1 = "Mmeow";
            }
            if(param1 == "farr")
            {
               param1 = "Mmental";
            }
            if(param1 == "fyawn" || param1 == "mhello3")
            {
               param1 = "Mpur";
            }
            if(param1 == "mgasp" || param1 == "gscream")
            {
               param1 = "Mscream";
            }
            if(param1 == "mcough" || param1 == "evil3" || param1 == "evil2" || param1 == "zombie" || param1 == "pig")
            {
               param1 = "pig";
            }
            if(param1 == "cyay" || param1 == "bhello" || param1 == "screech")
            {
               param1 = "goose";
            }
            if(param1 == "owhello" || param1 == "mhm" || param1 == "bsigh" || param1 == "fshiver")
            {
               param1 = "pigeon";
            }
            if(param1 == "mscream" || param1 == "flaugh")
            {
               param1 = "Myell";
            }
            if(param1 == "mahh" || param1 == "fhey2")
            {
               param1 = "McuteL";
            }
            if(param1 == "mhey2" || param1 == "ghello2")
            {
               param1 = "McuteH";
            }
         }
         Maps.playSound(param1);
      }
   }
}

