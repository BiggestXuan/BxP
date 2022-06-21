#priority 50
import crafttweaker.item.IItemStack;
import thaumcraft.aspect.CTAspectStack;

import scripts.th.set;

function addItemAspect(item as IItemStack,aspect as CTAspectStack[]){
    set(item,aspect);
}