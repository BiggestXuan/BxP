#priority 2

import crafttweaker.item.IItemStack;
import crafttweaker.text.ITextComponent;

var staue as IItemStack[]=[
    <aov:angelicstatue>,
    <aov:favoredsoulstatue>,
    <aov:clericstatue>,
    <aov:paladinstatue>,
    <aov:astrostatue>,
    <aov:druidstatue>
];

for i in staue{
    recipes.remove(i);
}

staue[0].addTooltip(game.localize("bxp.tip.aov.disabled"));

var items as IItemStack[]=[
    null,
    <minecraft:gold_ingot>,
    <minecraft:melon>,
    <minecraft:diamond>,
    <minecraft:dye:4>,
    <minecraft:stick>
];

var i as int = 1;
while (i<6){
    recipes.addShaped(staue[i],[
        [null,bx[5],null],
        [bx[5],items[i],bx[5]],
        [null,bx[5],null]
    ]);
    i+=1;
}
