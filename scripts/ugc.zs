import crafttweaker.item.IItemStack;

import scripts.aa.bx;

function addRecipes(x as IItemStack,y as IItemStack){
    recipes.addShapeless(y,[
        x,<minecraft:paper>,bx[4]
    ]);
}

val output as IItemStack[]=[
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:sd"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:de3"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:botania"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:de2"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:qd"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:as"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:de1"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:tic"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:magic_power"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:tc"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:caigengzi"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:bm"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fuel_doing"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:seed"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:blood"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:oh"}),
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:as_block"})
];

val input as IItemStack[]=[
<minecraft:stone>,
<minecraft:stone:1>,
<minecraft:stone:2>,
<minecraft:stone:3>,
<minecraft:stone:4>,
<minecraft:stone:5>,
<minecraft:stone:6>,
<minecraft:grass>,
<minecraft:dirt>,
<minecraft:dirt:1>,
<minecraft:dirt:2>,
<minecraft:cobblestone>,
<minecraft:planks>,
<minecraft:planks:1>,
<minecraft:planks:2>,
<minecraft:planks:3>,
<minecraft:planks:4>
];

for i in 0 .. input.length{
    addRecipes(input[i],output[i]);
}

for i in output{
    i.addTooltip(format.green("放入控制器中，确保背包有相关材料"));
    i.addTooltip(format.green("使用木棍右击控制器将自动搭建"));
}