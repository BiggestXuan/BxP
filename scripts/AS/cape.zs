import mods.astralsorcery.Altar;

Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/capebase");

Altar.addTraitAltarRecipe("cape",<astralsorcery:itemcape>.withTag({astralsorcery: {}}),1145,50,[
    null,null,null,
    null,<minecraft:leather_chestplate>,null,
    null,null,null,
    null,null,null,null,
    null,null,
    <astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,
    null,null,
    <minecraft:diamond>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<minecraft:diamond>
]);