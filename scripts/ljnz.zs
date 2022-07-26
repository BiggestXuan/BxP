#priority 4
import moretweaker.draconicevolution.FusionCrafting;
import mods.astralsorcery.Altar;

var heart = <cyclicmagic:heart_food>;
heart.addTooltip(game.localize("bxp.tip.item.heart"));
recipes.remove(heart);
Altar.addTraitAltarRecipe("CyclicHeart",heart,6000,200,
[
    null,null,null,
    null,<scalinghealth:heartcontainer>,null,
    null,null,null,
    bx[5],bx[5],bx[5],bx[5],
    null,null,null,null,null,null,null,null,
    <draconicevolution:wyvern_core>,<draconicevolution:wyvern_core>,<draconicevolution:wyvern_core>,<draconicevolution:wyvern_core>,
    <scalinghealth:crystalshard>,<scalinghealth:crystalshard>,<scalinghealth:crystalshard>,<scalinghealth:crystalshard>,
    <scalinghealth:crystalshard>,<scalinghealth:crystalshard>,<scalinghealth:crystalshard>,<scalinghealth:crystalshard>
],"astralsorcery.constellation.evorsio");

var c =<cyclicmagic:crafting_food>;
var cake = <minecraft:cake>;
recipes.remove(c);

FusionCrafting.add(c,<avaritia:double_compressed_crafting_table>,FusionCrafting.WYVERN,1000000,[
    cake,cake,cake,cake,cake,cake,cake,cake
]);

recipes.remove(<cyclicmagic:sprinkler>);

recipes.addShaped(<cyclicmagic:sprinkler>,[
    [bx[5],bx[5],bx[5]],
    [null,<minecraft:potion>,null],
    [<bxp:bxblock>,<bxp:bxblock>,<bxp:bxblock>]
]);