#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.command.ICommandSender;
import crafttweaker.command.ICommand;

function exp(xp as int) as int{
    if(xp<=3){
        return 0;
    }
    else if(xp<20){
        return xp/4;
    }
    else if(xp<50){
        return xp/3;
    }
    else{
        return xp/2;
    }
}

events.onPlayerRespawn(function(event as PlayerRespawnEvent){
    val player as IPlayer = event.player;
    val xp1 as int =player.xp;
    for i in 0 .. 36{
        if(!isNull(player.getInventoryStack(i)) && player.getInventoryStack(i).definition.id == "bxp:deathprotect" ){
            event.player.sendStatusMessage(format.green("使用死亡保护，本次死亡或返回无惩罚"));
            server.commandManager.executeCommand(server,"/clear "+player.name+" bxp:deathprotect 0 1");
            return;
        }
    }
    if(player.dimension == 7){
        event.player.sendStatusMessage(format.red("由于你死亡或从末地返回了，你的经验值降低了!"));
        return player.xp = exp(xp1)/2;
    }
    event.player.sendStatusMessage(format.red("由于你死亡或从末地返回了，你的经验值降低了!"));
    return player.xp = exp(xp1);
});