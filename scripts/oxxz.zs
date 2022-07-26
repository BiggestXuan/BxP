#priority 15
import crafttweaker.events.IEventManager;

import crafttweaker.event.CommandEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

import mods.zenutils.command.ZenCommand;

import scripts.nnhw.func_5420;

val uncraft as ZenCommand = ZenCommand.create("uncraft");
uncraft.requiredPermissionLevel = 0; 
uncraft.register();

val bx as ZenCommand = ZenCommand.create("bx");
bx.requiredPermissionLevel = 0; 
bx.register();

function unCraftForeverFuel(player as IPlayer){
    player.give(<minecraft:coal>*1);
    player.give(<minecraft:coal_block>*7);
}

function unCraftDRedMatter(player as IPlayer){
    for i in 0 .. 8{
        for j in 0 .. 8{
            unCraftForeverFuel(player);
        }
        player.give(<minecraft:diamond>);
    }
    player.give(<minecraft:diamond>);
}


function itemUncraft(item as IItemStack,amount as int,player as IPlayer){
var com_coal as IItemStack[]=[
<minecraft:coal_block>,
<additions:bxloveu-coal_block_1>,
<additions:bxloveu-coal_block_2>,
<additions:bxloveu-coal_block_3>,
<additions:bxloveu-coal_block_4>,
<additions:bxloveu-coal_block_5>
];

    for i in 0 .. amount{
        for i in 1 .. com_coal.length{
            if(item.definition.id == com_coal[i].definition.id){
                server.commandManager.executeCommand(server,"clear "+player.name+" "+item.definition.id+" 0 1");
                player.give(com_coal[i+(-1)]*100);
            }
        }
    }
}

events.onCommand(function(event as CommandEvent){
    if(event.commandSender instanceof IPlayer){
        var player as IPlayer = event.commandSender;
        if(event.commandSender.world.remote) return;
        if(event.command.name != "uncraft") return;
        if(player.hasGameStage("test1")){
            func_5420(player,"bxp.event.uncraft1");
            return;
        }
        if(!player.hasGameStage("chaotic_core")){
            func_5420(player,"bxp.event.uncraft2");
            return;
        }
        if(isNull(player.currentItem)){
            func_5420(player,"bxp.event.uncraft3");
            return;
        }
        var amount = player.currentItem.amount;
        itemUncraft(player.currentItem,amount,player);
    }
});

for i in modss{
    if(loadedMods in i){
        for item in loadedMods[i].items{
            recipes.removeAll();
            mods.ItemStages.addItemStage("disabled",item);
        }
    }
}