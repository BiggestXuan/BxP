import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    var player as IPlayer = event.player;
    var block as IBlock = event.block;
    if(isNull(player) || isNull(block) || isNull(block.definition) || isNull(block.definition.id)) return;
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
        event.addItem(<draconicevolution:draconium_dust>*8 %60);
        event.addItem(<draconicevolution:draconium_dust>*8 %45);
        event.addItem(<draconicevolution:draconium_dust>*8 %35);
        event.addItem(<draconicevolution:draconium_dust>*8 %30);
        event.addItem(<draconicevolution:draconium_dust>*8 %15);
        event.addItem(<draconicevolution:draconium_dust>*10 %10);
        if(event.fortuneLevel!=0){
            for i in 0 .. event.fortuneLevel+2{
                event.addItem(<draconicevolution:draconium_dust>*8 %75);
            }
        }
    }
});