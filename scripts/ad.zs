#priority 5
import crafttweaker.events.IEventManager;

import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.command.ICommandSender;
import crafttweaker.command.ICommand;

import scripts.API.config.playerWillLossLevelWhenDeath;

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

events.onEntityLivingDeath(function(event as EntityLivingDeathEvent){
    if (event.entityLivingBase instanceof IPlayer){
        val player as IPlayer = event.entityLivingBase;
        val xp1 as int =player.xp;
        if(!playerWillLossLevelWhenDeath) return;
        if(player.creative) return;
        if(player.hasGameStage("awakened_core")){
            player.sendStatusMessage(game.localize("bxp.event.death.dragon"));
            return player.xp -=1;
        }
        for i in 0 .. 36{
            if(!isNull(player.getInventoryStack(i)) && player.getInventoryStack(i).definition.id == "bxp:deathprotect" ){
                player.sendStatusMessage(game.localize("bxp.event.death.protect"));
                server.commandManager.executeCommand(server,"clear "+player.name+" bxp:deathprotect 0 1");
                return;
            }
        }
        if(player.dimension == 7){
            player.sendStatusMessage(game.localize("bxp.event.death.losslevel"));
            return player.xp = exp(xp1)/2;
        }
        player.sendStatusMessage(game.localize("bxp.event.death.losslevel"));
        return player.xp = exp(xp1);
    }
});

