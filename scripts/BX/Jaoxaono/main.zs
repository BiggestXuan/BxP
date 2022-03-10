import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.BX.item.bx;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;

var apple =<additions:bxloveu-apple_xaono>;
var fish =<additions:bxloveu-fish>;

RecipeBuilder.newBuilder("jaoxaono","seed",6000).
addItemInput(fish).
addItemInput(bx[5]).
addFluidInput(<liquid:water>*1000).
addEnergyPerTickInput(200).
addItemOutput(apple).
build();

RecipeBuilder.newBuilder("jaoxaono-1","seed",1000).
addItemInput(fish).
addItemInput(bx[6]).
addFluidInput(<liquid:water>*1000).
addEnergyPerTickInput(100).
addItemOutput(apple*64).
addItemOutput(apple*64).
build();