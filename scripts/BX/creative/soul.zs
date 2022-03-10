#priority 20

import mods.avaritia.ExtremeCrafting;
import mods.avaritia.Compressor;
import moretweaker.draconicevolution.FusionCrafting;
import crafttweaker.item.IItemStack;

import scripts.BX.item.bx;
import scripts.BX.caigengzi.re_caigengzi.dragon;

static soul as IItemStack[]=[
<additions:bxloveu-overworld_soul>,
<additions:bxloveu-nether_soul>,
<additions:bxloveu-end_star>,
<additions:bxloveu-twilight_soul>,
<additions:bxloveu-abyss_soul>,
<additions:bxloveu-aether_soul>,
<additions:bxloveu-creative_soul>
];

var gy = <botania:manaresource:5>;

function addSuperRecipe(x as IItemStack,y as IItemStack,name as string) as void{
    ExtremeCrafting.addShaped(name,y,[
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x]
    ]);
}

addSuperRecipe(gy,<additions:bxloveu-borken_soul>,"low_soul_1");
addSuperRecipe(<additions:bxloveu-borken_soul>,<additions:bxloveu-soul>,"low_soul_2");

var d = <minecraft:diamond>;

recipes.addShaped(gy*2,[
    [null,d,null],
    [d,gy,d],
    [null,d,null]
]);

var s = <additions:bxloveu-soul>;

ExtremeCrafting.addShaped("soul1",soul[0],[
    [<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>],
    [<avaritia:singularity>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity>],
    [<avaritia:singularity>,<avaritia:singularity:3>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:3>,<avaritia:singularity>],
    [<avaritia:singularity>,<avaritia:singularity:3>,<avaritia:singularity:5>,<avaritia:singularity:1>,<avaritia:singularity:1>,<avaritia:singularity:1>,<avaritia:singularity:5>,<avaritia:singularity:3>,<avaritia:singularity>],
    [<avaritia:singularity>,<avaritia:singularity:3>,<avaritia:singularity:5>,<avaritia:singularity:1>,s,<avaritia:singularity:1>,<avaritia:singularity:5>,<avaritia:singularity:3>,<avaritia:singularity>],
    [<avaritia:singularity>,<avaritia:singularity:3>,<avaritia:singularity:5>,<avaritia:singularity:1>,<avaritia:singularity:1>,<avaritia:singularity:1>,<avaritia:singularity:5>,<avaritia:singularity:3>,<avaritia:singularity>],
    [<avaritia:singularity>,<avaritia:singularity:3>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:3>,<avaritia:singularity>],
    [<avaritia:singularity>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity>],
    [<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>,<avaritia:singularity>]
]);

ExtremeCrafting.addShaped("soul2",soul[1],[
    [<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>],
    [<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>],
    [<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_10>,<bxp:singularity_10>],
    [<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_7>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_10>,<bxp:singularity_10>],
    [<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_2>,<bxp:singularity_7>,s,<bxp:singularity_7>,<bxp:singularity_2>,<bxp:singularity_10>,<bxp:singularity_10>],
    [<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_7>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_10>,<bxp:singularity_10>],
    [<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_10>,<bxp:singularity_10>],
    [<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>],
    [<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>,<bxp:singularity_10>]
]);

ExtremeCrafting.addShaped("soul3",soul[2],[
    [dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1]],
    [dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1]],
    [dragon[1],dragon[1],dragon[3],dragon[3],dragon[6],dragon[3],dragon[3],dragon[1],dragon[1]],
    [dragon[1],dragon[1],dragon[3],dragon[5],dragon[5],dragon[5],dragon[3],dragon[1],dragon[1]],
    [dragon[1],dragon[1],dragon[6],dragon[5],s,dragon[5],dragon[6],dragon[1],dragon[1]],
    [dragon[1],dragon[1],dragon[3],dragon[5],dragon[5],dragon[5],dragon[3],dragon[1],dragon[1]],
    [dragon[1],dragon[1],dragon[3],dragon[3],dragon[6],dragon[3],dragon[3],dragon[1],dragon[1]],
    [dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1]],
    [dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1],dragon[1]]
]);

ExtremeCrafting.addShaped("soul4",soul[3],[
    [<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>],
    [<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>],
    [<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>],
    [<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<bxp:singularity_8>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>],
    [<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>,<bxp:singularity_8>,s,<bxp:singularity_8>,<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>],
    [<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<bxp:singularity_8>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>],
    [<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>],
    [<twilightforest:block_storage:1>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:knightmetal_block>,<twilightforest:block_storage:1>],
    [<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>,<twilightforest:block_storage:1>]
]);

ExtremeCrafting.addShaped("soul5",soul[4],[
    [<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>],
    [<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>],
    [<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>],
    [<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<bxp:singularity_9>,<bxp:singularity_9>,<bxp:singularity_9>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>],
    [<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<bxp:singularity_9>,s,<bxp:singularity_9>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>],
    [<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<bxp:singularity_9>,<bxp:singularity_9>,<bxp:singularity_9>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>],
    [<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>],
    [<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>],
    [<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>,<abyssalcraft:ingotblock:3>]
]);

ExtremeCrafting.addShaped("soul6",soul[5],[
    [<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>],
    [<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>],
    [<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>],
    [<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>],
    [<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,s,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>],
    [<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>],
    [<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>],
    [<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>],
    [<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>,<aether_legacy:holystone>]
]);

FusionCrafting.add(<additions:bxloveu-creative_soul>,s,FusionCrafting.CHAOTIC,2147483647,[
    soul[0],soul[1],soul[2],soul[3],soul[4],soul[5]
]);

function addRecipe(x as IItemStack,name as string){
    var h =<additions:bxloveu-soul_gem>;
    var i =<avaritia:resource:5>;
    var s =<additions:bxloveu-sdxhop>;
    var y =<avaritia:cosmic_meatballs>;
    var c = <draconicevolution:chaotic_core>;
    var e = <additions:bxloveu-bx_enchingot>;
    var q = <additions:bxloveu-epic_tnt>;
    ExtremeCrafting.addShaped(name,<additions:bxloveu-creative_star>,[
        [i,i,i,i,y,i,i,i,i],
        [i,s,s,y,q,y,s,s,i],
        [i,s,x,e,e,e,x,s,i],
        [i,y,e,h,h,h,e,y,i],
        [y,q,e,h,<additions:bxloveu-super_star>,h,e,q,y],
        [i,y,e,h,h,h,y,y,i],
        [i,s,x,e,e,e,x,s,i],
        [i,s,s,y,q,y,s,s,i],
        [i,i,i,i,y,i,i,i,i]
    ]);
}

var sing as IItemStack[]=[
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
<avaritia:singularity:11>
];

var name as string[] = ["n1","n2","n3","n4","n5","n6","n7","n8","n9","n10","n11","n12","n13"];
for item in 0 .. sing.length{
    addRecipe(sing[item],name[item]);
}