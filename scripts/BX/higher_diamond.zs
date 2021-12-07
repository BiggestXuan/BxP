mods.thaumcraft.Crucible.registerRecipe("diamond", "", <additions:bxloveu-diamond_block>, <minecraft:diamond_block>, [<aspect:vitreus>*500]);

mods.botania.ManaInfusion.addInfusion(
<additions:bxloveu-diamond_block>,
<minecraft:diamond_block>,
500000
);

mods.bloodmagic.BloodAltar.addRecipe(
<additions:bxloveu-diamond_block>,
<botania:storage:3>,
4,
50000,
500,
10
);

recipes.addShapeless(<minecraft:diamond>*12,[<additions:bxloveu-diamond_block>]);