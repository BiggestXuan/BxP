#priority 18
recipes.remove(<thermalexpansion:frame>);
recipes.remove(<thermalfoundation:material:514>);
recipes.remove(<thermalfoundation:material:513>);
recipes.remove(<thermalfoundation:material:512>);
recipes.remove(<thermalfoundation:material:515>);
recipes.remove(<thermalexpansion:device:10>);

<thermalexpansion:device:10>.addTooltip(format.red("已禁用"));

recipes.addShaped(<thermalexpansion:frame>*4,[
[<additions:bxloveu-bx_uningot>,<mekanism:basicblock:8>,<additions:bxloveu-bx_uningot>],
[<mekanism:basicblock:8>,<thermalfoundation:material:257>,<mekanism:basicblock:8>],
[<additions:bxloveu-bx_uningot>,<mekanism:basicblock:8>,<additions:bxloveu-bx_uningot>]
]);

recipes.addShaped(<thermalfoundation:material:513>,[
[null,null,<minecraft:redstone>],
[null,<additions:bxloveu-bx_uningot>,null],
[<minecraft:redstone>,null,null]
]);

recipes.addShaped(<thermalfoundation:material:515>,[
[null,<minecraft:redstone>,null],
[null,<additions:bxloveu-bx_uningot>,null],
[null,<minecraft:redstone>,null]
]);

recipes.addShaped(<thermalfoundation:material:514>,[
[<minecraft:redstone>,null,null],
[null,<additions:bxloveu-bx_uningot>,null],
[null,null,<minecraft:redstone>]
]);

recipes.addShaped(<thermalfoundation:material:512>,[
[null,<additions:bxloveu-bx_uningot>,null],
[null,<minecraft:iron_ingot>,null],
[null,<additions:bxloveu-bx_uningot>,null]
]);

