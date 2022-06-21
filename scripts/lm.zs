import mods.mekanism.enrichment;
import mods.mekanism.crusher;
import crafttweaker.item.IItemStack;

var input as IItemStack[]=[
    <abyssalcraft:coraliumore>,
    <abyssalcraft:abyore>,
    <abyssalcraft:abycorore>,
    <abyssalcraft:abydreadore>,
    <astralsorcery:blockcustomore:1>
];

var output as IItemStack[]=[
    <abyssalcraft:coralium>,
    <acintegration:dust>,
    <abyssalcraft:coralium>,
    <acintegration:dust>,
    <astralsorcery:itemcraftingcomponent:2>
];

var i =0;
while(i<5){
    enrichment.addRecipe(input[i],output[i]*2);
    i+=1;
}

enrichment.addRecipe(<minecraft:quartz>,<appliedenergistics2:material:11>);

recipes.remove(<mekanism:controlcircuit:1>);
recipes.remove(<mekanism:controlcircuit:2>);
recipes.remove(<mekanism:controlcircuit:3>);

recipes.addShaped(<mekanism:controlcircuit:1>,[
[null,null,null],
[<additions:bxloveu-bx_uningot>,<mekanism:controlcircuit>,<additions:bxloveu-bx_uningot>],
[null,null,null]
]);

recipes.addShaped(<mekanism:controlcircuit:2>,[
[null,null,null],
[<additions:bxloveu-bx_ingot>,<mekanism:controlcircuit>,<additions:bxloveu-bx_ingot>],
[null,null,null]
]);

recipes.addShaped(<mekanism:controlcircuit:3>,[
[null,null,null],
[<additions:bxloveu-bx_enchingot>,<mekanism:controlcircuit>,<additions:bxloveu-bx_enchingot>],
[null,null,null]
]);

mods.mekanism.combiner.removeAllRecipes();

crusher.addRecipe(<appliedenergistics2:sky_stone_block>,<appliedenergistics2:material:45>);
crusher.addRecipe(<appliedenergistics2:sky_stone_chest>,<appliedenergistics2:material:45>*8);
crusher.addRecipe(<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:2>);

recipes.remove(<mekanism:atomicdisassembler>);

recipes.addShaped(<mekanism:atomicdisassembler>,[
[<minecraft:bedrock>,<mekanism:atomicalloy>,<minecraft:bedrock>],
[<minecraft:bedrock>,<mekanism:controlcircuit:2>,<minecraft:bedrock>],
[null,<additions:bxloveu-bx_ingot>,null]
]);

recipes.remove(<mekanism:machineblock2:6>);
recipes.remove(<mekanism:machineblock2:3>);
recipes.remove(<mekanism:machineblock2:7>);
recipes.remove(<mekanism:machineblock2:8>);

recipes.addShaped(<mekanism:machineblock2:6>,[
[<mekanism:controlcircuit:3>,<additions:bxloveu-bx_uningot>,<mekanism:controlcircuit:3>],
[<mekanism:atomicalloy>,<additions:bxloveu-bx_ingot>,<mekanism:atomicalloy>],
[<mekanism:controlcircuit:3>,<additions:bxloveu-bx_uningot>,<mekanism:controlcircuit:3>]
]);

var power = <mekanismgenerators:generator:6>;
recipes.remove(power);

recipes.addShaped(power,[
    [null,bx[4],null],
    [bx[4],<mekanism:ingot:1>,bx[4]],
    [null,bx[4],null]
]);

for i in modss{
    if(loadedMods in i){
        for item in loadedMods[i].items{
            recipes.removeAll();
            mods.ItemStages.addItemStage("disabled",item);
        }
    }
}


var s1= <mekanismgenerators:reactor:1>;
recipes.remove(<mekanismgenerators:reactor:2>);
recipes.addShaped(<mekanismgenerators:reactor:2>*2,[
    [bx[5],s1,bx[5]],
    [s1,bx[5],s1],
    [bx[5],s1,bx[5]]
]);