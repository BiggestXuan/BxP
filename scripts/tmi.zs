#priority 15
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    var block as IBlock =  event.block;
    var player as IPlayer = event.player;
    if(player.hasGameStage("awakened_core") && !isNull(block) && block.definition.id=="minecraft:bedrock"){
        event.drops = [<minecraft:bedrock>];
        return;
    } 
    if(!isNull(block) && block.definition.id=="minecraft:bedrock"){
        if(event.player.xp >10){
            event.drops = [<minecraft:bedrock>];
            return event.player.xp -=7;
        }
        event.player.sendStatusMessage(format.red("你至少需要10级才能破坏基岩，否则不会掉落！"));
    }
    if(player.hasGameStage("awakened_core") && !isNull(block) && block.definition.id=="minecraft:end_portal_frame"){
        event.drops = [<minecraft:end_portal_frame>];
        return;
    } 
    if(!isNull(block) && block.definition.id=="minecraft:end_portal_frame"){
        if(event.player.xp >8){
            event.drops = [<minecraft:end_portal_frame>];
            return event.player.xp -=5;
        }
        event.player.sendStatusMessage(format.red("你至少需要8级才能破坏末地传送门，否则不会掉落！"));
    }
    return ;
});