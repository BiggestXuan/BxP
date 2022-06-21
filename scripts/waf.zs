#priority 26
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<mysticalagriculture:growth_accelerator>);

recipes.addShaped(<mysticalagriculture:growth_accelerator>*6,[
[<additions:bxloveu-diamond_block>,<additions:bxloveu-bx_ingot>,<additions:bxloveu-diamond_block>],
[<additions:bxloveu-diamond_block>,<additions:bxloveu-bx_ingot>,<additions:bxloveu-diamond_block>],
[<additions:bxloveu-diamond_block>,<additions:bxloveu-bx_ingot>,<additions:bxloveu-diamond_block>]
]);

RecipeBuilder.newBuilder("quartz","seed",500).
addItemInput(<mysticalagriculture:nether_quartz_seeds>).
addFluidInput(<liquid:lava> *300).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:nether_quartz_seeds>).
addItemOutput(<minecraft:quartz>).
addItemOutput(<minecraft:quartz>).setChance(0.1).
addItemOutput(<minecraft:quartz_block>).setChance(0.01).
addItemOutput(<additions:bxloveu-bx_uningot>).setChance(0.005).
build();

RecipeBuilder.newBuilder("quartz1","seed",450).
addItemInput(<mysticalagriculture:nether_quartz_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:lava> *300).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:nether_quartz_seeds>).
addItemOutput(<minecraft:quartz>).
addItemOutput(<minecraft:quartz>).setChance(0.15).
addItemOutput(<minecraft:quartz_block>).setChance(0.02).
addItemOutput(<additions:bxloveu-bx_uningot>).setChance(0.008).
build();

RecipeBuilder.newBuilder("quartz2","seed",450).
addItemInput(<mysticalagriculture:nether_quartz_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:lava> *200).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:nether_quartz_seeds>).
addItemOutput(<minecraft:quartz>).
addItemOutput(<minecraft:quartz>).setChance(0.4).
addItemOutput(<minecraft:quartz_block>).setChance(0.05).
addItemOutput(<additions:bxloveu-bx_uningot>).setChance(0.02).
build();

RecipeBuilder.newBuilder("quartz3","seed",750).
addItemInput(<mysticalagriculture:nether_quartz_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:lava> *200).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:nether_quartz_seeds>).
addItemOutput(<minecraft:quartz>).
addItemOutput(<minecraft:quartz>).setChance(0.5).
addItemOutput(<minecraft:quartz_block>).setChance(0.07).
addItemOutput(<additions:bxloveu-bx_uningot>).setChance(0.04).
build();

RecipeBuilder.newBuilder("quartz4","seed",350).
addItemInput(<mysticalagriculture:nether_quartz_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:lava> *150).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:nether_quartz_seeds>).
addItemOutput(<minecraft:quartz>).
addItemOutput(<minecraft:quartz>).setChance(0.7).
addItemOutput(<minecraft:quartz_block>).setChance(0.13).
addItemOutput(<additions:bxloveu-bx_uningot>).setChance(0.08).
build();

global modss as string[]=[
    "torcherino",
    "projecte",
    "bacterium",
    "salted_fish_technology",
    "manaita_plus",
    "lolipickaxe",
    "thelegendofthebraveii",
    "flammpfeil.slashblade",
    "slashblade",
    "xijun",
    "bacteria",
    "decon_table",
    "decomp_table",
    "deconstriction",
    "uncraftingtable",
    "immersiveengineering"
];

recipes.remove(<mysticalagriculture:terrasteel_seeds>);

var a = <botania:manaresource:4>;
var b = <botania:manaresource:5>;
recipes.addShaped(<mysticalagriculture:terrasteel_seeds>,[
    [a,b,a],
    [b,<mysticalagriculture:crafting:21>,b],
    [a,b,a]
]);