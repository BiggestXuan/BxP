#priority 2
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import crafttweaker.item.IItemStack;

import scripts.aa.bx;
import scripts.etrs.nqd;

var count = 1000;
var bedrock = <minecraft:bedrock>;
RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(bedrock*475)
.addItemOutput(nqd[9])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<enderio:block_alloy>*48)
.addItemInput(<enderio:block_alloy:1>*48)
.addItemInput(<enderio:block_alloy:2>*48)
.addItemInput(<enderio:block_alloy:3>*48)
.addItemInput(<enderio:block_alloy:4>*48)
.addItemInput(<enderio:block_alloy:5>*48)
.addItemInput(<enderio:block_alloy:6>*48)
.addItemInput(<enderio:block_alloy:7>*48)
.addItemInput(<enderio:block_alloy:8>*48)
.addItemOutput(nqd[10])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<deepmoblearning:glitch_infused_ingot>*475)
.addItemOutput(nqd[11])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<tconevo:metal_block>*18)
.addItemOutput(nqd[12])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<tconevo:metal_block:1>*5)
.addItemOutput(nqd[13])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<tconevo:metal:10>*12)
.addItemOutput(nqd[14])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<thaumadditions:mithminite_ingot>*8)
.addItemOutput(nqd[15])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<additions:bxloveu-tulye_haie>*225)
.addItemInput(<additions:bxloveu-tulye_ingot>)
.addItemOutput(nqd[16])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<minecraft:obsidian>*64)
.addItemOutput(<minecraft:bedrock>)
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(sb[1]*81)
.addItemOutput(sb[2])
.build();
count+=1;