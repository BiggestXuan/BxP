#priority 50
import crafttweaker.item.IItemStack;
import scripts.escv.getCraftingSeed;
import scripts.escv.seedCrafting;

function getCraftSeed(a as int) as IItemStack{
    return getCraftingSeed(a);
}

function addSeedRecipe(input1 as IItemStack[],input2 as IItemStack){
    seedCrafting(input1 as IItemStack[], input2 as IItemStack);
}