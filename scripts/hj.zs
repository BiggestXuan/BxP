recipes.addShapeless(<minecraft:dragon_egg>,[
<minecraft:nether_star>,<minecraft:nether_star>,<minecraft:nether_star>
]);

for i in modss{
    if(loadedMods in i){
        for item in loadedMods[i].items{
            recipes.removeAll();
            mods.ItemStages.addItemStage("disabled",item);
        }
    }
}