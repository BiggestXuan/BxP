#priority 25
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;

RecipeBuilder.newBuilder("yss","yss",100)
.addItemInput(<abyssalcraft:ethbrick>*4)
.addItemInput(<bxp:unbxblock>)
.addItemOutput(<abyssalcraft:ingotblock:3>)
.addEnergyPerTickInput(1000)
.build();