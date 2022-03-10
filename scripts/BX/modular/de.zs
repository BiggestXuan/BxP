import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.BX.item.bx;

function recipes(input as IItemStack[], output as IItemStack, level as int, cost as int, name as string) as void{
    var count as int = 0;
    var length as int = input.length;
    if(length == 5){
        if(level <= 3){
            RecipeBuilder.newBuilder(name+count,"de3",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        if(level <= 2){
            RecipeBuilder.newBuilder(name+count,"de2",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        if(level <= 1){
            RecipeBuilder.newBuilder(name+count,"de1",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        return;
    }
    if(length == 7){
        if(level <= 3){
            RecipeBuilder.newBuilder(name+count,"de3",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        if(level <= 2){
            RecipeBuilder.newBuilder(name+count,"de2",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        if(level <= 1){
            RecipeBuilder.newBuilder(name+count,"de1",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        return;
    }
    if(length == 8){
        if(level <= 3){
            RecipeBuilder.newBuilder(name+count,"de3",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemInput(input[7])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        if(level <= 2){
            RecipeBuilder.newBuilder(name+count,"de2",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemInput(input[7])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        if(level <= 1){
            RecipeBuilder.newBuilder(name+count,"de1",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemInput(input[7])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        return;
    }
    if(length == 9){
        if(level <= 3){
            RecipeBuilder.newBuilder(name+count,"de3",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemInput(input[7])
            .addItemInput(input[8])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        if(level <= 2){
            RecipeBuilder.newBuilder(name+count,"de2",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemInput(input[7])
            .addItemInput(input[8])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
        if(level <= 1){
            RecipeBuilder.newBuilder(name+count,"de1",200)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemInput(input[7])
            .addItemInput(input[8])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/200)
            .build();
            count+=1;
        }
    return;
    }
    return;
}
//recipes(input as IItemStack[], output as IItemStack, level as int, cost as int, name as string)

recipes([
<draconicevolution:draconic_core>,
<draconicevolution:draconic_core>,
<draconicevolution:draconic_core>,
<draconicevolution:draconic_core>,
<minecraft:nether_star>,
<minecraft:nether_star>,
<minecraft:nether_star>,
<additions:bxloveu-bx_uningot>,
<additions:bxloveu-bx_uningot>],<draconicevolution:wyvern_core>,1,500000,"wyvern_core");

recipes([
<draconicevolution:wyvern_core>,
<draconicevolution:wyvern_core>,
<minecraft:nether_star>,
<minecraft:nether_star>,
<minecraft:nether_star>,
<draconicevolution:draconic_block>,
<additions:bxloveu-bx_ingot>
],<draconicevolution:awakened_core>,2,2000000,"awakened_core");

recipes([
<additions:bxloveu-bx_ingot>,<additions:bxloveu-bx_ingot>,
<additions:bxloveu-gold_gengzi>,<additions:bxloveu-gold_gengzi>,<additions:bxloveu-bx_enchingot>
],<draconicevolution:chaos_shard>,2,2000000,"chaos_shard");

recipes([<draconicevolution:chaos_shard>,<draconicevolution:awakened_core>,
<draconicevolution:awakened_core>,
<draconicevolution:awakened_core>,
<draconicevolution:awakened_core>,<draconicevolution:draconic_ingot>,
<draconicevolution:draconic_ingot>,<draconicevolution:draconic_ingot>,<draconicevolution:draconic_ingot>],<draconicevolution:chaotic_core>,3,800000000,"chaotic_core");

recipes([<draconicevolution:draconic_core>,<draconicevolution:draconic_core>,<draconicevolution:draconic_core>
,<draconicevolution:draconic_core>,<draconicevolution:draconic_core>,<draconicevolution:draconic_core>,<draconicevolution:dragon_heart>,
<draconicevolution:draconium_block>*4],<draconicevolution:draconic_block>*4,2,350000000,"awakened_block");

recipes([
<minecraft:diamond>,
<minecraft:diamond>,
<minecraft:redstone_block>,
<tconevo:material>,
<draconicevolution:wyvern_core>
],<tconevo:metal>,2,256000,"wyvern_metal");

recipes([
<minecraft:nether_star>,
<minecraft:nether_star>,
<draconicevolution:wyvern_energy_core>,
<draconicevolution:awakened_core>,
<tconevo:material>
],<tconevo:metal:5>,3,4096000,"awakened_metal");

recipes([
<minecraft:dragon_egg>,
<minecraft:dragon_egg>,
<draconicevolution:chaotic_core>,
<draconicevolution:draconic_energy_core>,
<tconevo:material>
],<tconevo:metal:10>,3,1024000000,"chaotic_metal");

recipes([
<draconicevolution:wyvern_core>,
<draconicevolution:wyvern_core>,
<draconicevolution:wyvern_core>,
<draconicevolution:wyvern_core>,
<draconicevolution:wyvern_core>,
<draconicevolution:wyvern_core>,
<additions:bxloveu-bx_ingot>,
<additions:bxloveu-bx_ingot>,
<additions:bxloveu-bx_dust>
],<additions:bxloveu-bx_superdust>*2,2,114514198,"bx_highdust");

recipes([
<minecraft:tnt>,
<minecraft:tnt>,
<minecraft:tnt>,
<minecraft:tnt>,
<minecraft:tnt>,
<minecraft:tnt>,
<minecraft:tnt>,
<minecraft:tnt>,
<tconevo:metal:10>
],<additions:bxloveu-mt>,3,1000000000,"tnt");