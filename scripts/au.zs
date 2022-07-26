#priority 10
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.botaniatweaks.Agglomeration;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

import scripts.API.config.manaForOuhuangIngot;

var xuanjing=<additions:bxloveu-bx_goldingot>;
var oumang=<additions:bxloveu-oumang_ingot>;
var oujin=<additions:bxloveu-ou_gold>;
var ouhuang=<additions:bxloveu-ouhuang_ch>;
var feiqiu=<additions:bxloveu-feiqiu_ch>;
var out=<additions:bxloveu-ouhuang_ingot>;
var bx=<additions:bxloveu-bx_enchingot>;
var lx as IItemStack[]=[
<draconicevolution:draconic_core>,
<draconicevolution:wyvern_core>,
<draconicevolution:awakened_core>,
<draconicevolution:chaotic_core>];
var lava =<liquid:lava>;
var input as IItemStack[]=[<minecraft:dragon_egg>,<minecraft:nether_star>];
var output as IItemStack[]=[ouhuang,feiqiu];
var chance as float[]=[0.01,0.15,0.3,1];

var i as int =0;
var j as int =0;
var count as int =0;
var name as string[] =["c-1","c-2","c-3","c-4","c-5","c-6","c-7","c-8"];

while i<=1{RecipeBuilder.newBuilder(name[count],"oh",2000)
.addItemInput(input[i])
.addItemInput(lx[j])
.addFluidInput(lava*200)
.addItemOutput(input[i])
.addItemOutput(output[i]).setChance(chance[j])
.build();
count+=1;
if (j>=3){
    j=0;
    i+=1;
}
else{
    j+=1;
}
}

var block1=<tconevo:metal_block>;
var block2=<tconevo:metal_block:1>;
var block3=<tconevo:metal_block:2>;

mods.astralsorcery.StarlightInfusion.addInfusion(
    ouhuang,
    feiqiu*2,
    true,
    1,
    100
);

Agglomeration.addRecipe(
    out,
    [xuanjing,oumang,oujin,ouhuang,feiqiu,bx],
    manaForOuhuangIngot,
    0x191970,0x00FFFF,
    block3,block2,block1
);

RecipeBuilder.newBuilder("ouhuang_ingot","ouhuang",1)
.addItemInput(xuanjing)
.addItemInput(oumang)
.addItemInput(oujin)
.addItemInput(ouhuang)
.addItemInput(feiqiu)
.addItemInput(bx)
.addItemOutput(out)
.addManaInput(manaForOuhuangIngot)
.build();