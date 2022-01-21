import crafttweaker.item.IItemStack;
import scripts.BX.item.bx;

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

<deepmoblearning:machine_casing>.addTooltip(format.red("无法合成，暮色森林自然生成"));