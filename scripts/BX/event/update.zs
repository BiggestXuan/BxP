#ikwid
import crafttweaker.events.IEventManager;

import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

import mods.zenutils.command.ZenCommand;
import mods.ctintegration.gamestages.GameStageRemoveEvent;
import mods.ctintegration.gamestages.GameStageAddEvent;

val uncraft as ZenCommand = ZenCommand.create("uncraft");
uncraft.requiredPermissionLevel = 0; 
uncraft.register();

val bx as ZenCommand = ZenCommand.create("bx");
bx.requiredPermissionLevel = 0; 
bx.register();
/*
function sendChat(player as IPlayer){
    player.sendRichTextMessage(format.red("----------------------更新提示----------------------"));
    player.sendRichTextMessage(format.red("|1.自下个版本起，整合包将会移除等价交换模组           "));
    player.sendRichTextMessage(format.red("|2.如果你还没有发展等价交换，请勿发展以免造成损失     "));
    player.sendRichTextMessage(format.red("|3.如果已经获得EMC，请将EMC尽快套现                   "));
    player.sendRichTextMessage(format.red("|4.如果存在等价交换物品，请手持使用/uncraft指令以拆分"));
    player.sendRichTextMessage(format.red("|5.此外，你可以不更新下个版本避免这个问题发生         "));
    player.sendRichTextMessage(format.red("|6.如果不更新，旧版本不再受支持，同时也无法获得新内容 "));
    player.sendRichTextMessage(format.red("|7.造成的不便大轩深感歉意            "));
    player.sendRichTextMessage(format.red("-----------------------------------------------------"));
}

events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent){
    var player as IPlayer = event.player;
    if(player.hasGameStage("chaotic_core")){
        sendChat(player);
    }
});

events.onGameStageAdd(function (event as GameStageAddEvent){
    var player as IPlayer = event.player;
    var stages as string[]=[
        "chaotic_core",
        "avaritia_ingot",
        "projecte"
    ];
    for stage in stages{
        if(event.gameStage == stage){
            sendChat(player);
        }
    }
});
*/

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
/*
var table as IItemStack[]=[
    <additions:bxloveu-re_gengzi>,<additions:bxloveu-really_sd>,<projectex:matter:6>,<projectex:matter:6>,<avaritia:resource:5>,<avaritia:resource:5>,<additions:bxloveu-tulye_ingot>,<additions:bxloveu-tulye_ingot>,
    <taiga:adamant_ingot>,<taiga:adamant_ingot>,<taiga:adamant_ingot>,<taiga:adamant_ingot>,<additions:bxloveu-ouhuang_ingot>,<additions:bxloveu-ouhuang_ingot>
    ,<additions:bxloveu-mt>,<additions:bxloveu-mt>,<mekanism:controlcircuit:3>,<mekanism:controlcircuit:3>,<additions:bxloveu-bx_ingot>,<additions:bxloveu-bx_ingot>,<additions:bxloveu-bx_enchingot>
];*/
    for i in 0 .. amount{
        /*
        if(item.definition.id == "projecte:item.pe_fuel" && item.metadata == 0){
            server.commandManager.executeCommand(server,"clear "+player.name+" projecte:item.pe_fuel 0 1");
            player.give(<minecraft:coal>*4);
        }
        if(item.definition.id == "projecte:item.pe_fuel" && item.metadata == 1){
            server.commandManager.executeCommand(server,"clear "+player.name+" projecte:item.pe_fuel 1 1");
            player.give(<minecraft:coal>*16);
        }
        if(item.definition.id == "projecte:item.pe_fuel" && item.metadata == 2){
            server.commandManager.executeCommand(server,"clear "+player.name+" projecte:item.pe_fuel 2 1");
            unCraftForeverFuel(player);
        }
        if(item.definition.id == "projecte:item.pe_matter" && item.metadata == 0){
            server.commandManager.executeCommand(server,"clear "+player.name+" projecte:item.pe_matter 0 1");
            for i in 0 .. 8{
                unCraftForeverFuel(player);
            }
            player.give(<minecraft:diamond>);
        }
        if(item.definition.id == "projecte:item.pe_matter" && item.metadata == 1){
            server.commandManager.executeCommand(server,"clear "+player.name+" projecte:item.pe_matter 1 1");
            unCraftDRedMatter(player);
        }
        if(item.definition.id == "projectex:matter" && item.metadata == 0){
            server.commandManager.executeCommand(server,"clear "+player.name+" projectex:matter "+0+" 1");
            player.give(<additions:bxloveu-coal_block_1>*13);
            player.give(<minecraft:coal_block>*59);
            player.give(<minecraft:diamond>*27);
        }
        for i in 1 .. 12{
            if(item.definition.id == "projectex:matter" && item.metadata == i){
                server.commandManager.executeCommand(server,"clear "+player.name+" projectex:matter "+i+" 1");
                var num = i+(-1);
                for j in 0 .. 6{
                    unCraftForeverFuel(player);
                }
                server.commandManager.executeCommand(server,"give "+player.name+" projectex:matter "+3+" " + num);
            }
        }*/
        for i in 1 .. com_coal.length{
            if(item.definition.id == com_coal[i].definition.id){
                server.commandManager.executeCommand(server,"clear "+player.name+" "+item.definition.id+" 0 1");
                player.give(com_coal[i+(-1)]*100);
            }
        }
        /*
        if(item.definition.id == "projecte:transmutation_table"){
            server.commandManager.executeCommand(server,"clear "+player.name+" "+item.definition.id+" 0 1");
            for i in table{
                player.give(i);
            }
        }
        if(item.definition.id == "projecte:item.pe_transmutation_tablet"){
            server.commandManager.executeCommand(server,"clear "+player.name+" "+item.definition.id+" 0 1");
            for i in table{
                player.give(i);
            }
            player.give(<mekanism:controlcircuit:3>*4);
        }*/
    }
}

events.onCommand(function(event as CommandEvent){
    if(event.commandSender instanceof IPlayer){
        var player as IPlayer = event.commandSender;
        if(event.commandSender.world.remote) return;
        if(event.command.name != "uncraft") return;
        if(player.hasGameStage("test1")){
            player.sendChat("作弊模式严禁拆分");
            return;
        }
        if(!player.hasGameStage("chaotic_core")){
            player.sendChat("你都还没到混沌核心哦，不能用哦");
            return;
        }
        if(isNull(player.currentItem)){
            player.sendChat("亲亲，空气不能拆分哦，会空指针的哦");
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