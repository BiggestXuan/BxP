import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.API.config.lossSeedWhenCraftOumangIngot;
if(!lossSeedWhenCraftOumangIngot){
RecipeBuilder.newBuilder("seed0","seed",400)
.addItemInput(<additions:bxloveu-oumang_seed>)
.addFluidInput(<liquid:water> *10000)
.addEnergyPerTickInput(1000)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.05)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.01)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.01)
.addItemOutput(<additions:bxloveu-oumang_seed>)
.build();

RecipeBuilder.newBuilder("seed1","seed",350)
.addItemInput(<additions:bxloveu-oumang_seed>)
.addItemInput(<thermalfoundation:fertilizer>)
.addFluidInput(<liquid:water> *10000)
.addEnergyPerTickInput(1000)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.4)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.2)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.1)
.addItemOutput(<additions:bxloveu-oumang_seed>)
.build();

RecipeBuilder.newBuilder("seed2","seed",250)
.addItemInput(<additions:bxloveu-oumang_seed>)
.addItemInput(<thermalfoundation:fertilizer:1>)
.addFluidInput(<liquid:water> *10000)
.addEnergyPerTickInput(1000)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.6)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.3)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.2)
.addItemOutput(<additions:bxloveu-oumang_seed>)
.build();

RecipeBuilder.newBuilder("seed3","seed",200)
.addItemInput(<additions:bxloveu-oumang_seed>)
.addItemInput(<thermalfoundation:fertilizer:2>)
.addFluidInput(<liquid:water> *10000)
.addEnergyPerTickInput(1000)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.8)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.6)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.4)
.addItemOutput(<additions:bxloveu-oumang_seed>)
.build();  
}else{
RecipeBuilder.newBuilder("seed0","seed",400)
.addItemInput(<additions:bxloveu-oumang_seed>)
.addFluidInput(<liquid:water> *10000)
.addEnergyPerTickInput(1000)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.05)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.01)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.01)
.addItemOutput(<additions:bxloveu-oumang_seed>).setChance(0.7)
.build();

RecipeBuilder.newBuilder("seed1","seed",350)
.addItemInput(<additions:bxloveu-oumang_seed>)
.addItemInput(<thermalfoundation:fertilizer>)
.addFluidInput(<liquid:water> *10000)
.addEnergyPerTickInput(1000)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.4)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.2)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.1)
.addItemOutput(<additions:bxloveu-oumang_seed>).setChance(0.75)
.build();

RecipeBuilder.newBuilder("seed2","seed",250)
.addItemInput(<additions:bxloveu-oumang_seed>)
.addItemInput(<thermalfoundation:fertilizer:1>)
.addFluidInput(<liquid:water> *10000)
.addEnergyPerTickInput(1000)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.6)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.3)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.2)
.addItemOutput(<additions:bxloveu-oumang_seed>).setChance(0.8)
.build();

RecipeBuilder.newBuilder("seed3","seed",200)
.addItemInput(<additions:bxloveu-oumang_seed>)
.addItemInput(<thermalfoundation:fertilizer:2>)
.addFluidInput(<liquid:water> *10000)
.addEnergyPerTickInput(1000)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.8)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.6)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.4)
.addItemOutput(<additions:bxloveu-oumang_seed>).setChance(0.9)
.build();
}
RecipeBuilder.newBuilder("seed4","seed",100)
.addItemInput(<additions:bxloveu-oumang_seed>)
.addItemInput(<additions:bxloveu-super_fer>)
.addFluidInput(<liquid:water> *10000)
.addEnergyPerTickInput(1000)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(1)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.9)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.8)
.addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.5)
.addItemOutput(<additions:bxloveu-oumang_seed>)
.build();