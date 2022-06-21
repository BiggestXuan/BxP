#priority 19
import mods.avaritia.ExtremeCrafting;
import mods.mekanism.combiner;
import mods.astralsorcery.Altar;
import moretweaker.draconicevolution.FusionCrafting;
import crafttweaker.item.IItemStack;

import scripts.aa.bx;
import scripts.tu.soul;
import scripts.zpo.func_3514;

var ns = <minecraft:nether_star>;

func_3514(ns,<additions:bxloveu-broken_star>,"broken_star");

var bs = <additions:bxloveu-broken_star>;
var s = <additions:bxloveu-star>;

Altar.addTraitAltarRecipe("star",<additions:bxloveu-star>,6000,100,[
    bs,bs,bs,bs,bs,bs,bs,bs,bs,
    <bxp:bxblock>,<bxp:bxblock>,<bxp:bxblock>,<bxp:bxblock>,
    null,null,null,null,null,null,null,null,
    <additions:bxloveu-tz_ingot>,<additions:bxloveu-tz_ingot>,<additions:bxloveu-tz_ingot>,<additions:bxloveu-tz_ingot>
    ,<additions:bxloveu-soul>,<additions:bxloveu-soul>,<additions:bxloveu-soul>,<additions:bxloveu-soul>
],"astralsorcery.constellation.horologium");

var j =<additions:bxloveu-final_ess>;

FusionCrafting.add(<additions:bxloveu-low_star>,<additions:bxloveu-star>,FusionCrafting.CHAOTIC,100000000,[
    j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j
]);

var b = <bxp:bxblock>;
ExtremeCrafting.addShaped("medium_star",<additions:bxloveu-medium_star>,[
    [b,b,b,b,b,b,b,b,b],
    [b,b,b,b,b,b,b,b,b],
    [b,b,b,b,b,b,b,b,b],
    [b,b,b,b,b,b,b,b,b],
    [b,b,b,b,<additions:bxloveu-low_star>,b,b,b,b],
    [b,b,b,b,b,b,b,b,b],
    [b,b,b,b,b,b,b,b,b],
    [b,b,b,b,b,b,b,b,b],
    [b,b,b,b,b,b,b,b,b]
]);
var m =<thaumadditions:mithrillium_ingot>;
var t = <thaumadditions:adaminite_ingot>;
s=<bxp:singularity_16>;
ExtremeCrafting.addShaped("high_star",<additions:bxloveu-high_star>,[
    [soul[0],soul[1],soul[2],soul[3],soul[3],soul[3],soul[2],soul[1],soul[0]],
    [soul[1],soul[2],m,m,m,m,m,soul[2],soul[1]],
    [soul[2],m,soul[4],t,soul[5],t,soul[4],m,soul[2]],
    [soul[3],m,t,t,s,t,t,m,soul[3]],
    [soul[3],m,soul[5],s,<additions:bxloveu-medium_star>,s,soul[5],m,soul[3]],
    [soul[3],m,t,t,s,t,t,m,soul[3]],
    [soul[2],m,soul[4],t,soul[5],t,soul[4],m,soul[2]],
    [soul[1],soul[2],m,m,m,m,m,soul[2],soul[1]],
    [soul[0],soul[1],soul[2],soul[3],soul[3],soul[3],soul[2],soul[1],soul[0]]
]);

var o =<additions:bxloveu-achaziah_ingot>;
var i =<avaritia:resource:5>;

recipes.addShaped(<additions:bxloveu-super_star>,[
    [o,i,o],
    [i,<additions:bxloveu-high_star>,i],
    [o,i,o]
]);

var cs = <additions:bxloveu-creative_soul>;

FusionCrafting.add(<additions:bxloveu-soul_gem_chunk>*2,<additions:bxloveu-star_power>,FusionCrafting.CHAOTIC,2147483647,[
    cs,<additions:bxloveu-mt>
]);

FusionCrafting.add(<additions:bxloveu-soul_gem_chunk>*7,<additions:bxloveu-star_power>,FusionCrafting.CHAOTIC,2147483647,[
    cs,cs,cs,<additions:bxloveu-mt>
]);

FusionCrafting.add(<additions:bxloveu-soul_gem_chunk>*12,<additions:bxloveu-star_power>,FusionCrafting.CHAOTIC,2147483647,[
    cs,cs,cs,
    cs,cs,<additions:bxloveu-mt>
]);
FusionCrafting.add(<additions:bxloveu-soul_gem_chunk>*15,<additions:bxloveu-star_power>,FusionCrafting.CHAOTIC,2147483647,[
    cs,cs,cs,
    cs,cs,cs,<additions:bxloveu-mt>
]);

combiner.addRecipe(<additions:bxloveu-soul_gem_chunk>*16,<thermalfoundation:fertilizer:2>,<additions:bxloveu-soul_gem>);