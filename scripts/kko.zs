#priority 64
import crafttweaker.item.IItemStack;

zenClass itemClass{
    var item as IItemStack;
    var power as int;
    var kind as string;
    zenConstructor(item as IItemStack,power as int,kind as string){
        this.item = item;
        this.power = power;
        this.kind = kind;
    }
}