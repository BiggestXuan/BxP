#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;

events.onBlockPlace(function(event as BlockPlaceEvent){
    var player as IPlayer = event.player;
    var block as IBlock = event.current.block;
    var request as string[]=[
        "modularmachinery:blockcontroller",
        "modularmachinery:blockcasing",
        "modularmachinery:blockinputbus",
        "modularmachinery:blockoutputbus",
        "modularmachinery:blockfluidinputhatch",
        "modularmachinery:blockfluidoutputhatch",
        "modularmachinery:blockenergyinputhatch",
        "modularmachinery:blockenergyoutputhatch"
    ];
    if (!isNull(block) && player.creative){
        return;
    }
    for i in request{
        if (!isNull(block) && player.xp<30 && block.definition.id == i){
            event.cancel();
            event.player.sendStatusMessage(format.red("你至少需要30级才能放置"+block.definition.displayName));
        }
    }
});