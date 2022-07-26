#priority 10
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.text.ITextComponent;

import scripts.API.config.sendTipWhenLog;

function send(p as IPlayer,m as string[]){
    for s in m{
        p.sendRichTextMessage(ITextComponent.fromTranslation(s));
    }
}

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    var player as IPlayer = event.player;
    if(!sendTipWhenLog) return;
    if(player.hasGameStage("tip")) return;
    if(player.creative) {
        var data as IData = [{translate:"bxp.event.cantip1"},{translate:"bxp.event.cantip2",color:"red"},{translate:"bxp.event.cantip3"}];
        event.player.sendRichTextMessage(ITextComponent.fromData(data));
        return;
    }
    send(player,["bxp.event.alltip1","bxp.event.alltip2","bxp.event.alltip3"]);
    if(player.hasGameStage("hero") && !player.hasGameStage("test1")){
        send(player,["bxp.stage.121"] as string[]);
        return;
    }
    if(player.hasGameStage("final_ingot")){
        send(player,["bxp.stage.111"] as string[]);
        return;
    }
    if(player.hasGameStage("avaritia_ingot")){
        send(player,["bxp.stage.101","bxp.stage.102","bxp.stage.103"] as string[]);
        return;
        
    }
    if(player.hasGameStage("chaotic_core")){
        send(player,["bxp.stage.91","bxp.stage.92","bxp.stage.93"] as string[]);
        return;
    }
    if(player.hasGameStage("ench_ingot")){
        send(player,["bxp.stage.81","bxp.stage.82","bxp.stage.83"] as string[]);
        return;
    }
    if(player.hasGameStage("awakened_core")){
        send(player,["bxp.stage.71","bxp.stage.72","bxp.stage.73","bxp.stage.74","bxp.stage.75","bxp.stage.76","bxp.stage.77","bxp.stage.78"] as string[]);
        return;
    }
    if(player.hasGameStage("dragon_heart")){
        send(player,["bxp.stage.61","bxp.stage.62","bxp.stage.63","bxp.stage.64"] as string[]);
        return;
    }
    if(player.hasGameStage("fusion_ingot")){
        send(player,["bxp.stage.51","bxp.stage.52"] as string[]);
        return;
    }
    if(player.hasGameStage("bx_ingot")){
        send(player,["bxp.stage.41","bxp.stage.42","bxp.stage.43","bxp.stage.44"] as string[]);
        return;
    }
    if(player.hasGameStage("wyvern_core")){
        send(player,["bxp.stage.31","bxp.stage.32","bxp.stage.33","bxp.stage.34","bxp.stage.35"] as string[]);
        return;
    }
    if(player.hasGameStage("nether_star")){
        send(player,["bxp.stage.21","bxp.stage.22"] as string[]);
        return;
    }
    send(player,["bxp.stage.11","bxp.stage.12"] as string[]);
});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    event.player.sendRichTextMessage(ITextComponent.fromTranslation("bxp.event.onlycommand"));
});
