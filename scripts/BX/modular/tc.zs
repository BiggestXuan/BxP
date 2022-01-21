import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.BX.item.bx;

var name as string = "tc_name";
var count as int = 0;

RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<minecraft:fish>)
.addItemInput(<additions:bxloveu-caigengzi>*5)
.addEnergyPerTickInput(1000)
.addItemOutput(<additions:bxloveu-fish>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<minecraft:tnt>)
.addItemInput(<additions:bxloveu-bx_uningot>*10)
.addEnergyPerTickInput(3000)
.addItemOutput(<thaumcraft:causality_collapser>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<additions:bxloveu-bx_ingot>)
.addItemInput(<thaumcraft:ingot:1>*3)
.addItemInput(<thaumcraft:salis_mundus>*7)
.addItemInput(<thaumcraft:amber>*4)
.addItemOutput(<thaumadditions:mithrillium_ingot>)
.addEnergyPerTickInput(100000)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<minecraft:iron_block>*2)
.addItemInput(<minecraft:blaze_rod>*8)
.addItemInput(<twilightforest:fiery_blood>*6)
.addItemInput(<minecraft:blaze_powder>*6)
.addItemOutput(<twilightforest:block_storage:1>)
.addEnergyPerTickInput(50000)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<additions:bxloveu-bx_ingot>)
.addItemInput(<thaumadditions:mithrillium_ingot>*4)
.addItemInput(<minecraft:nether_star>*5)
.addItemInput(<draconicevolution:wyvern_core>*3)
.addItemInput(<twilightforest:fiery_ingot>*5)
.addItemOutput(<thaumadditions:adaminite_ingot>)
.addEnergyPerTickInput(500000)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<bloodarsenal:blood_diamond:2>)
.addItemInput(<twilightforest:fiery_ingot>*6)
.addItemInput(<additions:bxloveu-bx_ingot>*3)
.addItemInput(<bloodarsenal:base_item:4>*5)
.addEnergyPerTickInput(114514)
.addItemOutput(<bloodarsenal:blood_diamond:3>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<additions:bxloveu-bx_ingot>)
.addItemInput(<additions:bxloveu-ou_gold>*2)
.addItemInput(<thaumadditions:adaminite_ingot>*2)
.addItemInput(<additions:bxloveu-gold_gengzi>*3)
.addItemInput(<additions:bxloveu-bx_superdust>*2)
.addItemInput(<additions:bxloveu-oumang_ingot>*6)
.addItemInput(<additions:bxloveu-sdxhop>)
.addItemOutput(<additions:bxloveu-bx_enchingot>)
.addEnergyPerTickInput(1000000)
.build();