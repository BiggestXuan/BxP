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
    var player as IPlayer= event.player;
    if(!isNull(block) && block.definition.id =="minecraft:cactus"){
        if(player.creative){
            return;
        }
        if(player.health >=7){
            player.health -=6;
            return ;
        }
        else{
            player.sendStatusMessage(format.red("你至少需要7点生命值才能破坏仙人掌"));
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

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    var player as IPlayer = event.player;
    var block as IBlock = event.block;
    var quartz as string[]=[
        "minecraft:quartz_ore",
        "thaumcraft:ore_quartz"
    ];
    /*print(block.definition.id);
     */
    if(isNull(player) || isNull(block) || isNull(block.definition) || isNull(block.definition.id)) return;
    for i in quartz{
        if(block.definition.id == i){
            if(event.silkTouch){
                event.drops = [<minecraft:quartz_ore>];
                return;
            }
            if(!event.isPlayer){
                event.drops = [<minecraft:quartz>];
                return;
            }
            event.drops = [<minecraft:quartz>];
            event.addItem(<minecraft:quartz> %75);    
            event.addItem(<minecraft:quartz>*2 %40);
            event.addItem(<minecraft:quartz>*3 %20);
            event.addItem(<minecraft:quartz>*4 %10);
            if(event.fortuneLevel !=0){
                var level as int = event.fortuneLevel;
                var amount as int = level *2;
                event.addItem(<minecraft:quartz>*amount %30);
                event.addItem(<minecraft:quartz>*amount*2 %5);
                event.addItem(<minecraft:quartz>*amount*3 %2);
            }
            else return;
        }
    }
});