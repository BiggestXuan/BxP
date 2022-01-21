import mods.thaumcraft.Infusion;

recipes.addShapeless(<vampirism:injection:1>,[
    <vampirism:injection>,<harvestcraft:garlicitem>
]);

var beacon = <vampirism:sunscreen_beacon>;
var heart = <vampirism:human_heart>;
beacon.addTooltip(format.green("可合成"));
beacon.asBlock().definition.setHarvestLevel("pickaxe",4);
beacon.asBlock().definition.hardness = 114;

Infusion.registerRecipe("sunscreen_beacon","CHARMUNDYING",beacon,
9,
[<aspect:victus>*1000],
<minecraft:beacon>,
[heart,heart,heart,heart,heart,heart,heart,heart,heart,heart]);
