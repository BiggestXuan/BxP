#priority 9
import crafttweaker.item.IItemStack;
import mods.thaumcraft.ArcaneWorkbench;
import scripts.aa.bx;

var smelter as IItemStack[IItemStack]={
    <thaumcraft:smelter_void> : <thaumcraft:plate:3>,
    <thaumcraft:smelter_thaumium> : <thaumcraft:plate:2>,
    <thaumadditions:mithrillium_smelter>: <thaumadditions:mithrillium_plate>,
    <thaumadditions:adaminite_smelter> :  <thaumadditions:adaminite_plate>,
    <thaumadditions:mithminite_smelter>: <thaumadditions:mithminite_plate>
};

for i in smelter{
    ArcaneWorkbench.removeRecipe(i);
}
ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);

function addRecipe(x as IItemStack, y as IItemStack){
    recipes.addShaped(y,[
        [x,x,x],
        [x,<thaumcraft:smelter_basic>,x],
        [x,x,x]
    ]);
}

recipes.addShaped(<thaumcraft:smelter_basic>,[
    [bx[4],bx[4],bx[4]],
    [bx[4],<minecraft:furnace>,bx[4]],
    [bx[4],bx[4],bx[4]]
]);

for i,j in smelter{
    addRecipe(j,i);
}
