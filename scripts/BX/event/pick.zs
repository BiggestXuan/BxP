#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.PlayerItemPickupEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

events.onPlayerItemPickup(function(event as PlayerItemPickupEvent){
    var item as IItemStack = event.stackCopy;
    var player as IPlayer = event.player;
    if(!isNull(item) && player.creative){
        return;
    }
    if(!isNull(item) && item.definition.id == "minecraft:cactus"){
        if(player.xp >3){
            player.xp -=2;
            event.player.sendStatusMessage(format.red("你消耗了两级来阻挡仙人掌的伤害!"));
            return;
        }
        player.health /=2;
        event.player.sendStatusMessage(format.red("你没有等级，仙人掌让你刺伤了!"));
    }
});