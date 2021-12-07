import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

RecipeBuilder.newBuilder("seed0","seed",12000).
addItemInput(<additions:bxloveu-oumang_seed>).
addFluidInput(<liquid:water> *10000).
addEnergyPerTickInput(1000).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.05).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.01).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.01).
addItemOutput(<additions:bxloveu-oumang_seed>).setChance(0.7).
build();

RecipeBuilder.newBuilder("seed1","seed",11000).
addItemInput(<additions:bxloveu-oumang_seed>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *10000).
addEnergyPerTickInput(1000).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.07).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.02).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.01).
addItemOutput(<additions:bxloveu-oumang_seed>).setChance(0.75).
build();

RecipeBuilder.newBuilder("seed2","seed",10000).
addItemInput(<additions:bxloveu-oumang_seed>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *10000).
addEnergyPerTickInput(1000).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.1).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.05).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.03).
addItemOutput(<additions:bxloveu-oumang_seed>).setChance(0.8).
build();

RecipeBuilder.newBuilder("seed3","seed",9000).
addItemInput(<additions:bxloveu-oumang_seed>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *10000).
addEnergyPerTickInput(1000).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.15).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.05).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.05).
addItemOutput(<additions:bxloveu-oumang_seed>).setChance(0.9).
build();

RecipeBuilder.newBuilder("seed4","seed",8000).
addItemInput(<additions:bxloveu-oumang_seed>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *10000).
addEnergyPerTickInput(1000).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.2).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.07).
addItemOutput(<additions:bxloveu-oumang_ingot>).setChance(0.06).
addItemOutput(<additions:bxloveu-oumang_seed>).
build();