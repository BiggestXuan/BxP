#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    var block as IBlock = event.block;
    var player as IPlayer = event.player;
    if (isNull(block)) return;
    if (isNull(block.definition)) return;
    if (isNull(block.definition.id)) return;
    var ore as IItemStack[] = [<thermalfoundation:ore>,<thermalfoundation:ore:1>];
    var a as int = 1;
    for i in ore{
        if(block.definition.id == "mekanism:oreblock" && block.meta == a){
            event.drops = [i %100];
        }
        a+=1;
    }
    //print(block.definition.displayName);
});