#priority 8
mods.thaumcraft.Infusion.registerRecipe("fish","",<additions:bxloveu-fish>,2,
[<aspect:aqua>*25,<aspect:aer>*10],
<minecraft:fish>,
[<additions:bxloveu-caigengzi>,<additions:bxloveu-caigengzi>,<additions:bxloveu-caigengzi>,<additions:bxloveu-caigengzi>]
);

mods.thaumcraft.Infusion.registerRecipe("fish2","",<additions:bxloveu-fish>,1.8,
[<aspect:aqua>*25,<aspect:aer>*10],
<minecraft:cooked_fish>,
[<additions:bxloveu-caigengzi>,<additions:bxloveu-caigengzi>,<additions:bxloveu-caigengzi>,<additions:bxloveu-caigengzi>]
);


for i in modss{
    recipes.removeByMod(i);
    if(loadedMods in i){
        for item in loadedMods[i].items{
            mods.ItemStages.addItemStage("disabled",item);
        }
    }
}