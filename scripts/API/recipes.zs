#priority 50
import crafttweaker.item.IItemStack;
import thaumcraft.aspect.CTAspectStack;

import scripts.ar.superRecipe;
import scripts.zpo.func_3514;
import scripts.xlle.func_9915;

function addThumcraftInfusionRecipe(name as string,res as string,center_item as IItemStack,damage as int,input as IItemStack[],output as IItemStack,aspect as CTAspectStack[]){
    mods.thaumcraft.Infusion.registerRecipe(name,res,output,damage,aspect,center_item,input);
}

function addSuperCraftRecipe(name as string,output as IItemStack,input as IItemStack[][]){
    mods.avaritia.ExtremeCrafting.addShaped(name,output,input);
}

function removeItemRecipe(item as IItemStack){
    recipes.remove(item);
}

function removeItemStackRecipe(item as IItemStack[]){
    for i in item{
        removeItemRecipe(i);
    }
}

function addShapedRecipe(output as IItemStack,input as IItemStack[][]){
    recipes.addShaped(output,input);
}

function addShapelessRecipe(output as IItemStack,input as IItemStack[]){
    recipes.addShapeless(output,input);
}

function addCreativeItemRecipe(name as string,input as IItemStack,output as IItemStack){
    superRecipe(name,input,output);
}

function addSuperAllRecipe(name as string,input as IItemStack,output as IItemStack){
    func_3514(input,output,name);
}

function addSameItemRecipe(input as IItemStack[]){
    func_9915(input);
}