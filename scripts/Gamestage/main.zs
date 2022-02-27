#priority 15

import mods.ItemStages.addItemStage;
import mods.DimensionStages.addDimensionStage;
import scripts.BX.item.bx;
import scripts.Project.main.prostage;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

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
    <additions:bxloveu-super_fer>
    
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

addItemStage("dragon_heart",<draconicevolution:awakened_core>);
addItemStage("dragon_heart",<minecraft:dragon_egg>);
addItemStage("dragon_heart",<draconicevolution:awakened_core>);
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

var ench as IItemStack[]=[
    <additions:bxloveu-ouhuang_ingot>,
    <draconicevolution:chaotic_core>,
    <additions:bxloveu-star_power>,
    <additions:bxloveu-re_gengzi>,
    <thaumadditions:mithminite_ingot>,
    <mekanism:controlcircuit:3>,
    <draconicevolution:chaos_shard>,
    <additions:bxloveu-ouhuang_seed>,
    <additions:bxloveu-ouhuang_nugget>,
    <additions:bxloveu-wind_ingot>,
    <additions:bxloveu-seed_9>
];
for i in ench{
    addItemStage("ench_ingot",i);
}

var mods as IMod = loadedMods["abyssalcraft"];
for item in mods.items{
    addItemStage("bx_ingot",item);
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
    <additions:bxloveu-tulye_ingot>,
    <projectex:matter>,
    <projectex:matter:1>,
    <projectex:matter:2>,
    <projectex:matter:3>,
    <projectex:matter:4>,
    <projectex:matter:5>,
    <projectex:matter:6>,
    <projectex:matter:7>,
    <projectex:matter:8>,
    <projectex:matter:9>,
    <projectex:matter:10>,
    <projectex:matter:11>,
    <projectex:final_star_shard>,
    <projecte:dm_furnace>,
    <projecte:item.pe_arcana_ring>.withTag({Mode: 0 as byte}),
    <projecte:item.pe_arcana_ring>.withTag({Mode: 1 as byte}),
    <projecte:item.pe_arcana_ring>.withTag({Mode: 2 as byte}),
    <projecte:item.pe_arcana_ring>.withTag({Mode: 3 as byte}),
    <projectex:alchemy_table>,
    <projectex:arcane_tablet>,
    <projecte:nova_catalyst>,
    <projecte:nova_cataclysm>,
    <projecte:rm_furnace>,
    <projecte:item.pe_tome>,
    <projecte:item.pe_manual>,
    <additions:bxloveu-seed_10>,
    <projecte:item.pe_fuel>,
    <projecte:item.pe_fuel:1>,
    <projecte:item.pe_fuel:2>,
    <additions:bxloveu-coal_seed>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter:1>
];
for i in chaotic {
    addItemStage("chaotic_core",i);
}

var avaritia as IItemStack[]=[
    bx[7],
    <avaritia:infinity_sword>,
    <avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35}]}),
    <avaritia:infinity_helmet>,
    <avaritia:infinity_chestplate>,
    <projecte:transmutation_table>,
    <avaritia:infinity_pants>,
    <avaritia:infinity_boots>
];
for i in avaritia{
    addItemStage("avaritia_ingot",i);
}



//projecte
for i in prostage{
    addItemStage("projecte",i);
}
