#priority 12
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

function addRecipe(x as IItemStack,y as IItemStack,name as string){
    RecipeBuilder.newBuilder(name,"qd",1)
    .addItemInput(x*100)
    .addItemOutput(y)
    .build();
}

function addRecipe2(x as IItemStack,y as IItemStack,name as string){
    RecipeBuilder.newBuilder(name,"qd",1)
    .addItemInput(x)
    .addItemInput(bx[4])
    .addItemOutput(y*100)
    .addItemInput(bx[4])
    .build();
}

var name as string[]=[
    "coal1","coal2","coal3","coal4","coal5","coal6","coal7"
];

var name_1 as string[]=[
    "acoal1","acoal2","acoal3","acoal4","acoal5","acoal6","acoal7"
];

var com_coal as IItemStack[]=[
<minecraft:coal_block>,
<additions:bxloveu-coal_block_1>,
<additions:bxloveu-coal_block_2>,
<additions:bxloveu-coal_block_3>,
<additions:bxloveu-coal_block_4>,
<additions:bxloveu-coal_block_5>
];

for i in com_coal{
    i.addTooltip("获得混沌核心后可用/uncraft拆解");
}

for i in 0 .. com_coal.length - 1{
    addRecipe(com_coal[i],com_coal[i+1],name[i]);
}

var i = com_coal.length;
while (i>1){
    addRecipe2(com_coal[i - 1],com_coal[i - 2],name_1[i]);
    i-=1;
}

var name_2 as string[]=[
    "diamond1","diamond2","diamond3","diamond4","diamond5","diamond6","diamond7"
];

var name_3 as string[]=[
    "adiamond1","adiamond2","adiamond3","adiamond4","adiamond5","adiamond6","adiamond7"
];

var com_diamond as IItemStack[]=[
<minecraft:diamond_block>,
<additions:bxloveu-diamond_block_1>,
<additions:bxloveu-diamond_block_2>,
<additions:bxloveu-diamond_block_3>
];

for i in 0 .. com_diamond.length - 1{
    addRecipe(com_diamond[i],com_diamond[i+1],name_2[i]);
}

i = com_diamond.length;
while (i>1){
    addRecipe2(com_diamond[i - 1],com_diamond[i - 2],name_3[i]);
    i-=1;
}