#priority 20

import mods.avaritia.ExtremeCrafting;
import mods.avaritia.Compressor;
import moretweaker.draconicevolution.FusionCrafting;
import crafttweaker.item.IItemStack;

import scripts.aa.bx;
import scripts.efsx.dragon;
import scripts.zpo.func_3514;

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
var s = <additions:bxloveu-soul>;

func_3514(gy,<additions:bxloveu-borken_soul>,"low_soul_1");
func_3514(<additions:bxloveu-borken_soul>,<additions:bxloveu-soul>,"low_soul_2");

var d = <minecraft:diamond>;

recipes.addShaped(gy*2,[
    [null,d,null],
    [d,gy,d],
    [null,d,null]
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