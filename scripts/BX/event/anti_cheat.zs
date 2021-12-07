#ikwid
#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerLoggedOutEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.command.ICommand;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    var player as IPlayer = event.player;
    if(player.creative){
        server.commandManager.executeCommand(server,"/gamestage add "+player.name+" creative");
    }
});

events.onCommand(function(event as CommandEvent){
    if(event.commandSender instanceof IPlayer){
        var player as IPlayer = event.commandSender;
        if(player.hasGameStage("creative") || player.name == "Biggest_Xuan"){
            return;
        }
        if(!event.commandSender.world.remote){
            event.cancel();
            player.sendRichTextMessage(format.red("请不要使用"+event.command.name+"命令"));
    }}
});