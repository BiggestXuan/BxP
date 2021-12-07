import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import scripts.Agri.other.df;
import scripts.avaritia.main.nqd;

var apple=<minecraft:apple>;
var apple1=<additions:bxloveu-xiangshushumiao_apple>;
var apple2=<additions:bxloveu-ench_xiangshu_apple>;

var sapling as IItemStack[]=[
    <minecraft:sapling>,
    <minecraft:sapling:5>
];

var log as IItemStack[]=[
    <minecraft:log>,
    <minecraft:log2:1>
];

RecipeBuilder.newBuilder("shumiao","seed",100).
addItemInput(sapling[0]).
addItemInput(<additions:bxloveu-apple_xaono>).
addFluidInput(<liquid:water>*500).
addEnergyPerTickInput(200).
addItemOutput(log[0]*16).
addItemOutput(apple1).setChance(0.001).
build();
   

mods.thaumcraft.Infusion.registerRecipe(
    "ench_apple","",apple2,0.1,
    [<aspect:victus>*114514,<aspect:herba>*114514],
    apple1,
    [nqd[0],nqd[0],nqd[0],nqd[0],nqd[0],nqd[0]]
);