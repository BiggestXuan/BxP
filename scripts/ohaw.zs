#priority -1
import moretweaker.draconicevolution.FusionCrafting;
import crafttweaker.item.IItemStack;
import scripts.xo.disable;

var zb as IItemStack[]=[
<draconicevolution:wyvern_sword>,
<draconicevolution:wyvern_bow>,
<draconicevolution:wyvern_helm>,
<draconicevolution:wyvern_chest>,
<draconicevolution:wyvern_legs>,
<draconicevolution:wyvern_boots>,
<draconicevolution:wyvern_pick>,
<draconicevolution:wyvern_axe>,
<draconicevolution:wyvern_shovel>,
<minecraft:diamond_sword>,
<minecraft:diamond_helmet>,
<minecraft:diamond_chestplate>,
<minecraft:diamond_leggings>,
<minecraft:diamond_boots>,
];

for i in zb{
    FusionCrafting.remove(i);
}

for i in 0 .. 9{
    disable(zb[i]);
}