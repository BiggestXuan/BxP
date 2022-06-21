#priority 4
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import crafttweaker.item.IItemStack;

import scripts.aa.bx;
import scripts.etrs.qd;
import scripts.etrs.nqd;

var count = 500;
RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(qd[0])
.addItemInput(qd[1])
.addItemInput(qd[2])
.addItemInput(qd[3])
.addItemInput(qd[4])
.addItemInput(qd[5])
.addItemInput(qd[6])
.addItemInput(qd[7])
.addItemInput(qd[8])
.addItemInput(qd[9])
.addItemInput(qd[10])
.addItemInput(qd[11])
.addItemOutput(nqd[0])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<bxp:unbxblock>*325)
.addItemOutput(nqd[1])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(bx[5]*225)
.addItemOutput(nqd[2])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(bx[6]*16)
.addItemOutput(nqd[3])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<botania:storage:1>*96)
.addItemOutput(nqd[4])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<astralsorcery:itemcraftingcomponent:1>*425)
.addItemOutput(nqd[5])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<bloodarsenal:blood_diamond:3>*75)
.addItemOutput(nqd[6])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<twilightforest:block_storage:1>*45)
.addItemInput(<twilightforest:knightmetal_block>*45)
.addItemOutput(nqd[7])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<abyssalcraft:ingotblock:3>*375)
.addItemOutput(nqd[8])
.build();
count+=1;