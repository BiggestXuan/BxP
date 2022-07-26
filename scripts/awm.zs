#priority 14

import mods.ItemStages.addItemStage;
import mods.DimensionStages.addDimensionStage;

import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

import scripts.ar.item;

var fusion as IItemStack[]=[
    <draconicevolution:draconic_block>,
    <draconicevolution:draconic_ingot>,
    <additions:bxloveu-ou_gold>,
    <thaumadditions:adaminite_ingot>,
    <twilightforest:fiery_ingot>,
    <bxp:mithinore>,
    <additions:bxloveu-adamin_seed>,
    <additions:bxloveu-oujin_nugget>,
    <additions:bxloveu-oujin_seed>,
    <additions:bxloveu-seed_8>
];

for i in fusion{
    addItemStage("fusion_ingot",i);
}

addDimensionStage("fusion_ingot",1);
addDimensionStage("fusion_ingot",-11325);
addDimensionStage("fusion_ingot",-9999);

var dh as IItemStack[]=[
    <draconicevolution:awakened_core>,
    <minecraft:dragon_egg>,
    <draconicevolution:awakened_core>,
    <additions:bxloveu-smallest_xuan_ingot>,
    <additions:bxloveu-blue_dragon_ingot>,
    <additions:bxloveu-suzaku_ingot>,
    <additions:bxloveu-xuanwu_ingot>,
    <additions:bxloveu-white_tiger_ingot>,
    <additions:bxloveu-tyrone_ingot>,
    <additions:bxloveu-ench_smallest_xuan_ingot>
];
for i in dh{
    addItemStage("dragon_heart",i);
}

addDimensionStage("dragon_heart",7);

var awakened as IItemStack[]=[
    <additions:bxloveu-sdxhop>,
    bx[6],
    <tconevo:metal:5>,
    <additions:bxloveu-dragon_egg_seed>,
    <additions:bxloveu-dragon_heart_seed>,
    <additions:bxloveu-dragon_egg_nugget>,
    <additions:bxloveu-dragon_heart_nugget>,
    <additions:bxloveu-enchbx_nugget>,
    <additions:bxloveu-ench_ingot_seed>
];
for i in awakened{
    addItemStage("awakened_core",i);
}

var mods as IMod = loadedMods["abyssalcraft"];
for item in mods.items{
    addItemStage("bx_ingot",item);
}

