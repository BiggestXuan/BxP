#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.CommandEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.player.IPlayer;

events.onCommand(function(event as CommandEvent){
    if(event.commandSender.world.remote) return;
    if(event.commandSender instanceof IPlayer){
        var player as IPlayer = event.commandSender;
        if(player.creative) return;
        if(event.command.name == "tpa"){
            event.cancel();
            player.sendChat("请使用虫洞镜传送！");
        }
        if(event.command.name == "home" || event.command.name == "sethome"){
            event.cancel();
            player.sendChat("请使用魔镜回家！");
        }
        if(event.command.name == "tp"){
            event.cancel();
            player.sendChat("请使用指路石传送！");
        }
    }
});