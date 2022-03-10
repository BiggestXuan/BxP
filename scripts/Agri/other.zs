import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.mods.IMod;

static df as IItemStack[]=[
    <thermalfoundation:fertilizer>,<thermalfoundation:fertilizer:1>,<thermalfoundation:fertilizer:2>,<additions:bxloveu-super_fer>
];

static seed as IItemStack[]=[
<mysticalagriculture:iron_seeds>,
<mysticalagriculture:gold_seeds>,
<mysticalagriculture:aluminum_seeds>,
<mysticalagriculture:copper_seeds>,
<mysticalagriculture:tin_seeds>,
<mysticalagriculture:bronze_seeds>,
<mysticalagriculture:brass_seeds>,
<mysticalagriculture:silver_seeds>,
<mysticalagriculture:lead_seeds>,
<mysticalagriculture:steel_seeds>,
<mysticalagriculture:nickel_seeds>,
<mysticalagriculture:constantan_seeds>,
<mysticalagriculture:electrum_seeds>,
<mysticalagriculture:invar_seeds>,
<mysticalagriculture:signalum_seeds>,
<mysticalagriculture:lumium_seeds>,
<mysticalagriculture:enderium_seeds>,
<mysticalagriculture:aluminum_brass_seeds>,
<mysticalagriculture:electrical_steel_seeds>,
<mysticalagriculture:dark_steel_seeds>,
<mysticalagriculture:manasteel_seeds>,
<mysticalagriculture:thaumium_seeds>,
<mysticalagriculture:certus_quartz_seeds>,
<mysticalagriculture:fluix_seeds>,
<mysticalagriculture:void_metal_seeds>,
<mysticalagriculture:emerald_seeds>,
<mysticalagriculture:pig_seeds>,
<mysticalagriculture:blaze_seeds>,
<mysticalagriculture:aquamarine_seeds>,
<mysticalagriculture:quicksilver_seeds>,
<mysticalagriculture:amber_seeds>,
<mysticalagriculture:wood_seeds>,
<mysticalagriculture:knightmetal_seeds>,
<mysticalagriculture:enderman_seeds>,
<mysticalagriculture:wither_skeleton_seeds>,
<mysticalagriculture:silicon_seeds>,
<mysticalagriculture:sulfur_seeds>,
<mysticalagriculture:draconium_seeds>,
<mysticalagriculture:fiery_ingot_seeds>,
<mysticalagriculture:diamond_seeds>,
<mysticalagriculture:platinum_seeds>,
<mysticalagriculture:osmium_seeds>,
<mysticalagriculture:glowstone_seeds>,
<mysticalagriculture:creeper_seeds>,
<mysticalagriculture:end_steel_seeds>,
<mysticalagriculture:vibrant_alloy_seeds>,
<mysticalagriculture:energetic_alloy_seeds>,
<mysticalagriculture:pulsating_iron_seeds>,
<mysticalagriculture:coralium_seeds>
];

var out as IItemStack[]=[
<minecraft:iron_ingot>,
<minecraft:gold_ingot>,
<thermalfoundation:material:132>,
<thermalfoundation:material:128>,
<abyssalcraft:tiningot>,
<mekanism:ingot:2>,
<thaumcraft:ingot:2>,
<thermalfoundation:material:130>,
<thermalfoundation:material:131>,
<mekanism:ingot:4>,
<thermalfoundation:material:133>,
<thermalfoundation:material:164>,
<thermalfoundation:material:161>,
<thermalfoundation:material:162>,
<thermalfoundation:material:165>,
<thermalfoundation:material:166>,
<thermalfoundation:material:167>,
<tconstruct:ingots:5>,
<enderio:item_alloy_ingot>,
<enderio:item_alloy_ingot:6>,
<botania:manaresource>,
<thaumcraft:ingot>,
<appliedenergistics2:material>,
<appliedenergistics2:material:7>,
<thaumcraft:ingot:1>,
<minecraft:emerald>,
<minecraft:porkchop>,
<minecraft:blaze_rod>,
<astralsorcery:itemcraftingcomponent>,
<thaumcraft:quicksilver>,
<thaumcraft:amber>,
<minecraft:log>,
<twilightforest:knightmetal_ingot>,
<minecraft:ender_pearl>,
<minecraft:skull:1>,
<appliedenergistics2:material:5>,
<thermalfoundation:material:771>,
<draconicevolution:draconium_ingot>,
<twilightforest:fiery_ingot>,
<minecraft:diamond>,
<thermalfoundation:material:134>,
<mekanism:ingot:1>,
<minecraft:glowstone_dust>,
<minecraft:gunpowder>,
<enderio:item_alloy_ingot:8>,
<enderio:item_alloy_ingot:2>,
<enderio:item_alloy_ingot:1>,
<enderio:item_alloy_ingot:5>,
<abyssalcraft:coralium>
];

function seedGrowOre(input as IItemStack,output as IItemStack,name as string) as void{
    var count as int = 0;
    var chance as double[]=[0.3,0.55,0.85,1];
    for i in 0 .. 4{
        RecipeBuilder.newBuilder(name+count,"seed",380)
        .addItemInput(input)
        .addItemInput(df[i]*6)
        .addFluidInput(<liquid:water>*4000)
        .addEnergyPerTickInput(2500)
        .addItemOutput(input)
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i] / 1.1f)
        .addItemOutput(output).setChance(chance[i] / 1.3f)
        .addItemOutput(output).setChance(chance[i] / 1.7f)
        .addItemOutput(output).setChance(chance[i] / 2.0f)
        .addItemOutput(output).setChance(chance[i] / 2.5f)
        .addItemOutput(output).setChance(chance[i] / 3.0f)
        .addItemOutput(output).setChance(chance[i] / 3.2f)
        .build();
        count+=1;
    }
    for i in 0 .. 4{
        RecipeBuilder.newBuilder(name+count,"seed",500)
        .addItemInput(input)
        .addItemInput(df[i]*3)
        .addFluidInput(<liquid:water>*2000)
        .addEnergyPerTickInput(1000)
        .addItemOutput(input)
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i] / 1.3f)
        .addItemOutput(output).setChance(chance[i] / 1.8f)
        .addItemOutput(output).setChance(chance[i] / 2.2f)
        .addItemOutput(output).setChance(chance[i] / 2.5f)
        .build();
        count+=1;
    }
    for i in 0 .. 4{
        RecipeBuilder.newBuilder(name+count,"seed",750)
        .addItemInput(input)
        .addItemInput(df[i])
        .addFluidInput(<liquid:water>*500)
        .addEnergyPerTickInput(300)
        .addItemOutput(input)
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i] / 1.8f)
        .addItemOutput(output).setChance(chance[i] / 2.5f)
        .addItemOutput(output).setChance(chance[i] / 3.5f)
        .build();
        count+=1;
    }

}

var name as string[]=[
    "aq","aw","ae","ar","at","ay","au","ai","ao","ap","aa","as","ad","af","ag","ah","aj","ak","al","az","ax","ac",  //22
    "av","ab","an","am","qq","qw","qe","qr","qt","qy","qu","qi","qo","qp","qa","qs","qd","qf","qg","qh","qj","qk",
    "ql","qz","qx","qc","qv","qb","qn","qm","wq","ww","we","wr","wt","wy","wu","wi","wo","wp","wa","ws","wd","wf"
];

for i in 0 .. seed.length{
    seedGrowOre(seed[i],out[i],name[i]);
}

var map as IItemStack[IItemStack]={
    <mysticalagriculture:storage:1> : <mysticalagriculture:crafting:1>,
    <mysticalagriculture:storage:2> : <mysticalagriculture:crafting:2>,
    <mysticalagriculture:storage:3> : <mysticalagriculture:crafting:3>,
    <mysticalagriculture:storage:4> : <mysticalagriculture:crafting:4>,
};

for i,j in map{
    recipes.addShapeless(j*9,[i]);
}

var block as IItemStack[IItemStack]={
<mysticalagriculture:storage>:<mysticalagriculture:crafting>,
<mysticalagriculture:storage:1>:<mysticalagriculture:crafting:1>,
<mysticalagriculture:storage:2>:<mysticalagriculture:crafting:2>,
<mysticalagriculture:storage:3>:<mysticalagriculture:crafting:3>,
<mysticalagriculture:storage:4>:<mysticalagriculture:crafting:4>
};

for i in block{
    recipes.remove(i);
}

for i,j in block{
    recipes.addShapeless(i,[
        j,j,j,j,j,j,j,j,j
    ]);
}

