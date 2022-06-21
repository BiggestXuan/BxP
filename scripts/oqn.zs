#priority 13
import mods.ItemStages.addItemStage;

import crafttweaker.item.IItemStack;
import scripts.aa.bx;
import scripts.ar.item;

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
    <additions:bxloveu-seed_10>,
    <additions:bxloveu-coal_seed>,
    <additions:bxloveu-super_smallest_xuan_ingot>,
    <additions:bxloveu-achaziah_ingot>
];
for i in chaotic {
    addItemStage("chaotic_core",i);
}

var avaritia as IItemStack[]=[
    bx[7]
];
for i in avaritia{
    addItemStage("avaritia_ingot",i);
}

var final_ingot as IItemStack[]=[
    <avaritia:infinity_sword>,
    <avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35}]}),
    <avaritia:infinity_helmet>,
    <avaritia:infinity_chestplate>,
    <avaritia:infinity_pants>,
    <avaritia:infinity_boots>,
    <additions:bxloveu-epic_tnt>,
    <avaritia:infinity_bow>,
    <avaritia:infinity_shovel>,
    <avaritia:infinity_axe>,
    <avaritia:infinity_hoe>
];

for i in final_ingot{
    addItemStage("final_ingot",i);
}

var creative_item as IItemStack[]=[
<additions:bxloveu-abyss_soul>,
<additions:bxloveu-aether_soul>,
<additions:bxloveu-borken_soul>,
<additions:bxloveu-broken_star>,
<additions:bxloveu-creative_soul>,
<additions:bxloveu-creative_star>,
<additions:bxloveu-end_star>,
<additions:bxloveu-epic_tnt>,
<additions:bxloveu-nether_soul>,
<additions:bxloveu-high_star>,
<additions:bxloveu-medium_star>,
<additions:bxloveu-low_star>,
<additions:bxloveu-soul>,
<additions:bxloveu-overworld_soul>,
<additions:bxloveu-twilight_soul>,
<additions:bxloveu-star>,
<additions:bxloveu-super_star>,
<additions:bxloveu-soul_gem_chunk>,
<additions:bxloveu-soul_gem>
];

for i in creative_item{
    addItemStage("creative_item",i);
}
for i in item{
    addItemStage("creative_item",i);
}