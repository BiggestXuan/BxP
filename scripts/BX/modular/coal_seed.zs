#priority -1

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.avaritia.ExtremeCrafting;
import mods.jei.JEI;

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.BX.item.bx;
import scripts.Agri.other.df;

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

JEI.addDescription(<additions:bxloveu-coal_seed>,"汇聚了81个煤炭种子更高级种子，在种子催生器中和任意数量和种类任意数量的光合堆肥获得煤炭\n每次需要300tick进行生长，同时消耗1000mb的水\n无论怎么输入均不影响时间和水\n单次最大输入5组光合堆肥，不同的光合堆肥输出的煤炭数量见下表：\n普通：12个\n富集：39个\n充能：94个\n超级：166个");

function countCalc(i as int) as int{
    if(i == 0){
        return 12;
    }
    if(i == 1){
        return 39;
    }
    if(i == 2){
        return 94;
    }
    if(i == 3){
        return 166;
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