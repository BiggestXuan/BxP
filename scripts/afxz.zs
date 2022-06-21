#priority 9
import scripts.aa.bx;
import crafttweaker.item.IItemStack;

var gold=<minecraft:gold_block>;

recipes.addShaped(<tconstruct:materials:50>,[
    [gold,gold,gold],
    [gold,bx[6],gold],
    [gold,gold,gold]
]);

recipes.addShaped(<tconstruct:materials:50>,[
    [bx[5],bx[5],bx[5]],
    [bx[5],bx[13],bx[5]],
    [bx[5],bx[5],bx[5]]
]);

<tconstruct:materials:50>.addTooltip(format.green("可合成"));

recipes.addShapeless(<tconstruct:materials>*8,[<ore:blockSeared>,<ore:blockSeared>]);