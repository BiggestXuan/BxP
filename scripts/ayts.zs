#priority 8
recipes.remove(<enderio:block_simple_furnace>);
recipes.remove(<enderio:block_simple_alloy_smelter>);
recipes.remove(<enderio:block_simple_sag_mill>);
recipes.remove(<enderio:block_simple_stirling_generator>);

recipes.addShaped(<enderio:block_simple_furnace>,[
[<minecraft:furnace>,<minecraft:furnace>,<minecraft:furnace>],
[<minecraft:furnace>,<mekanism:basicblock:8>,<minecraft:furnace>],
[<minecraft:furnace>,<minecraft:furnace>,<minecraft:furnace>]
]);

recipes.addShaped(<enderio:block_simple_alloy_smelter>,[
[<additions:bxloveu-bx_uningot>,<mekanism:basicblock:8>,<additions:bxloveu-bx_uningot>],
[<additions:bxloveu-bx_uningot>,<mekanism:machineblock>,<additions:bxloveu-bx_uningot>],
[<additions:bxloveu-bx_uningot>,<mekanism:basicblock:8>,<additions:bxloveu-bx_uningot>]
]);

recipes.addShaped(<enderio:block_simple_sag_mill>,[
[<additions:bxloveu-bx_uningot>,<minecraft:furnace>,<additions:bxloveu-bx_uningot>],
[<additions:bxloveu-bx_uningot>,<mekanism:basicblock:8>,<additions:bxloveu-bx_uningot>],
[<additions:bxloveu-bx_uningot>,<minecraft:furnace>,<additions:bxloveu-bx_uningot>]
]);

recipes.addShaped(<enderio:block_simple_stirling_generator>,[
[<solarflux:solar_panel_1>,<additions:bxloveu-bx_uningot>,<solarflux:solar_panel_1>],
[<solarflux:solar_panel_1>,<additions:bxloveu-bx_uningot>,<solarflux:solar_panel_1>],
[<solarflux:solar_panel_1>,<additions:bxloveu-bx_uningot>,<solarflux:solar_panel_1>]
]);