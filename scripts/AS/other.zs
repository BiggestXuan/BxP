#modloaded projecte
import mods.ctintegration.projecte.EMCManager;

for mod in loadedMods{
    for item in mod.items{
        item.emc=0;
    }
}