#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.bal.seedGrowOre;
import scripts.ts.addGrowRecipes;
import scripts.te.func_8406;
import scripts.er.func_7020;
import scripts.sat.func_2293;
import scripts.riu.func_1022;
import scripts.khx.addRecipe;

function addSeedGrowRecipe(input as IItemStack,output as IItemStack,name as string){
    seedGrowOre(input as IItemStack,output as IItemStack,name as string);
}

function addSeedGrowByChanceRecipe(a as IItemStack , b as IItemStack, c as double[] , d as string){
    addGrowRecipes(a as IItemStack , b as IItemStack, c as double[] , d as string);
}

function addDeInfusionAutoRecipe(input as IItemStack[],output as IItemStack,level as int,cost as int,name as string){
    func_8406(input, output, level, cost, name);
}

function addBloodAltarAutoRecipe(input as IItemStack,output as IItemStack,blood as int,name as string){
    func_7020(input,output,blood,name);
}

function addBotaniaAutoRecipe(input as IItemStack[],output as IItemStack,mana as int,name as string){
    addRecipe(input,output,mana,name);
}

function addBxTranslateRecipe(item as IItemStack,power as int,style as string,name as string){
    func_2293(item,power,style,name);
}

function addItemCopy(item as IItemStack,cost as int,liquid as ILiquidStack,name as string){
    RecipeBuilder.newBuilder("craft"+name,"craft",10)
    .addItemInput(item)
    .addFluidInput(liquid * cost)
    .addEnergyPerTickInput(131071)
    .addItemOutput(item*2)
    .build();
}