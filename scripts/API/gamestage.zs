#priority 50
import crafttweaker.item.IItemStack;

import mods.ItemStages.addItemStage;
import mods.DimensionStages.addDimensionStage;

import scripts.xo.disable;

function addItemDisabled(item as IItemStack[]){
    for i in item{
        disable(i);
    }
}

function addItemAGameStage(item as IItemStack[],stage as string){
    for i in item{
        addItemStage(stage,i);
    }
}

function addDimensionAGameStage(id as int[],stage as string){
    for i in id{
        addDimensionStage(stage,i);
    }
}