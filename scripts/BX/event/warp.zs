#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.PlayerTickEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

events.onPlayerTick(function(event as PlayerTickEvent){
    var player as IPlayer = event.player;
    var items as IItemStack = player.currentItem;
    val normal = player.warpNormal;
    val temp = player.warpTemporary;
    val perm = player.warpPermanent;
    if(!isNull(items)){
        if(items.definition.id == "thaumcraft:sanity_checker"){
        event.player.sendStatusMessage(format.red("普通："+normal+"|临时："+temp+"|永久："+perm));
    }
}
    if(player.uuid == "29328b6c-6f03-4fba-9436-678b696e8aeb" && player.name == "Biggest_Xuan") return;
    if(player.creative && !player.hasGameStage("test")){
        server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" test");
    }
    if(!player.creative && player.hasGameStage("woss")){
        player.sendRichTextMessage(format.red("你使用了整合包禁用模组，因此只能使用创造模式游戏！"));
        server.commandManager.executeCommand(server,"effect "+player.name +" slowness 1 254");
        server.commandManager.executeCommand(server,"effect "+player.name +" jump_boost 1 128");
        server.commandManager.executeCommand(server,"effect "+player.name +" nausea 4 128");
        server.commandManager.executeCommand(server,"effect "+player.name +" blindness 1 3");
        server.commandManager.executeCommand(server,"gamemode "+player.name +" 1");
        player.health -=player.maxHealth as float * 0.03f;
    }
});