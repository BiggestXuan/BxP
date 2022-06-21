#priority 10
recipes.remove(<botania:terraplate>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("terraplate", <botania:terraplate>, 2000, 20, [
	<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,
	<astralsorcery:itemcraftingcomponent:1>, <draconicevolution:wyvern_core>, <astralsorcery:itemcraftingcomponent:1>,
	<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>,
	<botania:rune:4>, <botania:rune:5>,<botania:rune:6>, <botania:rune:7>,
	null, null, null, null, null, null, null, null
]);

<botania:terraplate>.addTooltip("按住SHIFT显示更多");
<botania:terraplate>.addShiftTooltip(format.aqua("你需要在星辉魔法发展才能制作"));