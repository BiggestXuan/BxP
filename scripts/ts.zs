#priority 51
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.API.config.fertilizerAdvancedAmount;
import scripts.API.config.fertilizerAdvancedTime;
import scripts.uk.df;

function calcTime(a as IItemStack) as int{
    if(a in df[0]){
        return fertilizerAdvancedTime[0];
    }
    if(a in df[1]){
        return fertilizerAdvancedTime[1];
    }
    if(a in df[2]){
        return fertilizerAdvancedTime[2];
    }
    if(a in df[3]){
        return fertilizerAdvancedTime[3];
    }
    return 114514;
}

function addGrowRecipes(a as IItemStack , b as IItemStack, c as double[] , d as string) as void{
    var count as int = 0;
    for i in 0 .. 4{
        var time as int = calcTime(df[i]);
        RecipeBuilder.newBuilder(d+count,"seed",time / 4)
        .addItemInput(a)
        .addItemInput(df[i]*fertilizerAdvancedAmount[0])
        .addEnergyPerTickInput(5000)
        .addFluidInput(<liquid:water>*3500)
        .addItemOutput(a)
        .addItemOutput(b).setChance(c[i])
        .addItemOutput(b).setChance(c[i])
        .addItemOutput(b).setChance(c[i])
        .addItemOutput(b).setChance(c[i])
        .addItemOutput(b).setChance(c[i])
        .addItemOutput(b).setChance(c[i] / 2.0f)
        .addItemOutput(b).setChance(c[i] / 2.2f)
        .addItemOutput(b).setChance(c[i] / 2.5f)
        .addItemOutput(b).setChance(c[i] / 2.7f)
        .addItemOutput(b).setChance(c[i] / 3.0f)
        .addItemOutput(b).setChance(c[i] / 3.2f)
        .addItemOutput(b).setChance(c[i] / 3.5f)
        .addItemOutput(b).setChance(c[i] / 3.7f)
        .addItemOutput(b).setChance(c[i] / 4.0f)
        .build();
        count+=1;
    }
    for i in 0 .. 4{
        var time as int = calcTime(df[i]);
        RecipeBuilder.newBuilder(d+count,"seed",time / 2)
        .addItemInput(a)
        .addItemInput(df[i]*fertilizerAdvancedAmount[0])
        .addEnergyPerTickInput(2000)
        .addFluidInput(<liquid:water>*1500)
        .addItemOutput(a)
        .addItemOutput(b).setChance(c[i])
        .addItemOutput(b).setChance(c[i])
        .addItemOutput(b).setChance(c[i])
        .addItemOutput(b).setChance(c[i] / 2.0f)
        .addItemOutput(b).setChance(c[i] / 2.5f)
        .addItemOutput(b).setChance(c[i] / 3.0f)
        .addItemOutput(b).setChance(c[i] / 3.5f)
        .addItemOutput(b).setChance(c[i] / 4.0f)
        .build();
        count+=1;
    }
    for i in 0 .. 4{
        var time as int = calcTime(df[i]);
        RecipeBuilder.newBuilder(d+count,"seed",time)
        .addItemInput(a)
        .addItemInput(df[i]*fertilizerAdvancedAmount[0])
        .addEnergyPerTickInput(800)
        .addFluidInput(<liquid:water>*500)
        .addItemOutput(a)
        .addItemOutput(b).setChance(c[i])
        .addItemOutput(b).setChance(c[i] / 2.0f)
        .addItemOutput(b).setChance(c[i] / 3.0f)
        .addItemOutput(b).setChance(c[i] / 4.0f)
        .build();
        count+=1;
    }
}

addGrowRecipes(<additions:bxloveu-blood_diamond_seed>,<additions:bxloveu-blood_diamond_nugget>,[0.37,0.49,0.57,0.71],"blood_diamond_seed");
addGrowRecipes(<additions:bxloveu-bx_seed>,<bxp:bxnugget>,[0.32,0.4,0.51,0.6],"bx_seed");
addGrowRecipes(<additions:bxloveu-unbx_seed>,<additions:bxloveu-bx_uningot>,[0.7,0.8,0.9,1.0],"unbx_seed");
addGrowRecipes(<additions:bxloveu-adamin_seed>,<thaumadditions:adaminite_nugget>,[0.1,0.15,0.2,0.25],"adamin_seed");
addGrowRecipes(<additions:bxloveu-dragon_egg_seed>,<additions:bxloveu-dragon_egg_nugget>,[0.18,0.28,0.4,0.46],"dragon_egg_seed");
addGrowRecipes(<additions:bxloveu-oujin_seed>,<additions:bxloveu-oujin_nugget>,[0.14,0.19,0.25,0.3],"oujin_seed");
addGrowRecipes(<additions:bxloveu-ouhuang_seed>,<additions:bxloveu-ouhuang_nugget>,[0.01,0.02,0.03,0.05],"ouhuang_seed");
addGrowRecipes(<additions:bxloveu-mith_seed>,<thaumadditions:mithrillium_nugget>,[0.2,0.25,0.3,0.35],"mith_seed");
addGrowRecipes(<additions:bxloveu-gold_caigengzi_seed>,<additions:bxloveu-gold_caigengzi_nugget>,[0.2,0.25,0.3,0.35],"gold_gengzi_seed");
addGrowRecipes(<additions:bxloveu-dragon_heart_seed>,<additions:bxloveu-dragon_heart_nugget>,[0.11,0.18,0.24,0.3],"dragon_heart_seed");
addGrowRecipes(<additions:bxloveu-ench_ingot_seed>,<additions:bxloveu-enchbx_nugget>,[0.04,0.1,0.15,0.2],"ench_seed");
addGrowRecipes(<additions:bxloveu-xuanjing_seed>,<additions:bxloveu-bx_goldingot>,[0.4,0.5,0.6,0.7],"xuanjing_seed");
addGrowRecipes(<additions:bxloveu-nether_star_seed>,<progressivebosses:nether_star_shard>,[0.4,0.6,0.8,0.9],"nether_star");