import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var name as string = "as_block";
var count as int = 0;

var gems as IItemStack[]=[
    <astralsorcery:itemcraftingcomponent>,
    <astralsorcery:itemrockcrystalsimple>,
    <astralsorcery:itemcraftingcomponent:4>
];

for i in gems{
    RecipeBuilder.newBuilder(name+count,"as_block",1200)
    .addItemInput(i)
    .addEnergyPerTickInput(200)
    .addFluidOutput(<liquid:astralsorcery.liquidstarlight>*1000)
    .build();
    count+=1;
}