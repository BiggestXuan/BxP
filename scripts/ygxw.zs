#priority 15
import mods.botaniatweaks.Agglomeration;
import mods.thaumcraft.ArcaneWorkbench;
import scripts.aa.bx;
recipes.remove(<tconevo:material>);

Agglomeration.addRecipe(<tconevo:material>,[<additions:bxloveu-lower_martix_ingot>,bx[5]],
500000,
0xA439FB,0xFF6600,
<additions:bxloveu-diamond_block>,<taiga:seismum_block>,<minecraft:gold_block>);

Agglomeration.addRecipe(<taiga:abyssum_ingot>,[
<minecraft:iron_ingot>,bx[4]],
100000
);

var g = <minecraft:gold_ingot>;

ArcaneWorkbench.registerShapedRecipe("lower_martix","",20,[
<aspect:biggestxuan>*3],
<additions:bxloveu-lower_martix_ingot>,
[
    [null,g,null],
    [g,bx[5],g],
    [null,g,null]
]);

ArcaneWorkbench.registerShapedRecipe("lower_martix1","",50,[
<aspect:aer>*20],
<additions:bxloveu-lower_martix_ingot>,
[
    [<ore:ingotCopper>,<ore:ingotIron>,<ore:ingotCopper>],
    [<ore:ingotIron>,bx[5],<ore:ingotIron>],
    [<ore:ingotCopper>,<ore:ingotIron>,<ore:ingotCopper>]
]);