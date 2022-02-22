import moretweaker.draconicevolution.FusionCrafting;
recipes.remove(<twilightforest:fiery_ingot>);

recipes.addShapeless(<twilightforest:fiery_ingot>*9,[
<twilightforest:block_storage:1>
]);

mods.thaumcraft.Infusion.registerRecipe("fire_ingot","",<twilightforest:block_storage:1>,
5,
[<aspect:ignis>*80,<aspect:metallum>*20],
<minecraft:iron_block>,
[<minecraft:blaze_rod>,<twilightforest:fiery_blood>,
<minecraft:blaze_rod>,<twilightforest:fiery_blood>,
<minecraft:blaze_rod>,<twilightforest:fiery_blood>
]
);

mods.thaumcraft.Infusion.registerRecipe("fire_ingot","",<twilightforest:block_storage:1>,
5,
[<aspect:ignis>*80,<aspect:metallum>*20],
<minecraft:iron_block>,
[<minecraft:blaze_rod>,<twilightforest:fiery_tears>,
<minecraft:blaze_rod>,<twilightforest:fiery_tears>,
<minecraft:blaze_rod>,<twilightforest:fiery_tears>]
);

recipes.addShapeless(<twilightforest:fiery_blood>,
[<twilightforest:fiery_tears>
]);

recipes.addShapeless(<twilightforest:fiery_tears>,
[<twilightforest:fiery_blood>
]);

FusionCrafting.add(<twilightforest:fiery_blood>*2,<vampirism:soul_orb_vampire>,FusionCrafting.DRACONIC,1000000,[
    <minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:blaze_rod>
]);