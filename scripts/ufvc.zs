#loader preinit
import mods.treetweaker.TreeFactory;
var xuanjing =TreeFactory.createTree("xuanjing");
xuanjing.setTreeType("OAK");
xuanjing.setLog("additions:bxloveu-bx_goldore");
xuanjing.setLeaf("minecraft:melon_block");
xuanjing.setMinHeight(3);
xuanjing.setExtraHeight(5); 
xuanjing.setGenFrequency(6); 
xuanjing.setDimWhitelist(7);
xuanjing.register();

var xinghui=TreeFactory.createTree("xinghui");
xinghui.setTreeType("RED_MUSHROOM");
xinghui.setLog("astralsorcery:blockcustomore:1");
xinghui.setLeaf("deepmoblearning:machine_casing");
xinghui.setMinHeight(3);
xinghui.setExtraHeight(5); 
xinghui.setGenFrequency(6); 
xinghui.setDimWhitelist(7);
xinghui.register();

var sy=TreeFactory.createTree("sy");
sy.setTreeType("WILLOW");
sy.setLog("minecraft:quartz_block");
sy.setLeaf("minecraft:quartz_block");
sy.setMinHeight(3);
sy.setExtraHeight(5); 
sy.setGenFrequency(6); 
sy.setDimWhitelist([50,51,52,53]);
sy.register();

var botania=TreeFactory.createTree("botania");
botania.setTreeType("RED_MUSHROOM");
botania.setLog("botania:livingwood");
botania.setLeaf("botania:livingrock");
botania.setMinHeight(4);
botania.setExtraHeight(5); 
botania.setGenFrequency(25); 
botania.setDimWhitelist(0);
botania.register();