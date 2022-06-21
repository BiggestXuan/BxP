#priority 52
import crafttweaker.item.IItemStack;
import mods.ItemStages.addItemStage;

global removeRecipeMethod as string[]=[];

function remove(item as IItemStack){
    recipes.remove(item);
}

function disable(item as IItemStack){
    addItemStage("disabled",item);
    recipes.remove(item);
}