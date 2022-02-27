import moretweaker.draconicevolution.FusionCrafting;
import mods.thaumcraft.Infusion;

recipes.removeByMod("projecte");

FusionCrafting.add(<projecte:item.pe_philosophers_stone>.withTag({}),<projecte:item.pe_fuel>,FusionCrafting.BASIC,114518,[
    <minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,
    <minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>
]);

recipes.addShapeless(<projecte:item.pe_fuel>,[
    <draconicevolution:chaotic_core>.reuse(),<minecraft:coal>,<minecraft:coal>,<minecraft:coal>,<minecraft:coal>
]);

recipes.addShapeless(<projecte:item.pe_fuel:1>,[
    <draconicevolution:chaotic_core>.reuse(),<projecte:item.pe_fuel>,<projecte:item.pe_fuel>,<projecte:item.pe_fuel>,<projecte:item.pe_fuel>
]);

recipes.addShapeless(<projecte:item.pe_fuel:2>,[
    <draconicevolution:chaotic_core>.reuse(),<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>
]);

var f= <projecte:item.pe_fuel:2>;
var d = <minecraft:diamond>;

recipes.addShaped(<projecte:item.pe_matter>,[
    [f,f,f],
    [f,d,f],
    [f,f,f]
]);
var m = <projecte:item.pe_matter>;
recipes.addShaped(<projecte:item.pe_matter:1>,[
    [m,m,m],
    [m,d,m],
    [m,m,m]
]);

FusionCrafting.add(<projecte:condenser_mk1>,<minecraft:chest>,FusionCrafting.CHAOTIC,1000000000 as long,[
    <mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>
]);

Infusion.registerRecipe("trans_table","",<projecte:item.pe_transmutation_tablet>,16,
[<aspect:biggestxuan>*10000],
<projecte:transmutation_table>,
[<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>]);

recipes.addShaped(<projecte:interdiction_torch>,[
    [<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>],
    [<minecraft:torch>,<astralsorcery:itemtunedrockcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.armara"}}),<minecraft:torch>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);

<projecte:interdiction_torch>.addTooltip("使用共鸣遁甲座水晶石合成");