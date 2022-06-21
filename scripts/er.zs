#priority 52
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.API.config.produceBloodAltarTime;
import scripts.API.config.amountFertilizer3;
import scripts.bal.name;

function func_7020(input as IItemStack,output as IItemStack,cost as int,name as string){
    RecipeBuilder.newBuilder("bm"+name,"bm",produceBloodAltarTime*5)
    .addFluidInput(<liquid:lifeessence>*cost)
    .addItemInput(input)
    .addItemOutput(output)
    .build();
}

func_7020(<thermalfoundation:fertilizer:1>,<thermalfoundation:fertilizer:2>,amountFertilizer3,name[0]); 
func_7020(<minecraft:stone>,<bloodmagic:slate>,1000,name[1]); 
func_7020(<bloodmagic:slate>,<bloodmagic:slate:1>,2000,name[2]); 
func_7020(<bloodmagic:slate:1>,<bloodmagic:slate:2>,5000,name[3]); 
func_7020(<bloodmagic:slate:2>,<bloodmagic:slate:3>,15000,name[10]); 
func_7020(<bloodmagic:slate:3>,<bloodmagic:slate:4>,30000,name[4]); 
func_7020(<bxp:blooddiamondore>,<bloodarsenal:blood_diamond:2>,80000,name[5]); 
func_7020(<bloodarsenal:blood_diamond:1>,<bloodarsenal:blood_diamond:2>,100000,name[6]); 
func_7020(<botania:storage:3>,<additions:bxloveu-diamond_block>,50000,name[7]); 
func_7020(<minecraft:diamond_block>,<additions:bxloveu-diamond_block>,150000,name[8]); 
func_7020(<bloodarsenal:base_item:3>,<bloodarsenal:base_item:4>,5000,name[9]); 
