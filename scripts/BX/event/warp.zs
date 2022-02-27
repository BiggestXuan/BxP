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
});