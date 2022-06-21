#priority 52
import crafttweaker.item.IItemStack;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.mods.IMod;

import scripts.API.config.df;
import scripts.bal.seedGrowOre;
import scripts.bal.name;

static seed as IItemStack[]=[
<mysticalagriculture:iron_seeds>,
<mysticalagriculture:gold_seeds>,
<mysticalagriculture:aluminum_seeds>,
<mysticalagriculture:copper_seeds>,
<mysticalagriculture:tin_seeds>,
<mysticalagriculture:bronze_seeds>,
<mysticalagriculture:brass_seeds>,
<mysticalagriculture:silver_seeds>,
<mysticalagriculture:lead_seeds>,
<mysticalagriculture:steel_seeds>,
<mysticalagriculture:nickel_seeds>,
<mysticalagriculture:constantan_seeds>,
<mysticalagriculture:electrum_seeds>,
<mysticalagriculture:invar_seeds>,
<mysticalagriculture:signalum_seeds>,
<mysticalagriculture:lumium_seeds>,
<mysticalagriculture:enderium_seeds>,
<mysticalagriculture:aluminum_brass_seeds>,
<mysticalagriculture:electrical_steel_seeds>,
<mysticalagriculture:dark_steel_seeds>,
<mysticalagriculture:manasteel_seeds>,
<mysticalagriculture:thaumium_seeds>,
<mysticalagriculture:certus_quartz_seeds>,
<mysticalagriculture:fluix_seeds>,
<mysticalagriculture:void_metal_seeds>,
<mysticalagriculture:emerald_seeds>,
<mysticalagriculture:pig_seeds>,
<mysticalagriculture:blaze_seeds>,
<mysticalagriculture:aquamarine_seeds>,
<mysticalagriculture:quicksilver_seeds>,
<mysticalagriculture:amber_seeds>,
<mysticalagriculture:wood_seeds>,
<mysticalagriculture:knightmetal_seeds>,
<mysticalagriculture:enderman_seeds>,
<mysticalagriculture:wither_skeleton_seeds>,
<mysticalagriculture:silicon_seeds>,
<mysticalagriculture:sulfur_seeds>,
<mysticalagriculture:draconium_seeds>,
<mysticalagriculture:fiery_ingot_seeds>,
<mysticalagriculture:diamond_seeds>,
<mysticalagriculture:platinum_seeds>,
<mysticalagriculture:osmium_seeds>,
<mysticalagriculture:glowstone_seeds>,
<mysticalagriculture:creeper_seeds>,
<mysticalagriculture:end_steel_seeds>,
<mysticalagriculture:vibrant_alloy_seeds>,
<mysticalagriculture:energetic_alloy_seeds>,
<mysticalagriculture:pulsating_iron_seeds>,
<mysticalagriculture:coralium_seeds>
];

var out as IItemStack[]=[
<minecraft:iron_ingot>,
<minecraft:gold_ingot>,
<thermalfoundation:material:132>,
<thermalfoundation:material:128>,
<abyssalcraft:tiningot>,
<mekanism:ingot:2>,
<thaumcraft:ingot:2>,
<thermalfoundation:material:130>,
<thermalfoundation:material:131>,
<mekanism:ingot:4>,
<thermalfoundation:material:133>,
<thermalfoundation:material:164>,
<thermalfoundation:material:161>,
<thermalfoundation:material:162>,
<thermalfoundation:material:165>,
<thermalfoundation:material:166>,
<thermalfoundation:material:167>,
<tconstruct:ingots:5>,
<enderio:item_alloy_ingot>,
<enderio:item_alloy_ingot:6>,
<botania:manaresource>,
<thaumcraft:ingot>,
<appliedenergistics2:material>,
<appliedenergistics2:material:7>,
<thaumcraft:ingot:1>,
<minecraft:emerald>,
<minecraft:porkchop>,
<minecraft:blaze_rod>,
<astralsorcery:itemcraftingcomponent>,
<thaumcraft:quicksilver>,
<thaumcraft:amber>,
<minecraft:log>,
<twilightforest:knightmetal_ingot>,
<minecraft:ender_pearl>,
<minecraft:skull:1>,
<appliedenergistics2:material:5>,
<thermalfoundation:material:771>,
<draconicevolution:draconium_ingot>,
<twilightforest:fiery_ingot>,
<minecraft:diamond>,
<thermalfoundation:material:134>,
<mekanism:ingot:1>,
<minecraft:glowstone_dust>,
<minecraft:gunpowder>,
<enderio:item_alloy_ingot:8>,
<enderio:item_alloy_ingot:2>,
<enderio:item_alloy_ingot:1>,
<enderio:item_alloy_ingot:5>,
<abyssalcraft:coralium>
];


for i in 0 .. seed.length{
    seedGrowOre(seed[i],out[i],name[i]);
}

var map as IItemStack[IItemStack]={
    <mysticalagriculture:storage:1> : <mysticalagriculture:crafting:1>,
    <mysticalagriculture:storage:2> : <mysticalagriculture:crafting:2>,
    <mysticalagriculture:storage:3> : <mysticalagriculture:crafting:3>,
    <mysticalagriculture:storage:4> : <mysticalagriculture:crafting:4>,
};

for i,j in map{
    recipes.addShapeless(j*9,[i]);
}

var block as IItemStack[IItemStack]={
<mysticalagriculture:storage>:<mysticalagriculture:crafting>,
<mysticalagriculture:storage:1>:<mysticalagriculture:crafting:1>,
<mysticalagriculture:storage:2>:<mysticalagriculture:crafting:2>,
<mysticalagriculture:storage:3>:<mysticalagriculture:crafting:3>,
<mysticalagriculture:storage:4>:<mysticalagriculture:crafting:4>
};

for i in block{
    recipes.remove(i);
}

for i,j in block{
    recipes.addShapeless(i,[
        j,j,j,j,j,j,j,j,j
    ]);
}