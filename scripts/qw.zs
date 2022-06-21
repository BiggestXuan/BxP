#priority 7
import scripts.API.config.amountFertilizer1;
import scripts.API.config.amountFertilizer2;
import scripts.API.config.amountFertilizer3;

recipes.remove(<thermalfoundation:fertilizer>);
recipes.remove(<thermalfoundation:fertilizer:1>);

mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:fertilizer>,<liquid:sap>);

recipes.addShaped(<thermalfoundation:fertilizer>*amountFertilizer1,
[
[<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>],
[<additions:bxloveu-bx_uningot>,<thermalfoundation:material:864>,<additions:bxloveu-bx_uningot>],
[<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>]
]);

recipes.addShaped(<thermalfoundation:fertilizer:1>*64,
[
[null,<additions:bxloveu-bx_ingot>,null],
[<additions:bxloveu-bx_ingot>,<thermalfoundation:material:865>,<additions:bxloveu-bx_ingot>],
[null,<additions:bxloveu-bx_ingot>,null]
]);

mods.thermalexpansion.Transposer.addFillRecipe(
<thermalfoundation:fertilizer:1>,
<thermalfoundation:fertilizer>*amountFertilizer2[0],
<liquid:lava>*amountFertilizer2[1],amountFertilizer2[1]*1.2
);

recipes.remove(<thermalexpansion:machine:9>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));

recipes.remove(<thermalexpansion:machine:9>);
<thermalexpansion:machine:9>.addTooltip(format.red("已禁用"));

mods.bloodmagic.BloodAltar.addRecipe(
<thermalfoundation:fertilizer:2>,
<thermalfoundation:fertilizer:1>,
3,
amountFertilizer3,
amountFertilizer3/25,
10
);
