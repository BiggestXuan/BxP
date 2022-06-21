#priority 2
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.API.config.produceTinkerTime;

var name as string = "tic_name";
var count as int = 0;
var time as int= produceTinkerTime;

RecipeBuilder.newBuilder(name+count,"tic",time)
.addItemInput(<tconstruct:ingots>)
.addItemInput(<tconstruct:ingots:1>)
.addFluidInput(<liquid:pyrotheum>*5)
.addItemOutput(<tconstruct:ingots:2>*2)
.build();

count+=1;
RecipeBuilder.newBuilder(name+count,"tic",time)
.addItemInput(<minecraft:obsidian>*32)
.addItemInput(<taiga:tiberium_crystal>*80)
.addItemInput(<taiga:basalt_block>)
.addItemInput(<taiga:eezo_ingot>*4)
.addItemOutput(<taiga:seismum_ingot>*16)
.addFluidInput(<liquid:pyrotheum>*75)
.build();

count+=1;
RecipeBuilder.newBuilder(name+count,"tic",time)
.addItemOutput(<minecraft:obsidian>)
.addFluidInput(<liquid:lava>*1000)
.addFluidInput(<liquid:water>*1000)
.build();

count+=1;
RecipeBuilder.newBuilder(name+count,"tic",time)
.addItemOutput(<taiga:adamant_ingot>*18)
.addItemInput(<taiga:vibranium_ingot>*6)
.addItemInput(<taiga:eezo_ingot>*37)  //零素
.addItemInput(<taiga:abyssum_ingot>*37)  //深渊金属
.addItemInput(<taiga:osram_ingot>*37)  //熔金
.addItemInput(<minecraft:obsidian>*81)
.addItemInput(<taiga:meteoritecobble_block>*81)
.addItemInput(<taiga:valyrium_ingot>*6)  
.addItemInput(<taiga:uru_ingot>*6) //雾金
.addItemInput(<taiga:prometheum_ingot>*3)
.addItemInput(<taiga:palladium_ingot>*3)
.addFluidInput(<liquid:pyrotheum>*500)
.build();

count+=1;
RecipeBuilder.newBuilder(name+count,"tic",time)
.addItemOutput(<taiga:adamant_ingot>*18)
.addItemInput(<taiga:vibranium_ingot>*6)
.addItemInput(<taiga:eezo_ingot>*37)
.addItemInput(<taiga:abyssum_ingot>*37)
.addItemInput(<taiga:osram_ingot>*37)
.addItemInput(<minecraft:obsidian>*81)
.addItemInput(<taiga:meteoritecobble_block>*81)
.addItemInput(<taiga:valyrium_ingot>*6)  
.addItemInput(<taiga:uru_ingot>*6)
.addItemInput(<taiga:prometheum_ingot>*3)
.addItemInput(<taiga:duranite_ingot>)
.addFluidInput(<liquid:pyrotheum>*500)
.build();

count+=1;
RecipeBuilder.newBuilder(name+count,"tic",time)
.addItemOutput(<taiga:adamant_ingot>*36)
.addItemInput(<taiga:vibranium_ingot>*12)
.addItemInput(<taiga:eezo_ingot>*74)
.addItemInput(<taiga:abyssum_ingot>*75) 
.addItemInput(<taiga:osram_ingot>*74)
.addItemInput(<minecraft:obsidian>*162)
.addItemInput(<taiga:meteoritecobble_block>*162)
.addItemInput(<taiga:valyrium_ingot>*12)  
.addItemInput(<taiga:uru_ingot>*12)
.addItemInput(<taiga:duranite_ingot>*9)
.addItemInput(<taiga:prometheum_ingot>*3)
.addFluidInput(<liquid:pyrotheum>*1000)
.build();

count+=1;
RecipeBuilder.newBuilder(name+count,"tic",time)
.addItemOutput(<additions:bxloveu-tulye_ingot>)
.addItemInput(<taiga:adamant_ingot>*24)
.addItemInput(<tconevo:metal:10>*4)
.addItemInput(bx[6]*6)
.addItemInput(<thaumadditions:mithminite_ingot>*4)
.addItemInput(<additions:bxloveu-ouhuang_ingot>*3)
.addItemInput(<additions:bxloveu-tulye_haie>*72)
.addFluidInput(<liquid:pyrotheum>*5000)
.build();

count+=1;
RecipeBuilder.newBuilder(name+count,"tic",time)
.addItemOutput(<plustic:osgloglasingot>)
.addItemInput(<mekanism:ingot>)
.addItemInput(<mekanism:ingot:1>)
.addItemInput(<mekanism:ingot:3>)
.addFluidInput(<liquid:pyrotheum>*15)
.build();