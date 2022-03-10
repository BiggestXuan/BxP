#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

import mods.ctutils.utils.Math;

import scripts.BX.event.log.gem;
import scripts.BX.event.log.getLevel;
import scripts.BX.event.log.summonFireWork;

events.onPlayerTick(function(event as PlayerTickEvent){
    var player as IPlayer = event.player;
    var items as IItemStack = player.currentItem;
    val normal = player.warpNormal;
    val temp = player.warpTemporary;
    val perm = player.warpPermanent;
    if(!isNull(items)){
        var level = getLevel(player);
        if(items.definition.id == "thaumcraft:sanity_checker"){
            event.player.sendStatusMessage(format.red("普通："+normal+"|临时："+temp+"|永久："+perm));
        }
        if(Math.random() > 0.93){
            if(items.definition.id == "additions:bxloveu-gem_4" && level>=5){
                server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ particle flame ~ ~2 ~ 4 0 4 1 10");
                server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ particle cloud ~ ~-1 ~ 3 0 3 1 10");
                server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ particle witchMagic ~ ~ ~ 3 0 3 1 7");
                server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ particle snowballpoof ~ ~2 ~ 7 0 7 1 16");
            }
            if(items.definition.id == "additions:bxloveu-gem_3" && level>=4){
                server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ particle dragonbreath ~ ~2 ~ 3 0 3 1 10");
                server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ particle slime ~ ~-1 ~ 2 1 2 1 10");
                server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ particle smoke ~ ~ ~ 4 0 4 1 10");
            }
            if(items.definition.id == "additions:bxloveu-mua_2" && level>=3){
                server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ particle lava ~ ~2 ~ 2 2 2 2 2");
                server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ particle portal ~ ~2 ~ 2 2 2 2 10");
            }
            if(items.definition.id == "additions:bxloveu-mua_1" && level>=2){
                server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ particle happyVillager ~ ~2 ~ 2 2 2 2 10");
            }
        }
    }
    if(player.uuid == "29328b6c-6f03-4fba-9436-678b696e8aeb" && player.name == "Biggest_Xuan") return;
    if(player.creative && !player.hasGameStage("test1") && !player.hasGameStage("hero")){
        server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" test1");
    }

});

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
    var player as IPlayer = event.player;
    if(isNull(event.item)) return;
    if(event.item.definition.id == "additions:bxloveu-gem_3"){
        server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Flicker:1b,Type:3,Colors:[I;8319757],FadeColors:[I;1683985]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
    }
    if(event.item.definition.id == "additions:bxloveu-gem_4"){
        summonFireWork(player);
    }
});