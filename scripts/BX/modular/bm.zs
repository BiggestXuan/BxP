import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.BX.item.bx;

var name as string = "bm_name";
var count as int = 0;

RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*5000)
.addItemInput(<thermalfoundation:fertilizer:1>)
.addItemOutput(<thermalfoundation:fertilizer:2>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*1000)
.addItemInput(<minecraft:stone>)
.addItemOutput(<bloodmagic:slate>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*2000)
.addItemInput(<bloodmagic:slate>)
.addItemOutput(<bloodmagic:slate:1>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*5000)
.addItemInput(<bloodmagic:slate:1>)
.addItemOutput(<bloodmagic:slate:2>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*15000)
.addItemInput(<bloodmagic:slate:2>)
.addItemOutput(<bloodmagic:slate:3>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*30000)
.addItemInput(<bloodmagic:slate:3>)
.addItemOutput(<bloodmagic:slate:4>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*80000)
.addItemInput(<bxp:blooddiamondore>)
.addItemOutput(<bloodarsenal:blood_diamond:2>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*100000)
.addItemInput(<bloodarsenal:blood_diamond:1>)
.addItemOutput(<bloodarsenal:blood_diamond:2>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*50000)
.addItemInput(<botania:storage:3>)
.addItemOutput(<additions:bxloveu-diamond_block>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*150000)
.addItemInput(<minecraft:diamond_block>)
.addItemOutput(<additions:bxloveu-diamond_block>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"bm",100)
.addFluidInput(<liquid:lifeessence>*5000)
.addItemInput(<bloodarsenal:base_item:3>)
.addItemOutput(<bloodarsenal:base_item:4>)
.build();