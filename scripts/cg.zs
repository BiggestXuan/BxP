#priority 4
import moretweaker.draconicevolution.FusionCrafting;

var tnt=<minecraft:tnt>;

FusionCrafting.add(
    <additions:bxloveu-mt>,
    <tconevo:metal:10>,
    FusionCrafting.CHAOTIC,
    2000000000,
    [
    tnt,tnt,tnt,tnt,tnt,tnt,tnt,tnt
    ]
);

<additions:bxloveu-mt>.addTooltip(game.localize("bxp.tip.additions.mt1"));
<additions:bxloveu-mt>.addTooltip(game.localize("bxp.tip.additions.mt2"));
<additions:bxloveu-mt>.addShiftTooltip(game.localize("bxp.tip.additions.mt3"));

var i =<avaritia:resource:6>;
var c =<mekanism:controlcircuit:3>;
recipes.addShaped(<additions:bxloveu-epic_tnt>,[
    [null,i,null],
    [i,c,i],
    [null,i,null]
]);