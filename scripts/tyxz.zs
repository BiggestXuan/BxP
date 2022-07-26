#priority 11
var mod as string[]=[
    "bacterium",
    "salted_fish_technology",
    "manaita_plus",
    "lolipickaxe",
    "thelegendofthebraveii",
    "flammpfeil.slashblade",
    "slashblade",
    "xijun",
    "bacteria",
    "decon_table",
    "decomp_table",
    "deconstriction",
    "uncraftingtable"
];

for i in mod{
    if(loadedMods in i){
        for item in loadedMods[i].items{
            recipes.removeAll();
            mods.ItemStages.addItemStage("disabled",item);
        }
    }
}