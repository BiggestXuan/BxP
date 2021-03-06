import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

var botania1 as IItemStack[]=[
    <botania:manaresource:1>,
    <botania:manaresource:2>,
    <botania:manaresource:7>
];

var botania2 as IItemStack[]=[
    <botania:manaresource:5>,
    <botania:manaresource:9>
];

var brf as int[]=[1500,4000,10000,35000];
var count as int =0;

for a in botania1{
    RecipeBuilder.newBuilder("magic"+count,"magic_power",10)
    .addItemInput(a)
    .addEnergyPerTickOutput(brf[0])
    .build();
    count+=1;
}

for a in botania2{
    RecipeBuilder.newBuilder("magic"+count,"magic_power",10)
    .addItemInput(a)
    .addEnergyPerTickOutput(brf[1])
    .build();
    count+=1;
}

RecipeBuilder.newBuilder("magic"+count,"magic_power",10)
    .addItemInput(<botania:manaresource:4>)
    .addEnergyPerTickOutput(brf[2])
    .build();
count+=1;

RecipeBuilder.newBuilder("magic"+count,"magic_power",10)
    .addItemInput(<botania:manaresource:14>)
    .addEnergyPerTickOutput(brf[3])
    .build();
count+=1;

var ast as IItemStack[]=[
    <astralsorcery:itemcraftingcomponent>,
    <astralsorcery:itemusabledust>,
    <astralsorcery:itemusabledust:1>,
    <astralsorcery:itemcraftingcomponent:1>,
    <astralsorcery:itemcraftingcomponent:2>,
    <astralsorcery:itemcraftingcomponent:4>
];

var astrf as int[]=[
    1500,3000,3000,4500,4500,4000
];

var i as int=0;
while(i<6){
    RecipeBuilder.newBuilder("magic"+count,"magic_power",10)
    .addItemInput(ast[i])
    .addEnergyPerTickOutput(astrf[i])
    .build();
    count+=1;
    i+=1;
}

RecipeBuilder.newBuilder("magic"+count,"magic_power",10)
    .addFluidInput(<liquid:astralsorcery.liquidstarlight>*1000)
    .addEnergyPerTickOutput(2000)
    .build();
    count+=1;

var blood as IItemStack[]=[
    <bloodarsenal:base_item:3>,
    <bloodarsenal:base_item:4>,
    <bloodarsenal:blood_diamond>,
    <bloodarsenal:blood_diamond:1>,
    <bloodarsenal:blood_diamond:2>,
    <bloodarsenal:blood_diamond:3>
];

var bloodrf as int[]=[
    2500,3500,5000,25000,32000,200000
];
i=0;
while(i<6){
    RecipeBuilder.newBuilder("magic"+count,"magic_power",10)
    .addItemInput(blood[i])
    .addEnergyPerTickOutput(bloodrf[i])
    .build();
    count+=1;
    i+=1;
}

var tc as IItemStack[]=[
    <thaumcraft:salis_mundus>,
    <thaumcraft:ingot:2>,
    <thaumcraft:ingot>,
    <thaumcraft:ingot:1>,
    <thaumadditions:mithrillium_ingot>,
    <thaumadditions:adaminite_ingot>,
    <thaumadditions:mithminite_ingot>
];

var tcrf as int[]=[
    300,1000,1000,5000,180000,1500000,20000000
];
i=0;
while(i<7){
    RecipeBuilder.newBuilder("magic"+count,"magic_power",25)
    .addItemInput(tc[i])
    .addEnergyPerTickOutput(tcrf[i])
    .build();
    count+=1;
    i+=1;
}