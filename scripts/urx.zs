#priority 12
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;

RecipeBuilder.newBuilder("terra","seed",500).
addItemInput(<mysticalagriculture:terrasteel_seeds>).
addFluidInput(<liquid:water> *4000).
addEnergyPerTickInput(400).
addItemOutput(<mysticalagriculture:terrasteel_seeds>).
addItemOutput(<botania:manaresource:4>).setChance(0.08).
addItemOutput(<botania:manaresource:4>).setChance(0.01).
addItemOutput(<botania:manaresource:5>).setChance(0.06).
build();

RecipeBuilder.newBuilder("terra1","seed",450).
addItemInput(<mysticalagriculture:terrasteel_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *3500).
addEnergyPerTickInput(750).
addItemOutput(<mysticalagriculture:terrasteel_seeds>).
addItemOutput(<botania:manaresource:4>).setChance(0.09).
addItemOutput(<botania:manaresource:4>).setChance(0.02).
addItemOutput(<botania:manaresource:5>).setChance(0.12).
build();

RecipeBuilder.newBuilder("terra2","seed",450).
addItemInput(<mysticalagriculture:terrasteel_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(650).
addItemOutput(<mysticalagriculture:terrasteel_seeds>).
addItemOutput(<botania:manaresource:4>).setChance(0.15).
addItemOutput(<botania:manaresource:4>).setChance(0.03).
addItemOutput(<botania:manaresource:5>).setChance(0.17).
build();

RecipeBuilder.newBuilder("terra3","seed",400).
addItemInput(<mysticalagriculture:terrasteel_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *4000).
addEnergyPerTickInput(600).
addItemOutput(<mysticalagriculture:terrasteel_seeds>).
addItemOutput(<botania:manaresource:4>).setChance(0.2).
addItemOutput(<botania:manaresource:4>).setChance(0.07).
addItemOutput(<botania:manaresource:5>).setChance(0.25).
build();

RecipeBuilder.newBuilder("terra4","seed",350).
addItemInput(<mysticalagriculture:terrasteel_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:terrasteel_seeds>).
addItemOutput(<botania:manaresource:4>).setChance(0.25).
addItemOutput(<botania:manaresource:4>).setChance(0.09).
addItemOutput(<botania:manaresource:5>).setChance(0.35).
build();