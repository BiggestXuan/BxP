import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

import scripts.aa.bx;
import scripts.API.config.provideBloodRate;
import scripts.API.config.heartProvideBlood;
import scripts.API.config.canProvideBloodMods;

var name as string = "blood_name";
var count as int = 0;
var r1 = provideBloodRate[0];
var r2 = provideBloodRate[1]*10;

RecipeBuilder.newBuilder(name+count,"blood",100)
.addItemInput(<vampirism:human_heart>)
.addFluidOutput(<liquid:lifeessence>*heartProvideBlood)
.build();
count+=1;

for name in canProvideBloodMods{
    for i in loadedMods[name].items{
        if(i.isFood){
            var amount = i.healAmount*r1 + i.saturation*r2;
            RecipeBuilder.newBuilder(name+count,"blood",100)
            .addItemInput(i)
            .addFluidOutput(<liquid:lifeessence>*amount)
            .build();
            count+=1;
        }
    }
}