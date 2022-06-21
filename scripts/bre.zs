#priority 17
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;

RecipeBuilder.newBuilder("inferm1","seed",400).
addItemInput(<mysticalagriculture:tier1_inferium_seeds>).
addFluidInput(<liquid:water> *1000).
addEnergyPerTickInput(100).
addItemOutput(<mysticalagriculture:tier1_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.2).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.05).
build();

RecipeBuilder.newBuilder("inferm1-1","seed",350).
addItemInput(<mysticalagriculture:tier1_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *1000).
addEnergyPerTickInput(100).
addItemOutput(<mysticalagriculture:tier1_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.1).
build();

RecipeBuilder.newBuilder("inferm1-2","seed",300).
addItemInput(<mysticalagriculture:tier1_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *1000).
addEnergyPerTickInput(100).
addItemOutput(<mysticalagriculture:tier1_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.8).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.2).
build();

RecipeBuilder.newBuilder("inferm1-3","seed",300).
addItemInput(<mysticalagriculture:tier1_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *1000).
addEnergyPerTickInput(100).
addItemOutput(<mysticalagriculture:tier1_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.3).
build();

RecipeBuilder.newBuilder("inferm1-4","seed",250).
addItemInput(<mysticalagriculture:tier1_inferium_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *1000).
addEnergyPerTickInput(100).
addItemOutput(<mysticalagriculture:tier1_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
build();