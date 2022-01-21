import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.BX.item.bx;

var name as string = "blood_name";
var count as int = 0;

RecipeBuilder.newBuilder(name+count,"blood",100)
.addFluidInput(<liquid:lifeessence>*2)
.addFluidOutput(<liquid:vampirismblood>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"blood",100)
.addFluidInput(<liquid:blood>)
.addFluidOutput(<liquid:lifeessence>*2)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"blood",100)
.addFluidOutput(<liquid:lifeessence>*2)
.addFluidInput(<liquid:vampirismblood>)
.build();

var map as IItemStack[int] = {
    40 : <minecraft:rotten_flesh>,
    1000 : <vampirism:human_heart>,
    80 : <minecraft:beef>,
    50 : <minecraft:chicken>,
    55 : <minecraft:rabbit>,
    60 : <minecraft:mutton>,
    85 : <abyssalcraft:corflesh>,
    95 : <abyssalcraft:corbone>,
    75 : <harvestcraft:venisonrawitem>
};

for i,j in map{
    name+=1;
    RecipeBuilder.newBuilder(name+count,"blood",100)
    .addItemInput(j)
    .addFluidOutput(<liquid:lifeessence>*2*i)
    .build();
}