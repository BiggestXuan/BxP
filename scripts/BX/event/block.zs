#ikwid
#loader crafttweaker reloadableevents
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

var blocks as string[]=[
    "bxp:bxore","bxp:manaore","bxp:blooddiamondore","bxp:mithinore","bxp:fusionore","bxp:netherstarore","bxp:superbxore"
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
    var quartz as string[]=[
        "minecraft:quartz_ore",
        "thaumcraft:ore_quartz"
    ];
    /*print(block.definition.id);
     */
    if(isNull(player) || isNull(block) || isNull(block.definition) || isNull(block.definition.id)) return;
    if(event.fortuneLevel >=11){
        event.drops = [];
        event.player.sendStatusMessage(format.red("整合包禁用十级以上时运"));
        return;
    }
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
            event.addItem(<minecraft:quartz>*3 %30);
            event.addItem(<minecraft:quartz>*4 %20);
            if(event.fortuneLevel !=0){
                var level as int = event.fortuneLevel;
                for i in 0 .. level*2{
                    event.addItem(<minecraft:quartz>*4 %50);
                    event.addItem(<minecraft:quartz>*3 %20);
                }
            }
            else return;
        }
    }
    if(block.definition.id == "minecraft:diamond_ore" || block.definition.id == "cyclicmagic:nether_diamond_ore"||block.definition.id == "cyclicmagic:end_diamond_ore" ){
            if(event.silkTouch){
                event.drops = [<minecraft:diamond_ore>];
                return;
            }
            if(!event.isPlayer){
                event.drops = [<minecraft:diamond>];
                return;
            }
            event.drops = [<minecraft:diamond>];
            event.addItem(<minecraft:diamond> %45);    
            event.addItem(<minecraft:diamond>*2 %20);
            event.addItem(<minecraft:diamond>*3 %5);
            if(event.fortuneLevel !=0){
                var level as int = event.fortuneLevel;
                var amount as int = level *2;
                event.addItem(<minecraft:diamond>*amount %30);
                event.addItem(<minecraft:diamond>*amount*2 %5);
                event.addItem(<minecraft:diamond>*amount*3 %2);
            }
            else return;
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
    if(block.definition.id == "mysticalagriculture:inferium_ore" || block.definition.id == "mysticalagriculture:nether_inferium_ore" || block.definition.id == "mysticalagriculture:end_inferium_ore"){
        if(event.silkTouch){
            event.drops = [<mysticalagriculture:inferium_ore>];
            return;
        }
        event.drops = [<mysticalagriculture:crafting>*4];
        event.addItem(<mysticalagriculture:crafting>*2 %80);
        event.addItem(<mysticalagriculture:crafting>*3 %70);
        event.addItem(<mysticalagriculture:crafting>*3 %70);
        event.addItem(<mysticalagriculture:crafting>*4 %60);
        event.addItem(<mysticalagriculture:crafting>*5 %55);
        if(event.fortuneLevel !=0){
            var level as int = event.fortuneLevel;
            for i in 1 .. level+1{
                event.addItem(<mysticalagriculture:crafting>*level*3 %80);
            }
        }
    }
    if(block.definition.id == "minecraft:redstone_ore" || block.definition.id =="cyclicmagic:nether_redstone_ore"||block.definition.id =="cyclicmagic:end_redstone_ore"){
        if(event.silkTouch){
            event.drops = [<minecraft:redstone_ore>];
            return;
        }
        event.drops = [<minecraft:redstone>*6];
        event.addItem(<minecraft:redstone>*6 %80);
        event.addItem(<minecraft:redstone>*5 %70);
        event.addItem(<minecraft:redstone>*5 %60);
        event.addItem(<minecraft:redstone>*4 %60);
        event.addItem(<minecraft:redstone>*8 %45);
        event.addItem(<minecraft:redstone>*8 %30);
        if(event.fortuneLevel!=0){
            for i in 0 .. event.fortuneLevel+1{
                event.addItem(<minecraft:redstone>*6 %80);
            }
        }
    }
    if(block.definition.id == "draconicevolution:draconium_ore" || block.definition.id =="draconicevolution:draconium_ore:1"||block.definition.id =="draconicevolution:draconium_ore:2"){
        if(event.silkTouch){
            event.drops = [<draconicevolution:draconium_ore>];
            return;
        }
        event.drops = [<draconicevolution:draconium_dust>*2];
        event.addItem(<draconicevolution:draconium_dust>*8 %80);
        event.addItem(<draconicevolution:draconium_dust>*8 %70);
        event.addItem(<draconicevolution:draconium_dust>*8 %60);
        event.addItem(<draconicevolution:draconium_dust>*8 %60);
        event.addItem(<draconicevolution:draconium_dust>*8 %45);
        event.addItem(<draconicevolution:draconium_dust>*10 %30);
        if(event.fortuneLevel!=0){
            for i in 0 .. event.fortuneLevel+2{
                event.addItem(<draconicevolution:draconium_dust>*10 %80);
            }
        }
    }
});