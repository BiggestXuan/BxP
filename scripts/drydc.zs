import mods.thaumcraft.Infusion;
import moretweaker.draconicevolution.FusionCrafting;

import scripts.API.config.canCraftPureBlood;

recipes.addShapeless(<vampirism:injection:1>,[
    <vampirism:injection>,<harvestcraft:garlicitem>
]);

var beacon = <vampirism:sunscreen_beacon>;
var heart = <vampirism:human_heart>;
beacon.addTooltip(format.green("可合成"));
beacon.asBlock().definition.setHarvestLevel("pickaxe",4);
beacon.asBlock().definition.hardness = 50;

Infusion.registerRecipe("sunscreen_beacon","",beacon,
9,
[<aspect:biggestxuan>*1000],
<minecraft:beacon>,
[heart,heart,heart,heart,heart,heart,heart,heart,heart,heart]);

if(canCraftPureBlood){
FusionCrafting.add(<vampirism:pure_blood>,<vampirism:blood_bottle:9>,FusionCrafting.BASIC,100000,[
    <vampirism:human_heart>,<vampirism:human_heart>,<vampirism:human_heart>,<vampirism:human_heart>
]);

FusionCrafting.add(<vampirism:pure_blood:1>,<vampirism:pure_blood>,FusionCrafting.BASIC,500000,[
    <vampirism:pure_blood>,<vampirism:pure_blood>
]);

FusionCrafting.add(<vampirism:pure_blood:2>,<vampirism:pure_blood:1>,FusionCrafting.BASIC,2000000,[
    <vampirism:pure_blood:1>,<vampirism:pure_blood:1>
]);

FusionCrafting.add(<vampirism:pure_blood:3>,<vampirism:pure_blood:2>,FusionCrafting.WYVERN,5000000,[
    <vampirism:pure_blood:2>,<vampirism:pure_blood:2>
]);

FusionCrafting.add(<vampirism:pure_blood:4>,<vampirism:pure_blood:3>,FusionCrafting.WYVERN,10000000,[
    <vampirism:pure_blood:3>,<vampirism:pure_blood:3>
]);
}


val t = <vampirism:vampire_fang>;
FusionCrafting.add(<vampirism:vampire_book>,<minecraft:book>,FusionCrafting.WYVERN,3000000,[
    t,t,t,t,t,t,t,t
]);

var h = <vampirism:human_heart>;
var c = <additions:bxloveu-caigengzi>;
recipes.addShaped(h*2,[
    [null,c,null],
    [c,h,c],
    [null,c,null]
]);