import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.ctintegration.projecte.EMCManager;
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
<mysticalagriculture:fluix_seeds>
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
<appliedenergistics2:material:7>
];

function set (x as IItemStack) as double[]{
var sd as double[]=[];
if (x in df[0]){
sd=[0.5,0.2,0.05,0.01];
}
if (x in df[1]){
sd=[0.7,0.4,0.1,0.05];
}
if (x in df[2]){
sd=[1,0.7,0.3,0.15];
}
if (x in df[3]){
sd=[1,1,0.5,0.3];
}
return sd;
}

var sd as double[]=[];
var count as int=1;
var i as int=0;
var j as int=0;

while i<=23{
    while j<=3{
        sd=set(df[j]);
        RecipeBuilder.newBuilder("other"+count,"seed",200).
        addItemInput(seed[i]).
        addItemInput(df[j]).
        addFluidInput(<liquid:water>*500).
        addEnergyPerTickInput(100).
        addItemOutput(seed[i]).
        addItemOutput(out[i]).setChance(sd[0]).
        addItemOutput(out[i]).setChance(sd[1]).
        addItemOutput(out[i]).setChance(sd[2]).
        addItemOutput(out[i]).setChance(sd[3]).
        build();
    count+=1;
    j+=1;
    }
    i+=1;
    j=0;
}

var mod as IMod = loadedMods["mysticalagriculture"];
for item in mod.items{
    item.emc=0;
}