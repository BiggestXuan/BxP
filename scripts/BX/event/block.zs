#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.BlockBreakEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;

<minecraft:bedrock>.asBlock().definition.setHarvestLevel("pickaxe",10);
<minecraft:bedrock>.asBlock().definition.hardness=50.0f;
<minecraft:end_portal_frame>.asBlock().definition.setHarvestLevel("pickaxe",4);
<minecraft:end_portal_frame>.asBlock().definition.hardness=20.0f;

events.onBlockBreak(function(event as BlockBreakEvent){
    var block as IBlock = event.block;
    if(!isNull(block) && block.definition.id =="minecraft:cactus"){
        if(event.player.creative){
            return;
        }
        if(event.player.health >=7){
            event.player.health -=6;
            return ;
        }
        else{
            event.player.sendStatusMessage(format.red("你至少需要7点生命值才能破坏仙人掌"));
            return event.cancel();
        }
    }
    return ;
});

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    var block as IBlock =  event.block;
    if(!isNull(block) && block.definition.id=="minecraft:bedrock"){
        if(event.player.xp >10){
            event.drops = [<minecraft:bedrock>];
            return event.player.xp -=7;
        }
        event.player.sendStatusMessage(format.red("你至少需要10级才能破坏基岩，否则不会掉落！"));
    }
    return ;
});

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    var block as IBlock =  event.block;
    if(!isNull(block) && block.definition.id=="minecraft:end_portal_frame"){
        if(event.player.xp >8){
            event.drops = [<minecraft:end_portal_frame>];
            return event.player.xp -=5;
        }
        event.player.sendStatusMessage(format.red("你至少需要8级才能破坏末地传送门，否则不会掉落！"));
    }
    return ;
});

var map as string[int]={
    1 : "minecraft:stone",
    2 : "minecraft:iron_ore",
    3 : "minecraft:gold_ore",
    4 : "minecraft:quartz_ore",
    5 : "minecraft:redstone_ore",
    7 : "minecraft:lapis_ore",
    8 : "abyssalcraft:coraliumore",
    10 : "minecraft:diamond_ore",
    12 : "scalinghealth:crystalore",
    13 : "draconicevolution:draconium_ore",
    15 : "minecraft:emerald_ore"
};

for i,j in map{
    events.onBlockBreak(function(event as BlockBreakEvent){
        var block as IBlock = event.block;
        if(!isNull(block) && block.definition.id == j){
            if(event.player.creative){
                return;
            }
            if(event.player.xp < i ){
                event.cancel();
                event.player.sendStatusMessage(format.red("你至少需要"+i+"级才能破坏"+block.definition.displayName));
            }
        }
    }
);}

var blocks as string[]=[
    "bxp:bxore","bxp:manaore","bxp:blooddiamondore","bxp:mithinore","bxp:fusionore","bxp:netherstarore","bxp:superbxore"
];

for i in blocks{
    events.onBlockBreak(function(event as BlockBreakEvent){
        var block as IBlock = event.block;
        var player as IPlayer = event.player;
        if(!isNull(block) && block.definition.id == i){
            if(player.creative){
                return;
            }
            if(player.xp <30){
                event.cancel();
                event.player.sendStatusMessage(format.red("你至少需要30"+"级才能破坏"+block.definition.displayName));
            }
            else{
                return;
            }
        }
    });
}
