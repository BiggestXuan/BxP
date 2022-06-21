#priority 11

import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;
import mods.thermalexpansion.Transposer;
import moretweaker.draconicevolution.FusionCrafting;
import crafttweaker.item.IItemStack;

static ingot as IItemStack[]=[
    <additions:bxloveu-blue_dragon_ingot>,
    <additions:bxloveu-suzaku_ingot>,
    <additions:bxloveu-xuanwu_ingot>,
    <additions:bxloveu-white_tiger_ingot>
];

var l =<minecraft:lapis_block>;

ArcaneWorkbench.registerShapedRecipe("ql","",50,[<aspect:aqua>*5,<aspect:biggestxuan>*2],ingot[0],[
    [l,l,l],
    [l,sb[0],l],
    [l,l,l]
]);

Transposer.addFillRecipe(
ingot[1],
sb[0],
<liquid:lava>*5000,3000
);

var o = <minecraft:obsidian>;

Infusion.registerRecipe("xuanwu","",ingot[2],15,[<aspect:tenebrae>*10,<aspect:biggestxuan>*20],
sb[0],
[o,o,o,o,o,o,o,o]);

Crucible.registerRecipe("baihu","",ingot[3],sb[0],[<aspect:vitreus>*100,<aspect:biggestxuan>*50]);

FusionCrafting.add(<additions:bxloveu-tyrone_ingot>,bx[5],FusionCrafting.BASIC,2000000,[
    ingot[0],ingot[1],ingot[2],ingot[3]
]);