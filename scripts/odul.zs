import mods.mekanism.enrichment;
import mods.mekanism.crusher;
import crafttweaker.item.IItemStack;
import scripts.aa.bx;

var speed = <mekanism:speedupgrade>;
var power = <mekanism:energyupgrade>;

var osmium = <mekanism:ingot:1>;
var gold = <minecraft:gold_ingot>;

recipes.remove(speed);
recipes.remove(power);

recipes.addShaped(speed*8,[
    [osmium,osmium,osmium],
    [osmium,bx[4],osmium],
    [osmium,osmium,osmium]
]);

recipes.addShaped(power*8,[
    [gold,gold,gold],
    [gold,bx[4],gold],
    [gold,gold,gold]
]);

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

recipes.remove(<mekanism:machineblock2:1>);

recipes.addShaped(<mekanism:machineblock2:1>,[
    [<mekanism:enrichedalloy>,<mekanism:controlcircuit>,<mekanism:enrichedalloy>],
    [<mekanism:controlcircuit>,<mekanism:basicblock:9>,<mekanism:controlcircuit>],
    [<mekanism:enrichedalloy>,<mekanism:controlcircuit>,<mekanism:enrichedalloy>]
]);

recipes.remove(<mekanism:machineblock:4>);

recipes.addShaped(<mekanism:machineblock:4>,[
[<mekanism:controlcircuit:2>,<mekanism:controlcircuit:2>,<mekanism:controlcircuit:2>],
[<mekanism:controlcircuit:2>,<mekanism:atomicdisassembler>,<mekanism:controlcircuit:2>],
[<additions:bxloveu-bx_ingot>,<additions:bxloveu-bx_ingot>,<additions:bxloveu-bx_ingot>]
]);

recipes.remove(<mekanism:basicblock:8>);

recipes.addShaped(<mekanism:basicblock:8>,[
[<ore:ingotSteel>,<additions:bxloveu-bx_uningot>,<ore:ingotSteel>],
[<additions:bxloveu-bx_uningot>,<minecraft:gold_ingot>,<additions:bxloveu-bx_uningot>],
[<ore:ingotSteel>,<additions:bxloveu-bx_uningot>,<ore:ingotSteel>]
]);

recipes.remove(<mekanismgenerators:reactor:1>);
recipes.remove(<mekanismgenerators:reactor>);

recipes.addShaped(<mekanismgenerators:reactor:1>*4,[
    [bx[5],<mekanism:basicblock:8>,bx[5]],
    [<mekanism:basicblock:8>,<mekanism:atomicalloy>,<mekanism:basicblock:8>],
    [bx[5],<mekanism:basicblock:8>,bx[5]]
]);

recipes.addShaped(<mekanismgenerators:reactor>,[
    [bx[5],<mekanismgenerators:reactor:1>,bx[5]],
    [<mekanismgenerators:reactor:1>,<modularmachinery:blockcontroller>,<mekanismgenerators:reactor:1>],
    [<mekanismgenerators:reactor:1>,<mekanismgenerators:reactor:1>,<mekanismgenerators:reactor:1>]
]);