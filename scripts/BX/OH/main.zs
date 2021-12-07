import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.botaniatweaks.Agglomeration;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

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

mods.jei.JEI.addDescription(ouhuang,"使用结构欧皇检测器来合成\n需要200mb熔岩，龙蛋和任意龙材料来启动\n越高级的龙材料产出概率越高");

mods.jei.JEI.addDescription(feiqiu,"使用结构欧皇检测器来合成\n需要200mb熔岩，下界之星和任意龙材料来启动\n越高级的龙材料产出概率越高\n让欧皇催化剂使用星能聚合消耗12格星能液可以合成2个非酋减弱器");

var i as int =0;  //遍历input,output
var j as int =0;  //遍历lx,chance
var count as int =0; //遍历name
var name as string[] =["c-1","c-2","c-3","c-4","c-5","c-6","c-7","c-8"];

while i<=1{RecipeBuilder.newBuilder(name[count],"oh",69000).
addItemInput(input[i]).
addItemInput(lx[j]).
addFluidInput(lava*200).
addItemOutput(input[i]).
addItemOutput(output[i]).setChance(chance[j]).
build();
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
    5000000,
    0x191970,0x00FFFF,
    block3,block2,block1
);

mods.jei.JEI.addDescription(out,"在泰拉凝聚板合成\n需要注意的是，本次仪式消耗500万mana\n同时，你需要更改泰拉凝聚板结构\n虽然我承认这些材料有一点难获取\n但你不妨看看下界之星和混沌碎片的合成配方？");
