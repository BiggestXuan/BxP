#priority 9
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.API.config.canProduceAstralItem;
import scripts.API.config.produceAstralTime;

var name as string = "as_block";
var count as int = 0;

for i in canProduceAstralItem{
    RecipeBuilder.newBuilder(name+count,"as_block",produceAstralTime*20)
    .addItemInput(i)
    .addEnergyPerTickInput(200)
    .addFluidOutput(<liquid:astralsorcery.liquidstarlight>*1000)
    .build();
    count+=1;
}