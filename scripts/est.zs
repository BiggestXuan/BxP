#modloaded projecte
import mods.ctintegration.projecte.EMCManager;
import scripts.xo.disable;

for mod in loadedMods{
    for item in mod.items{
        item.emc=0;
    }
}

for item in loadedMods["projecte"].items{
    disable(item);
}