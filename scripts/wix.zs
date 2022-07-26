import crafttweaker.event.PlayerItemPickupEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

import scripts.API.config.getDamageWhenPickCactus;

events.onPlayerItemPickup(function(event as PlayerItemPickupEvent){
    var item as IItemStack = event.stackCopy;
    var player as IPlayer = event.player;
    if(!getDamageWhenPickCactus) return;
    if(player.hasGameStage("awakened_core")) return;
    if(!isNull(item) && player.creative){
        return;
    }
    if(!isNull(item) && item.definition.id == "minecraft:cactus"){
        if(player.xp >3){
            player.xp -=2;
            event.player.sendStatusMessage(format.red(game.localize("bxp.event.hurt1")));
            return;
        }
        player.health /=2;
        event.player.sendStatusMessage(format.red(game.localize("bxp.event.hurt2")));
    }
});