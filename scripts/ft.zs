import crafttweaker.item.IItemStack;

import scripts.aa.bx;

recipes.remove(<refinedstorage:quartz_enriched_iron>);

recipes.addShapeless(<refinedstorage:quartz_enriched_iron>,[
    bx[4],bx[4],<minecraft:iron_ingot>
]);

val chest as IItemStack[]=[
    <refinedstorage:storage_part>,
    <refinedstorage:storage_part:1>,
    <refinedstorage:storage_part:2>,
    <refinedstorage:storage_part:3>
];

for i in chest{
    recipes.remove(i);
}

for i in 1 .. chest.length{
    recipes.addShapeless(chest[i],[
        chest[i- 1],chest[i- 1],chest[i- 1],chest[i- 1]
    ]);
}

recipes.addShapeless(chest[0]*4,[
    <refinedstorage:quartz_enriched_iron>,<minecraft:redstone>
]);