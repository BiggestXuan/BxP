#priority 16
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var fuel =<mekanism:biofuel>;

RecipeBuilder.newBuilder("fuel1","fuel_doing",20)
.addItemInput(<appliedenergistics2:material:5>)
.addEnergyPerTickInput(100)
.addItemOutput(fuel)
.build();

RecipeBuilder.newBuilder("fuel2","fuel_doing",20)
.addItemInput(<minecraft:netherrack>)
.addEnergyPerTickInput(200)
.addItemOutput(fuel).setChance(0.33)
.build();

RecipeBuilder.newBuilder("fuel3","fuel_doing",20)
.addItemInput(<minecraft:glass>)
.addEnergyPerTickInput(200)
.addItemOutput(fuel).setChance(0.33)
.build();