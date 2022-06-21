#priority 15
import crafttweaker.events.IEventManager;

import crafttweaker.event.BlockBreakEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;

<byg:structurecheckblock>.asBlock().definition.setHarvestLevel("pickaxe",2);
<byg:structurecheckblock>.asBlock().definition.hardness=10.0f;
<minecraft:bedrock>.asBlock().definition.setHarvestLevel("pickaxe",10);
<minecraft:bedrock>.asBlock().definition.hardness=50.0f;
<minecraft:end_portal_frame>.asBlock().definition.setHarvestLevel("pickaxe",4);
<minecraft:end_portal_frame>.asBlock().definition.hardness=20.0f;
<extrautils2:creativeenergy>.asBlock().definition.setHarvestLevel("pickaxe",4);
<extrautils2:creativeenergy>.asBlock().definition.hardness=20.0f;
<extrautils2:spike_creative>.asBlock().definition.setHarvestLevel("pickaxe",4);
<extrautils2:spike_creative>.asBlock().definition.hardness=20.0f;

events.onBlockBreak(function(event as BlockBreakEvent){
    var block as IBlock = event.block;
    var player as IPlayer= event.player;
    var disabledLevel as bool = false;
    if(player.hasGameStage("awakened_core")) return;
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

var blocks as string[]=[
    "bxp:blooddiamondore","bxp:mithinore","bxp:fusionore","bxp:netherstarore","bxp:superbxore"
];

for i in blocks{
    events.onBlockBreak(function(event as BlockBreakEvent){
        var block as IBlock = event.block;
        var player as IPlayer = event.player;
        if(player.hasGameStage("awakened_core")) return;
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
    if(isNull(player) || isNull(block) || isNull(block.definition) || isNull(block.definition.id)) return;
    if(event.fortuneLevel >=11){
        event.drops = [];
        event.player.sendStatusMessage(format.red("整合包禁用十级以上时运"));
        return;
    }
    if(block.definition.id == "cyclicmagic:nether_gold_ore" || block.definition.id == "cyclicmagic:end_gold_ore" || block.definition.id == "minecraft:gold_ore" ){
        event.drops = [<minecraft:gold_ore>];
    }
    if(block.definition.id == "cyclicmagic:nether_iron_ore" || block.definition.id == "cyclicmagic:end_iron_ore" || block.definition.id == "minecraft:iron_ore"){
        event.drops = [<minecraft:iron_ore>];
    }
    if(block.definition.id == "cyclicmagic:nether_lapis_ore" || block.definition.id == "minecraft:lapis_ore"|| block.definition.id == "cyclicmagic:end_lapis_ore"){
        if(event.silkTouch){
            event.drops = [<minecraft:lapis_ore>];
            return;
        }
        event.drops = [<minecraft:dye:4>*6];
        event.addItem(<minecraft:dye:4>*3 %75);
        event.addItem(<minecraft:dye:4>*5 %40);
        event.addItem(<minecraft:dye:4>*7 %15);
        if(event.fortuneLevel !=0){
            var level as int = event.fortuneLevel;
            for i in 1 .. level+1{
                event.addItem(<minecraft:dye:4>*level*2 %55);
            }
        }
        else return;
    }
    if(block.definition.id == "cyclicmagic:nether_coal_ore" || block.definition.id == "minecraft:coal_ore"|| block.definition.id == "cyclicmagic:end_coal_ore"){
        if(event.silkTouch){
            event.drops = [<minecraft:coal_ore>];
            return;
        }
        event.drops = [<minecraft:coal>];
        event.addItem(<minecraft:coal>*2 %40);
        event.addItem(<minecraft:coal>*3 %25);
        event.addItem(<minecraft:coal>*4 %5);
        event.addItem(<mysticalagriculture:diamond_essence> %30);
        event.addItem(<mysticalagriculture:diamond_essence> %15);
        event.addItem(<mysticalagriculture:diamond_essence> %10);
        if(event.fortuneLevel !=0){
            var level as int = event.fortuneLevel;
            for i in 1 .. level+1{
                event.addItem(<minecraft:coal>*level %65);
                event.addItem(<mysticalagriculture:diamond_essence> %30);
            }
        }
        else return;
    }
});