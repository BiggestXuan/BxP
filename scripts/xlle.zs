#priority 54
import crafttweaker.item.IItemStack;

function func_9915(item as IItemStack[]){
    for i in 1 .. item.length{
        recipes.addShapeless(item[i],[item[i - 1]]);
    }
    recipes.addShapeless(item[0],[item[item.length - 1]]);
}