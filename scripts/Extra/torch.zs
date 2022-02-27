#priority -100
#ikwid
import crafttweaker.mods.ILoadedMods;

var torch = loadedMods["torcherino"];

for i in torch.items{
    i.addTooltip(format.red("喜欢加模组是吧，把加速火把塞你屁眼里，给你好好加个速！"));
    recipes.remove(i);
}

if(!isNull(torch)){
    for mod in loadedMods{
        for items in mod.items{
            mods.ItemStages.addItemStage("disabled",items);
        }
    }
}