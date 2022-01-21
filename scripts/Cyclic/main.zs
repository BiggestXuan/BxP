import moretweaker.draconicevolution.FusionCrafting;
import mods.astralsorcery.Altar;
import scripts.BX.item.bx;

var heart = <cyclicmagic:heart_food>;
heart.addTooltip("最大可食用10个");
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