#priority 51
import crafttweaker.item.IItemStack;
import mods.avaritia.ExtremeCrafting;

static name as string[]=[];

function func_3514(x as IItemStack,y as IItemStack,name as string) as void{
    ExtremeCrafting.addShaped(name,y,[
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x],
        [x,x,x,x,x,x,x,x,x]
    ]);
}