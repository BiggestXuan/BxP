#priority 16
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;

RecipeBuilder.newBuilder("inferm2","seed",450).
addItemInput(<mysticalagriculture:tier2_inferium_seeds>).
addFluidInput(<liquid:water> *2000).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:tier2_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.2).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.05).
build();

RecipeBuilder.newBuilder("inferm2-1","seed",400).
addItemInput(<mysticalagriculture:tier2_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *2000).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:tier2_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.2).
build();

RecipeBuilder.newBuilder("inferm2-2","seed",350).
addItemInput(<mysticalagriculture:tier2_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *2000).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:tier2_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.8).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.3).
build();

RecipeBuilder.newBuilder("inferm2-3","seed",350).
addItemInput(<mysticalagriculture:tier2_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *2000).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:tier2_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
build();

RecipeBuilder.newBuilder("inferm2-4","seed",275).
addItemInput(<mysticalagriculture:tier2_inferium_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *2000).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:tier2_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.5).
build();
