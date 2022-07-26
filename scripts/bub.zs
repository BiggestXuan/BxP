#priority 2

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

import scripts.aa.bx;

var item as IItemStack[]=[
    <deepmoblearning:deep_learner>,
    <deepmoblearning:data_model_blank>,
    <deepmoblearning:polymer_clay>
];

for i in item{
    recipes.remove(i);
}

var obsidian=<minecraft:obsidian>;
var redstone=<minecraft:redstone_block>;

recipes.addShaped(item[0],[
    [obsidian,redstone,obsidian],
    [redstone,bx[5],redstone],
    [obsidian,redstone,obsidian]
]);

var stone=<minecraft:stone>;
recipes.addShaped(item[1],[
    [stone,stone,stone],
    [stone,bx[5],stone],
    [stone,stone,stone]
]);

var clay=<minecraft:clay_ball>;
recipes.addShapeless(item[2]*16,[
    bx[5],bx[5],clay,clay,clay,clay
]);

recipes.addShapeless(item[2]*64,[
    bx[6],clay,clay,clay,clay
]);

recipes.remove(<deepmoblearning:machine_casing>);

<deepmoblearning:machine_casing>.addTooltip(game.localize("bxp.tip.dml.item"));

RecipeBuilder.newBuilder("deep_mob_learning","test",100)
.addItemInput(<deepmoblearning:glitch_infused_ingot>)
.addItemInput(<minecraft:gold_ingot>)
.addItemInput(<minecraft:dye:4>)
.addItemOutput(<deepmoblearning:glitch_infused_ingot>*2)
.build();
