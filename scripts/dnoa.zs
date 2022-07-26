#priority 2
import crafttweaker.item.IItemStack;

var asblock as IItemStack[]=[
    <gugu-utils:starlightinputhatch:2>,
    <gugu-utils:starlightinputhatch:1>,
    <gugu-utils:starlightinputhatch>
];

for i in asblock{
    i.addTooltip(game.localize("bxp.tip.gugu.asblock1"));
    i.addTooltip(game.localize("bxp.tip.gugu.asblock2"));
    i.addTooltip(game.localize("bxp.tip.gugu.asblock3"));
}

<gugu-utils:aspecthatch>.addTooltip(game.localize("bxp.tip.gugu.aspect1"));
<gugu-utils:aspecthatch>.addTooltip(game.localize("bxp.tip.gugu.aspect2"));

<gugu-utils:sparkmanahatch>.addTooltip(game.localize("bxp.tip.gugu.botania1"));
<gugu-utils:sparkmanahatch>.addTooltip(game.localize("bxp.tip.gugu.botania2"));