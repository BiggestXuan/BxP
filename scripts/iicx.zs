#priority 60
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.riu.func_1022;

function func_4882(name as string,item as IItemStack,power as int,liquid as ILiquidStack){
    var amount as int= min(3200000,power);
    RecipeBuilder.newBuilder("uncraft"+name,"uncraft",10)
    .addItemInput(item)
    .addFluidOutput(liquid *amount)
    .addEnergyPerTickInput(131071)
    .build();
    func_1022(name,item,power,liquid);
}