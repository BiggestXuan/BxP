import mods.ItemStages.addItemStage;
import mods.DimensionStages.addDimensionStage;
import scripts.BX.item.bx;
import scripts.project.main.prostage;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

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
    <additions:bxloveu-deabf_rod>,
    <additions:bxloveu-yuluo_stick>
];
for i in wyvern{
    addItemStage("wyvern_core",i);

}

var bx_ingot as IItemStack[]=[
    <tconevo:material>,
    <additions:bxloveu-gold_gengzi>,
    <additions:bxloveu-bx_superdust>,
    <additions:bxloveu-cai_seed>,
    <additions:bxloveu-oumang_ingot>,
    <thaumadditions:mithrillium_ingot>,
    <bxp:fusionore>,
    <additions:bxloveu-gold_gengzi>,
    <mekanism:controlcircuit:2>
];
for i in bx_ingot{
    addItemStage("bx_ingot",i);
}

var fusion as IItemStack[]=[
    <draconicevolution:draconic_block>,
    <draconicevolution:draconic_ingot>,
    <additions:bxloveu-ou_gold>,
    <thaumadditions:adaminite_ingot>,
    <twilightforest:fiery_ingot>,
    <bxp:mithinore>
];
for i in fusion{
    addItemStage("fusion_ingot",i);
}
addDimensionStage("fusion_ingot",1);
addDimensionStage("fusion_ingot",-11325);
addDimensionStage("fusion_ingot",-9999);

addItemStage("dragon_heart",<draconicevolution:awakened_core>);
addItemStage("dragon_heart",<minecraft:dragon_egg>);
addItemStage("dragon_heart",<draconicevolution:awakened_core>);
addDimensionStage("dragon_heart",7);

var awakened as IItemStack[]=[
    <additions:bxloveu-sdxhop>,
    bx[6],
    <tconevo:metal:5>,
    <minecraft:bedrock>
];
for i in awakened{
    addItemStage("awakened_core",i);
}

var ench as IItemStack[]=[
    <additions:bxloveu-ouhuang_ingot>,
    <draconicevolution:chaotic_core>,
    <additions:bxloveu-star_power>,
    <additions:bxloveu-re_gengzi>,
    <thaumadditions:mithminite_ingot>,
    <mekanism:controlcircuit:3>,
    <mekanism:machineblock:4>,
    <draconicevolution:chaos_shard>
];
for i in ench{
    addItemStage("ench_ingot",i);
}

var mod as IMod = loadedMods["abyssalcraft"];
for item in mod.items{
    addItemStage("ench_ingot",item);
}

var chaotic as IItemStack[]=[
    <avaritia:resource:6>,
    <additions:bxloveu-really_sd>,
    <tconevo:metal:10>,
    <avaritia:resource:5>,
    <avaritia:resource:2>,
    <avaritia:resource:3>,
    <avaritia:resource:4>,
    <avaritia:neutron_collector>,
    <avaritia:neutronium_compressor>,
    <additions:bxloveu-tulye_ingot>
];
for i in chaotic {
    addItemStage("chaotic_core",i);
}

addItemStage("avaritia_ingot",bx[7]);


//projecte
for i in prostage{
    addItemStage("projecte",i);
}
