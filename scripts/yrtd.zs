#priority 15

import mods.ItemStages.addItemStage;
import mods.DimensionStages.addDimensionStage;

import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

import scripts.aa.bx;
import scripts.ar.item;

var mod as IMod = loadedMods["avaritia"];
for item in mod.items{
    addItemStage("chaotic_core",item);
}

var count as int[]=[
    0,1,2,3
];

for i in count{
    addItemStage("nether_star",bx[i]);
}

addItemStage("nether_star",<draconicevolution:wyvern_core>);

var wyvern as IItemStack[]=[
    <tconevo:metal>,
    bx[5],
    <thaumcraft:ingot:1>,
    <additions:bxloveu-bx_goldore>,
    <additions:bxloveu-bx_goldingot>,
    <additions:bxloveu-bx_dust>,
    <bxp:netherstarore>,
    <additions:bxloveu-yuluo_stick>,
    <additions:bxloveu-bx_seed>,
    <additions:bxloveu-xuanjing_seed>,
    <additions:bxloveu-nether_star_seed>
];
for i in wyvern{
    addItemStage("wyvern_core",i);

}
addDimensionStage("wyvern_core",4);

var bx_ingot as IItemStack[]=[
    <tconevo:material>,
    <additions:bxloveu-gold_gengzi>,
    <additions:bxloveu-bx_superdust>,
    <additions:bxloveu-cai_seed>,
    <additions:bxloveu-oumang_ingot>,
    <thaumadditions:mithrillium_ingot>,
    <bxp:fusionore>,
    <additions:bxloveu-gold_gengzi>,
    <mekanism:controlcircuit:2>,
    <minecraft:bedrock>,
    <additions:bxloveu-gold_caigengzi_nugget>,
    <additions:bxloveu-gold_caigengzi_seed>,
    <additions:bxloveu-mith_seed>,
    <additions:bxloveu-seed_7>,
    <mekanism:machineblock:4>,
    <bloodarsenal:blood_diamond:3>,
    <additions:bxloveu-blood_diamond_seed>,
    <thermalfoundation:fertilizer>,
    <thermalfoundation:fertilizer:1>,
    <thermalfoundation:fertilizer:2>,
    <additions:bxloveu-super_fer>,
    <additions:bxloveu-lower_martix_ingot>,
    <additions:bxloveu-agear_ingot>,
    <additions:bxloveu-xaono_reward_chest>
];
for i in bx_ingot{
    addItemStage("bx_ingot",i);
}