#priority 61
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

function func_1022(name as string,item as IItemStack,power as int,liquid as ILiquidStack){
    var amount as int = power * 24 as int;
    RecipeBuilder.newBuilder("craft"+name,"craft",10)
    .addItemInput(item)
    .addFluidInput(liquid * amount)
    .addEnergyPerTickInput(131071)
    .addItemOutput(item*2)
    .build();
}