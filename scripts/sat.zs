#priority 58
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import scripts.kko.itemClass;
import scripts.nnhw.func_4036;
import scripts.lio.func_5858;
import scripts.iicx.func_4882;

function func_2293(input as IItemStack,power as int,kind as string,name as string){
    val object as itemClass = itemClass(input,power,kind);
    func_4036(object);
    func_4882(name,object.item,object.power,func_5858(object.kind));
}
