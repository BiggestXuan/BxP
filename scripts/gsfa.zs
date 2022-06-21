#priority 12
import crafttweaker.item.IItemStack;
var sm=<additions:bxloveu-paper_xiangshushumiao>;
var mk=<additions:bxloveu-paper_mingkong>;

var output as IItemStack[]=[
    sm,mk
];

var input as IItemStack[]=[
    <minecraft:sapling>,<draconicevolution:draconic_core>
];

var i as int=0;
while i<=1{
    recipes.addShapeless(output[i]*4,[bx[6],input[i]]);
    i+=1;
}