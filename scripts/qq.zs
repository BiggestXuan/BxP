import crafttweaker.item.IItemStack;
import moretweaker.draconicevolution.FusionCrafting;
import scripts.efsx.dragon;
import scripts.aa.bx;

var ingot as IItemStack[]=[
    <tconevo:material>,
    <tconevo:metal>,
    <tconevo:metal:5>,
    <tconevo:metal:10>
];

<tconevo:metal_block>.addTooltip(game.localize("bxp.tip.item.speed1"));
<tconevo:metal_block:1>.addTooltip(game.localize("bxp.tip.item.speed2"));
<tconevo:metal_block:2>.addTooltip(game.localize("bxp.tip.item.speed3"));