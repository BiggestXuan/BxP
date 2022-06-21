#priority 15
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;

RecipeBuilder.newBuilder("inferm3","seed",450).
addItemInput(<mysticalagriculture:tier3_inferium_seeds>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(300).
addItemOutput(<mysticalagriculture:tier3_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*3).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.3).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.05).
build();

RecipeBuilder.newBuilder("inferm3-1","seed",400).
addItemInput(<mysticalagriculture:tier3_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(300).
addItemOutput(<mysticalagriculture:tier3_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*3).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.1).
build();

RecipeBuilder.newBuilder("inferm3-2","seed",350).
addItemInput(<mysticalagriculture:tier3_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(300).
addItemOutput(<mysticalagriculture:tier3_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*3).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.8).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.2).
build();

RecipeBuilder.newBuilder("inferm3-3","seed",350).
addItemInput(<mysticalagriculture:tier3_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(300).
addItemOutput(<mysticalagriculture:tier3_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*3).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.3).
build();

RecipeBuilder.newBuilder("inferm3-4","seed",275).
addItemInput(<mysticalagriculture:tier3_inferium_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(300).
addItemOutput(<mysticalagriculture:tier3_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*3).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
build();