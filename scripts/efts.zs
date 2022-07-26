#priority 5
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

import scripts.API.config.amountForCaigengzi;

var caigengzi=<additions:bxloveu-caigengzi>;
var seed=<additions:bxloveu-cai_seed>;
var water=<liquid:water>;
var gh1=<thermalfoundation:fertilizer>;
var gh2=<thermalfoundation:fertilizer:1>;
var gh3=<thermalfoundation:fertilizer:2>;
var gh4=<additions:bxloveu-super_fer>;

recipes.addShaped(caigengzi*amountForCaigengzi,[
[<harvestcraft:ryeitem>,<harvestcraft:ryeitem>,<harvestcraft:ryeitem>],
[<harvestcraft:ryeitem>,<additions:bxloveu-bx_uningot>,<harvestcraft:ryeitem>],
[<harvestcraft:ryeitem>,<harvestcraft:ryeitem>,<harvestcraft:ryeitem>]
]);

RecipeBuilder.newBuilder("caigengzi","caigengzi",200)
.addItemInput(seed)
.addFluidInput(water *1000)
.addEnergyPerTickInput(100)
.addItemOutput(seed)
.addItemOutput(caigengzi*4)
.build();

var name as string[]=["caigengzi-1","caigengzi-2","caigengzi-3","caigengzi-4"];
var fl as IItemStack[]=[gh1,gh2,gh3,gh4];
var out as IItemStack[]=[
    caigengzi*16,caigengzi*32,caigengzi*48,caigengzi*64
];

var i as int =0;
while i<4{
    RecipeBuilder.newBuilder(name[i],"caigengzi",200)
    .addItemInput(seed)
    .addItemInput(fl[i])
    .addFluidInput(water *1000)
    .addEnergyPerTickInput(100)
    .addItemOutput(seed)
    .addItemOutput(out[i])
    .build();
    i+=1;
}