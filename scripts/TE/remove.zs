#ikwid
import mods.thermalexpansion.Insolator;
import crafttweaker.item.IItemStack;

import scripts.Agri.other.seed;

var fer as IItemStack[]=[
<thermalfoundation:fertilizer>,
<thermalfoundation:fertilizer:1>,
<thermalfoundation:fertilizer:2>];

function removeInsolatorRecipe(x as IItemStack,y as IItemStack) as void {
    Insolator.removeRecipe(x,y);
}

for i in seed{
    for j in fer{
        removeInsolatorRecipe(i,j);
    }
}

var remove as IItemStack[]=[
<mysticalagriculture:terrasteel_seeds>,
<mysticalagriculture:tier1_inferium_seeds>,
<mysticalagriculture:tier2_inferium_seeds>,
<mysticalagriculture:tier3_inferium_seeds>,
<mysticalagriculture:tier4_inferium_seeds>,
<mysticalagriculture:tier5_inferium_seeds>,
<mysticalagriculture:nether_quartz_seeds>
];

for i in remove{
    for j in fer{
        removeInsolatorRecipe(i,j);
    }
}