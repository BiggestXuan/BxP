import scripts.BX.item.bx;
recipes.remove(<mysticalagriculture:fertilized_essence>);

recipes.remove(<mysticalagriculture:mystical_fertilizer>);

recipes.addShaped(<mysticalagriculture:mystical_fertilizer>,[
    [null,<mysticalagriculture:fertilized_essence>,null],
    [<mysticalagriculture:fertilized_essence>,bx[4],<mysticalagriculture:fertilized_essence>],
    [null,<mysticalagriculture:fertilized_essence>,null]
]);