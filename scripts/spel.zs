#priority 13
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;

RecipeBuilder.newBuilder("inferm5","seed",450).
addItemInput(<mysticalagriculture:tier5_inferium_seeds>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:tier5_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*5).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.5).
addItemOutput(<mysticalagriculture:crafting>*3).setChance(0.05).
build();

RecipeBuilder.newBuilder("inferm5-1","seed",400).
addItemInput(<mysticalagriculture:tier5_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:tier5_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*5).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.4).
addItemOutput(<mysticalagriculture:crafting>*3).setChance(0.1).
build();

RecipeBuilder.newBuilder("inferm5-2","seed",350).
addItemInput(<mysticalagriculture:tier5_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:tier5_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*5).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.8).
addItemOutput(<mysticalagriculture:crafting>*3).setChance(0.2).
build();

RecipeBuilder.newBuilder("inferm5-3","seed",350).
addItemInput(<mysticalagriculture:tier5_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:tier5_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*5).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>*3).setChance(0.3).
build();

RecipeBuilder.newBuilder("inferm5-4","seed",275).
addItemInput(<mysticalagriculture:tier5_inferium_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:tier5_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*5).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>*3).setChance(0.4).
build();