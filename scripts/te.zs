#priority 52
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.API.config.produceDeTime;

static name as string[]=[];

function func_8406(input as IItemStack[], output as IItemStack, level as int, cost as int, name as string) as void{
    var count as int = 0;
    var time as int = produceDeTime;
    var length as int = input.length;
    if(length == 5){
        if(level <= 3){
            RecipeBuilder.newBuilder(name+count,"de3",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        if(level <= 2){
            RecipeBuilder.newBuilder(name+count,"de2",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        if(level <= 1){
            RecipeBuilder.newBuilder(name+count,"de1",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        return;
    }
    if(length == 6){
        if(level <= 3){
            RecipeBuilder.newBuilder(name+count,"de3",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        if(level <= 2){
            RecipeBuilder.newBuilder(name+count,"de2",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        if(level <= 1){
            RecipeBuilder.newBuilder(name+count,"de1",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        return;
    }
    if(length == 7){
        if(level <= 3){
            RecipeBuilder.newBuilder(name+count,"de3",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        if(level <= 2){
            RecipeBuilder.newBuilder(name+count,"de2",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        if(level <= 1){
            RecipeBuilder.newBuilder(name+count,"de1",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        return;
    }
    if(length == 8){
        if(level <= 3){
            RecipeBuilder.newBuilder(name+count,"de3",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemInput(input[7])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        if(level <= 2){
            RecipeBuilder.newBuilder(name+count,"de2",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemInput(input[7])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        if(level <= 1){
            RecipeBuilder.newBuilder(name+count,"de1",time)
            .addItemInput(input[0])
            .addItemInput(input[1])
            .addItemInput(input[2])
            .addItemInput(input[3])
            .addItemInput(input[4])
            .addItemInput(input[5])
            .addItemInput(input[6])
            .addItemInput(input[7])
            .addItemOutput(output)
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        return;
    }
    if(length == 9){
        if(level <= 3){
            RecipeBuilder.newBuilder(name+count,"de3",time)
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
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        if(level <= 2){
            RecipeBuilder.newBuilder(name+count,"de2",time)
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
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
        if(level <= 1){
            RecipeBuilder.newBuilder(name+count,"de1",time)
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
            .addEnergyPerTickInput(cost/time)
            .build();
            count+=1;
        }
    return;
    }
    return;
}