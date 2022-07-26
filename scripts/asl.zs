#priority 18

import crafttweaker.item.IItemStack;

import scripts.API.config.canUseProjecte;
import scripts.API.config.canUseProjecteStage;
import scripts.API.config.canUseTimeWatch;
import scripts.API.config.canUseMatter;
import scripts.API.config.canUseEMC;
import scripts.API.config.canUseProjecteBook;

import scripts.API.gamestage.addItemDisabled;
import scripts.API.gamestage.addItemAGameStage;

import scripts.nro.func_7011;
import scripts.nro.func_6560;

import mods.ItemStages;

static clock as IItemStack = <minecraft:clock>;

var stage = canUseProjecteStage;
var canUse as bool = canUseProjecte;
var unlockRecipe as bool = false;

function disableTip(s as string){
    var name as string[]=["EMC","EMC：","§eEMC：","§eEMC总和：","EMC:","§eEMC:","Stack EMC:","§eStack EMC"];
    for i in name{
        ItemStages.stageTooltip(s,i);
    }
}

function addRecipe(a as IItemStack,b as IItemStack,c as IItemStack){
    recipes.addShaped(c,[
        [b,b,b],
        [b,a,b],
        [b,b,b]
    ]);
}

function addRecipe2(a as IItemStack,b as IItemStack){
    recipes.addShapeless(a,[b,b,b,b]);
}

if(canUse){
    var a as IItemStack= func_7011(stage);
    if(!func_6560(stage)){
        addItemAGameStage(loadedMods["projecte"].items,stage);
        disableTip(stage);
    }
if(canUseMatter){
    var matter as IItemStack[]=[<projecte:item.pe_fuel>,<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:2>,<projecte:item.pe_matter>,<projecte:item.pe_matter:1>];
    for i in 0 .. matter.length{
        addRecipe2(matter[i],matter[i+1]);
        if (i==3) break;
    }
}
if(canUseTimeWatch){
    addRecipe(clock,a,<projecte:item.pe_time_watch>);
}
if(canUseEMC){
    addRecipe(<projecte:item.pe_philosophers_stone>,a,<projecte:transmutation_table>);
}
if(canUseProjecteBook){
    addRecipe(<minecraft:book>,a,<projecte:item.pe_tome>);
}}
else{
    addItemDisabled(loadedMods["projecte"].items);
    disableTip("disabled");
}
