#priority -1

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.avaritia.ExtremeCrafting;
import mods.jei.JEI;

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.API.config.produceCoalAddons;
import scripts.uk.df;

val a = <mysticalagriculture:coal_seeds>;
ExtremeCrafting.addShaped("coal_seed",<additions:bxloveu-coal_seed>,[
    [a,a,a,a,a,a,a,a,a],
    [a,a,a,a,a,a,a,a,a],
    [a,a,a,a,a,a,a,a,a],
    [a,a,a,a,a,a,a,a,a],
    [a,a,a,a,a,a,a,a,a],
    [a,a,a,a,a,a,a,a,a],
    [a,a,a,a,a,a,a,a,a],
    [a,a,a,a,a,a,a,a,a],
    [a,a,a,a,a,a,a,a,a]
]);

JEI.addDescription(<additions:bxloveu-coal_seed>,game.localize("bxp.tip.item.coalseed1")+"\n"+game.localize("bxp.tip.item.coalseed2")+"\n"+game.localize("bxp.tip.item.coalseed3")+"\n"+game.localize("bxp.tip.item.coalseed4")+produceCoalAddons[0]+"\n"+game.localize("bxp.tip.item.coalseed5")+produceCoalAddons[1]+"\n"+game.localize("bxp.tip.item.coalseed6")+produceCoalAddons[2]+"\n"+game.localize("bxp.tip.item.coalseed7")+produceCoalAddons[3]);

function countCalc(i as int) as int{
    if(i == 0){
        return produceCoalAddons[0];
    }
    if(i == 1){
        return produceCoalAddons[1];
    }
    if(i == 2){
        return produceCoalAddons[2];
    }
    if(i == 3){
        return produceCoalAddons[3];
    }
    return 114514;
}

var count as int = 0;
for i in 0 .. df.length{
    var j as int = 320;
    while(j>0){
        RecipeBuilder.newBuilder("coal"+count,"seed",300)
        .addItemInput(<additions:bxloveu-coal_seed>)
        .addItemOutput(<additions:bxloveu-coal_seed>)
        .addFluidInput(<liquid:water>*1000)
        .addEnergyPerTickInput(1000)
        .addItemInput(df[i]*j)
        .addItemOutput(<minecraft:coal>*(j*countCalc(i)))
        .build();
        count+=1;
        j-=1;
    }
}   