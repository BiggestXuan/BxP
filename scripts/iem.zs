import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    var player as IPlayer = event.player;
    var block as IBlock = event.block;
    var quartz as string[]=[
        "minecraft:quartz_ore",
        "thaumcraft:ore_quartz"
    ];
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
            event.addItem(<minecraft:quartz> %85);    
            event.addItem(<minecraft:quartz>*2 %50);
            event.addItem(<minecraft:quartz>*3 %40);
            event.addItem(<minecraft:quartz>*4 %35);
            if(event.fortuneLevel !=0){
                var level as int = event.fortuneLevel;
                for i in 0 .. level*2{
                    event.addItem(<minecraft:quartz>*4 %65);
                    event.addItem(<minecraft:quartz>*3 %35);
                    event.addItem(<minecraft:quartz>*2 %15);
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
            event.addItem(<minecraft:diamond> %50);    
            event.addItem(<minecraft:diamond>*2 %35);
            event.addItem(<minecraft:diamond>*3 %15);
            if(event.fortuneLevel !=0){
                var level as int = event.fortuneLevel;
                var amount as int = level *2;
                event.addItem(<minecraft:diamond>*amount %35);
                event.addItem(<minecraft:diamond>*amount*2 %15);
                event.addItem(<minecraft:diamond>*amount*3 %10);
            }
            else return;
        }
});