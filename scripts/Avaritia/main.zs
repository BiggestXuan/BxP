#priority 2
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.ItemStages.addItemStage;
import mods.avaritia.ExtremeCrafting;
import mods.avaritia.Compressor;

import moretweaker.draconicevolution.FusionCrafting;

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;

import scripts.BX.item.bx;
import scripts.BX.caigengzi.re_caigengzi.dragon;

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
pearl.addTooltip(format.red("已禁用"));

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
<avaritia:singularity:9>,  //9
<avaritia:singularity:10>, //10
<avaritia:singularity:11>];  //11

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
    RecipeBuilder.newBuilder("qd"+count,"qd",1).
    addItemInput(input[a]*64)
    .addItemInput(input[a]*64)
    .addItemInput(input[a]*64)
    .addItemInput(input[a]*64)
    .addItemOutput(qd[a])
    .build();
    a+=1;
    count+=1;
}

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(input[a]*64).
addItemInput(input[a]*64).
addItemOutput(qd[a]).
build();
a+=1;
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(input[a]*64).
addItemOutput(qd[a]).
build();
count+=1;

static nqd as IItemStack[]=[
    <bxp:singularity_1>,
    <bxp:singularity_2>,
    <bxp:singularity_3>,
    <bxp:singularity_4>,
    <bxp:singularity_5>,
    <bxp:singularity_6>,
    <bxp:singularity_7>,
    <bxp:singularity_8>,
    <bxp:singularity_9>,
    <bxp:singularity_10>,
    <bxp:singularity_11>,
    <bxp:singularity_12>,
    <bxp:singularity_13>,
    <bxp:singularity_14>,
    <bxp:singularity_15>,
    <bxp:singularity_16>,
    <bxp:singularity_17> 
];

for i in nqd{
    addItemStage("chaotic_core",i);
}

//因为所有奇点的材料都不相同，在这里不用循环写了，方便查阅和维护
RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(qd[0])
.addItemInput(qd[1])
.addItemInput(qd[2])
.addItemInput(qd[3])
.addItemInput(qd[4])
.addItemInput(qd[5])
.addItemInput(qd[6])
.addItemInput(qd[7])
.addItemInput(qd[8])
.addItemInput(qd[9])
.addItemInput(qd[10])
.addItemInput(qd[11])
.addItemOutput(nqd[0])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<bxp:unbxblock>*255)
.addItemOutput(nqd[1])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(bx[5]*150)
.addItemOutput(nqd[2])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(bx[6]*12)
.addItemOutput(nqd[3])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<botania:storage:1>*64)
.addItemOutput(nqd[4])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<astralsorcery:itemcraftingcomponent:1>*300)
.addItemOutput(nqd[5])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<bloodarsenal:blood_diamond:3>*50)
.addItemOutput(nqd[6])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<twilightforest:block_storage:1>*30)
.addItemInput(<twilightforest:knightmetal_block>*30)
.addItemOutput(nqd[7])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<abyssalcraft:ingotblock:3>*255)
.addItemOutput(nqd[8])
.build();
count+=1;

var bedrock = <minecraft:bedrock>;
RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(bedrock*355)
.addItemOutput(nqd[9])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<enderio:block_alloy>*32)
.addItemInput(<enderio:block_alloy:1>*32)
.addItemInput(<enderio:block_alloy:2>*32)
.addItemInput(<enderio:block_alloy:3>*32)
.addItemInput(<enderio:block_alloy:4>*32)
.addItemInput(<enderio:block_alloy:5>*32)
.addItemInput(<enderio:block_alloy:6>*32)
.addItemInput(<enderio:block_alloy:7>*32)
.addItemInput(<enderio:block_alloy:8>*32)
.addItemOutput(nqd[10])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<deepmoblearning:glitch_infused_ingot>*355)
.addItemOutput(nqd[11])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<tconevo:metal_block>*12)
.addItemOutput(nqd[12])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<tconevo:metal_block:1>*3)
.addItemOutput(nqd[13])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<tconevo:metal:10>*7)
.addItemOutput(nqd[14])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<thaumadditions:mithminite_ingot>*5)
.addItemOutput(nqd[15])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<additions:bxloveu-tulye_haie>*155)
.addItemInput(<additions:bxloveu-tulye_ingot>)
.addItemOutput(nqd[16])
.build();
count+=1;

RecipeBuilder.newBuilder("qd"+count,"qd",1).
addItemInput(<minecraft:obsidian>*48)
.addItemOutput(<minecraft:bedrock>)
.build();
count+=1;

ExtremeCrafting.addShapeless("chj",ch,[
    <avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,
    <avaritia:cosmic_meatballs>,<avaritia:ultimate_stew>,
    nqd[0],nqd[1],nqd[2],nqd[3],nqd[4],nqd[5],nqd[6],nqd[7],nqd[8],nqd[9],nqd[10],nqd[11],nqd[12],nqd[13],nqd[14],nqd[15],nqd[16],
    dragon[0],dragon[1],dragon[2],dragon[3],dragon[4],dragon[5],dragon[6],<additions:bxloveu-tulye_ingot>,
    bx[0],bx[1],bx[2],bx[3],bx[4],bx[5],bx[6],bx[8],bx[9],bx[10],bx[11],bx[12],bx[13],bx[14],bx[15],bx[16],bx[17],bx[18],bx[19],bx[20],bx[21],bx[22]
]);

recipes.remove(<avaritia:resource:4>);

recipes.addShaped(<avaritia:resource:4>,[
    [<avaritia:resource:3>,<avaritia:resource:3>,<avaritia:resource:3>],
    [<avaritia:resource:3>,<extrautils2:unstableingots>,<avaritia:resource:3>],
    [<avaritia:resource:3>,<avaritia:resource:3>,<avaritia:resource:3>]
]);

recipes.addShapeless(<avaritia:resource:4>,[<avaritia:block_resource>]);

ExtremeCrafting.remove(<avaritia:infinity_sword>);
var ingot =<avaritia:resource:6>;

ExtremeCrafting.addShaped("sword",<avaritia:infinity_sword>,[
    [null,null,null,null,null,null,null,ingot,ingot],
    [null,null,null,null,null,null,null,ingot,ingot],
    [null,null,null,null,null,null,ingot,null,null],
    [null,null,null,null,null,ingot,null,null,null],
    [null,crystal,null,ingot,ingot,null,null,null,null],
    [null,null,crystal,ingot,ingot,null,null,null,null],
    [null,null,bx[7],crystal,null,null,null,null,null],
    [null,bx[7],null,null,crystal,null,null,null,null],
    [bx[7],null,null,null,null,null,null,null,null]
]);

for i in modss{
    if(loadedMods in i){
        for item in loadedMods[i].items{
            recipes.removeAll();
            mods.ItemStages.addItemStage("disabled",item);
        }
    }
}

ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
ExtremeCrafting.addShapeless("rw",<avaritia:cosmic_meatballs>,[
<avaritia:resource:4>,<additions:bxloveu-apple_xaono>,<minecraft:cooked_mutton>,
<minecraft:mutton>, 
<minecraft:rabbit_stew>, 
<minecraft:rabbit>, 
<minecraft:cooked_rabbit>, 
<minecraft:cooked_chicken>, 
<minecraft:chicken>, 
<minecraft:beef>, 
<minecraft:rotten_flesh>, 
<abyssalcraft:anticorflesh>, 
<abyssalcraft:omotholflesh>, 
<abyssalcraft:antiflesh>, 
<abyssalcraft:antipork>, 
<abyssalcraft:antichicken>,
<abyssalcraft:antibeef>, 
<abyssalcraft:chickenp>,
<abyssalcraft:corbone>,
<abyssalcraft:corflesh>,
<abyssalcraft:shoggothflesh:3>,
<abyssalcraft:shoggothflesh:2>,
<abyssalcraft:shoggothflesh:1>,
<abyssalcraft:shoggothflesh>,
<abyssalcraft:anticorbone>
]);

var i =<additions:bxloveu-apple_xaono>;
var b =null;
ExtremeCrafting.remove(<avaritia:ultimate_stew>);
ExtremeCrafting.addShaped("cjb",<avaritia:ultimate_stew>,[
    [b,b,b,b,b,b,b,b,b],
    [b,i,b,b,b,b,b,i,b],
    [i,i,i,b,b,b,i,i,i],
    [i,i,i,i,b,i,i,i,i],
    [i,i,i,i,i,i,i,i,i],
    [b,i,i,i,i,i,i,i,b],
    [b,b,i,i,i,i,i,b,b],
    [b,b,b,i,i,i,b,b,b],
    [b,b,b,b,i,b,b,b,b]
]);

var av as IItemStack[]=[
    <avaritia:infinity_sword>,
    <avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35}]}),
    <avaritia:infinity_helmet>,
    <avaritia:infinity_chestplate>,
    <avaritia:infinity_pants>,
    <avaritia:infinity_boots>, //5
    <avaritia:infinity_bow>,
    <avaritia:infinity_shovel>,
    <avaritia:infinity_axe>,
    <avaritia:infinity_hoe>
];

for i in av{
    ExtremeCrafting.remove(i);
}

var s = <minecraft:stick>;
recipes.addShaped(av[0],[
    [bx[7],bx[7],bx[7]],
    [bx[7],bx[7],bx[7]],
    [null,s,null]
]);

recipes.addShaped(av[1],[
    [bx[7],bx[7],bx[7]],
    [null,s,null],
    [null,s,null]
]);

recipes.addShaped(av[2],[
    [bx[7],bx[7],bx[7]],
    [bx[7],null,bx[7]],
    [null,null,null]
]);

recipes.addShaped(av[3],[
    [bx[7],null,bx[7]],
    [bx[7],bx[7],bx[7]],
    [bx[7],bx[7],bx[7]]
]);

recipes.addShaped(av[4],[
    [bx[7],bx[7],bx[7]],
    [bx[7],null,bx[7]],
    [bx[7],null,bx[7]]
]);

recipes.addShaped(av[5],[
    [bx[7],null,bx[7]],
    [bx[7],null,bx[7]],
    [null,null,null]
]);

recipes.addShaped(av[6],[
    [null,bx[7],<minecraft:string>],
    [bx[7],null,<minecraft:string>],
    [null,bx[7],<minecraft:string>]
]);

recipes.addShaped(av[7],[
    [null,bx[7],null],
    [null,s,null],
    [null,s,null]
]);

recipes.addShaped(av[8],[
    [null,bx[7],bx[7]],
    [null,s,bx[7]],
    [null,s,null]
]);

recipes.addShaped(av[9],[
    [null,bx[7],bx[7]],
    [null,s,null],
    [null,s,null]
]);