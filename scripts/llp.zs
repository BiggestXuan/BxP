#priority 2

import mods.ctintegration.gamestages.GameStageRemoveEvent;
import mods.ctintegration.gamestages.GameStageAddEvent;

import crafttweaker.event.IEventCancelable;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;

import scripts.API.config.disabledAntiCheat;
import scripts.jwny.send;

events.onGameStageAdd(function(event as GameStageAddEvent){
    var player as IPlayer = event.player;
    if(event.gameStage == "hero"){
        if(disabledAntiCheat) return;
        if(!player.hasGameStage("test1")) return;
        send(player,["bxp.event.final1"] as string[]);
        event.cancel();
    }
    if(event.gameStage == "test1" && !player.creative){
        send(player,["bxp.event.final2"] as string[]);
    }
    if(event.gameStage == "hero" && !player.hasGameStage("test1") &&!player.creative){
        send(player,["bxp.event.final3","bxp.event.final4","bxp.event.final5"] as string[]);
    }
    if(player.hasGameStage("test1") && !player.creative && (event.gameStage == "ench_ingot" || event.gameStage == "chaotic_core"|| event.gameStage == "avaritia_ingot")){
        if(disabledAntiCheat) return;
        event.cancel();
        send(player,["bxp.event.final6","bxp.event.final7"] as string[]);
    }
});