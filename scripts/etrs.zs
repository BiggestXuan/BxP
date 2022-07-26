#priority 6
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.ItemStages.addItemStage;
import mods.avaritia.ExtremeCrafting;
import mods.avaritia.Compressor;

import moretweaker.draconicevolution.FusionCrafting;

import crafttweaker.item.IItemStack;

import scripts.API.config.nqd;

var craft=<avaritia:extreme_crafting_table>;
var craft2=<avaritia:double_compressed_crafting_table>;
var crystal=<avaritia:resource:1>;
var ch=<avaritia:resource:5>;
var pearl=<avaritia:endest_pearl>;

recipes.remove(craft);

FusionCrafting.add(craft,craft2,FusionCrafting.CHAOTIC,1000000000,[
    crystal,crystal,crystal,crystal,crystal,crystal,crystal,crystal
]);

mods.avaritia.ExtremeCrafting.remove(ch);
mods.avaritia.ExtremeCrafting.remove(pearl);
pearl.addTooltip(game.localize("bxp.tip.item.disabled"));

static qd as IItemStack[]=[
<avaritia:singularity>,
<avaritia:singularity:1>,
<avaritia:singularity:2>,
<avaritia:singularity:3>,
<avaritia:singularity:4>,
<avaritia:singularity:5>,
<avaritia:singularity:6>,
<avaritia:singularity:7>,
<avaritia:singularity:8>,
<avaritia:singularity:9>,
<avaritia:singularity:10>,
<avaritia:singularity:11>];

for i in qd{
    addItemStage("chaotic_core",i);
    Compressor.remove(i);
}

val input as IItemStack[]=[
    <minecraft:iron_block>,
    <minecraft:gold_block>,
    <minecraft:lapis_block>,
    <minecraft:redstone_block>,
    <minecraft:quartz_block>,
    <thermalfoundation:storage>,
    <thermalfoundation:storage:1>,
    <thermalfoundation:storage:3>,
    <thermalfoundation:storage:2>,
    <thermalfoundation:storage:5>,
    <minecraft:diamond_block>,
    <minecraft:emerald_block>
];

var a as int=0;
var count as int=0;
while a<=9{
    RecipeBuilder.newBuilder("cqd"+count,"qd",1)
    .addItemInput(input[a]*64)
    .addItemInput(input[a]*64)
    .addItemInput(input[a]*64)
    .addItemInput(input[a]*64)
    .addItemOutput(qd[a])
    .build();
    a+=1;
    count+=1;
}

RecipeBuilder.newBuilder("cqd"+count,"qd",1)
.addItemInput(input[a]*64)
.addItemInput(input[a]*64)
.addItemOutput(qd[a])
.build();
a+=1;
count+=1;

RecipeBuilder.newBuilder("cqd"+count,"qd",1)
.addItemInput(input[a]*64)
.addItemOutput(qd[a])
.build();
count+=1;

for i in nqd{
    addItemStage("chaotic_core",i);
}


for i in modss{
    if(loadedMods in i){
        for item in loadedMods[i].items{
            recipes.removeAll();
            mods.ItemStages.addItemStage("disabled",item);
        }
    }
}

