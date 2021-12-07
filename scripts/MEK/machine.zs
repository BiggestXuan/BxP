// 8:冶金灌注机
recipes.remove(<mekanism:machineblock:8>);

recipes.remove(<mekanism:machineblock>);

recipes.addShaped(<mekanism:machineblock:8>,[
[<additions:bxloveu-bx_uningot>,<minecraft:furnace>,<additions:bxloveu-bx_uningot>],
[<minecraft:redstone>,<mekanism:ingot:1>,<minecraft:redstone>],
[<additions:bxloveu-bx_uningot>,<minecraft:furnace>,<additions:bxloveu-bx_uningot>]
]);

recipes.addShaped(<mekanism:machineblock>,[
[<appliedenergistics2:material:10>,<appliedenergistics2:material:12>,<appliedenergistics2:material:10>],
[<appliedenergistics2:material:11>,<mekanism:basicblock:8>,<appliedenergistics2:material:11>],
[<appliedenergistics2:material:10>,<appliedenergistics2:material:12>,<appliedenergistics2:material:10>]
]);

recipes.remove(<mekanism:machineblock2:15>);

recipes.addShapeless(<mekanism:machineblock2:15>,[<mekanism:machineblock2:14>]);